Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6097C344DA0
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790152234; cv=none; b=bp/KT4dSY64eKpoG6r98Axok+h1K07aoWIiXebOergaHVLmo9N9PcJmTdoJ0yX9CGY2Nhk2BjPgQiJQ91DgeUB84HpcRQqURn+Iij3IUN1x2qbunaYSzQdcFCOSDEOddgaau5YnzbdTu+GA9OcCmHHGeQyPMa3TbZsV4LB5OrDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790152234; c=relaxed/simple;
	bh=TDJxmdvou8+AAhNNTrT9rsd08x5V72xQEaFiY1ciCWY=;
	h=To:Subject:From:Message-Id:Date; b=jrMW/mHkfNq2IPEBIjq5fVEKJSWpG8OL4Ita2E3bK6S2V/BPTAUkI3bPprVygGO428buKNYzIkHdTaB5Qd/yx8BV99JZzhOZct6Tf3aCdjGM8P/OBbLV6CV5RWDUKNzjS3MlGIXJjc6G2aAnGPUtRglRcZR23gQkN+UTUkuY8fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA2lAedv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA2lAedv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD37C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790152233;
	bh=TDJxmdvou8+AAhNNTrT9rsd08x5V72xQEaFiY1ciCWY=;
	h=To:Subject:From:Date:From;
	b=MA2lAedv1MhRGI8tyj+Ab6Yf5peCA63ajNsf2Ttcyt1FZhaoFcUyDhFwRjBNC97Rp
	 7wN5btf1Y/Sbhow+5yQJ1zuGuPI474UfOMc5rlGVZOhV5JutDRGG9yhwl27m6r6cGW
	 H1D4+osAkG9EL09fspxp+5JXVHKoLg90DdWdSGx7S3/LUWwbz7kjjy2s6Tj21AFcej
	 0v3w3AMDQsyvpzUKDgLjtXcP7+b/jjufQL0GLtdT8unOwBawBp3nMnaEYc9/LUYqRO
	 Z15HoXRvCYn1z/ld0ox8WF0ff6k+/aA+0+STxqPxgUzAEkQyp6x6NHbBpZ6Yb0j/Hy
	 bTGoE7QlnB68w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FA6C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015223374.7968.6697186346833472312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd3ed5170583e297cfd155b9f0ead89ab6a99437f3b6cef7290974d84e0a98b
Date: Wed, 23 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790152233
