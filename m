Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16491442F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736151954; cv=none; b=VUAK50GMY6mt8JunMjFYjQtnEbCVERoCUze+A4yILUy6kQrPtk8rrSnOFHdzTzQaGCybqCgTkAaFaQYEuW4+wVduz8+Mw+Ol8KqZwqGFdYc4DtHrvFQWbnad6WSf65pEaV+rOoomfNHmwLbZNQU2NMAYhBv5vuNrrWhgnYFcLqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736151954; c=relaxed/simple;
	bh=Nbvwc02F/HlmuxPMe9U3yi/3nwFcsop24awe6I3dSvU=;
	h=To:Subject:From:Message-Id:Date; b=VWsItXOGGCCAOJcBQdL01IZx1qdgafFs/3blHwVYV7J3wJ1yGRHDTffSlogl3+ESiPLklvOukjofecNIDY5yexZe5uD1yg19sFU0TGmjaBoe+Bgn7AzkYJVgmizaJrbuxuLyYeGHPOSl2cjG9NFHuT4uTp8/M8+Qr8G7vySDfT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckuNRHKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckuNRHKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E423C4CEDF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736151953;
	bh=Nbvwc02F/HlmuxPMe9U3yi/3nwFcsop24awe6I3dSvU=;
	h=To:Subject:From:Date:From;
	b=ckuNRHKsx9i1HReWbFpLDc0G7NVYHMN6FK0uIz5THzKXx/OWCjB8bhtCh6SPj/cZk
	 UyoglbGq8i6ArYlJHGuZJzG7/04VyX13L+3LgHkpcaLu0BWjq9/ktVEE/SMXE+G7Jz
	 RKS6808h+I14SqRD457dWytUZ9TFfIJVyi45WA9RggnHzVIQ20vQRvWsWKWl6hx3ll
	 gDLPFbisQ6TNm+QAkHwf25r9dd274/Gw5BRhwByLI97JqVpiFCpGi1Zzibk4ZYAyRY
	 drNYgYogVvZj49l5DB75gg5MaVCw9b4rVQju02/WumLVnCt8gF5jGfUfi5anWWNwBE
	 TYG8jznwJmOjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC15E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615195357.6202.17044849164620037196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c374371ab20f5d12a4603da61d1fc38e676fc92197529fcb01dce6d60305b328
Date: Mon, 06 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736151953
