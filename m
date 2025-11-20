Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C5F34F470
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763653314; cv=none; b=mJGeKVwub/hFo1qDX/9timdGqhzjXgKqC8iwVWSgD04Lf41BVAa5aNAdB05rXM5MlUYezunjGMGjZ77c6jj0vPvWWQ+gayGUEdSYulXx5twiGR0AZ6kiWJt2mIf/+Qcmf0efiQMvurh4To++5iaKed1/pgUX3ni/0aKZxPUwIW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763653314; c=relaxed/simple;
	bh=RjxFUUO7dQKDbWdv7wecjPRbIQVWAQidFHLEVaiDx+0=;
	h=To:Subject:From:Message-Id:Date; b=toyxSc71dBTiX4+24MQhYp8O4jGsVWfk5VbZbjeHiX8b+88ghlbgzvuKt4iPl2yhshz08TROdvoU2LKSPBpQVExr6W8Mj9OTquZlptQRzwK7zLwSza+nOqzSkGct5adI2IPIuT68meP2GsyCe+Qyi8Tv/uFE8qkU9yJTkCZDVo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5hubMUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5hubMUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA57C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763653313;
	bh=RjxFUUO7dQKDbWdv7wecjPRbIQVWAQidFHLEVaiDx+0=;
	h=To:Subject:From:Date:From;
	b=n5hubMUxqJwUSq9Bu+ZVycvmb3cvdCnjF0EPFu4j1CFSUNsKb8hP8u6LPuLx+uafb
	 yJ9Hg44FAEpSrQpC7spKZT8KzqgDx7r/pjXCBBc/vOFlTF1tHfnVVpETDWaag+KH0w
	 2IyH3YRL3z8QYxrHmsZR8joT6rXS0r4HuOf3C1K5r43ToFiBbWYKAOVf6RZSKi2YSL
	 XlM5oVa0tAfKOIqGSTTAbCE9lk/fHuJZhGOxeZmhB0sLSnEFVp2+vbzh09PCzZxOCZ
	 El430/qznWHdTxgMFGjQw7k7Ucn1lgBYjqMAC1d5pgcS0yPXCUxctk2HqZkxb784Eo
	 7isrIoBPYc10g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E9CF8875
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365331358.13976.16907996879083751588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304ea9eca39ef3ad66e106641d18f29bcda67308e99a9e11d20018b4456e0fed
Date: Thu, 20 Nov 2025 15:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763653313
