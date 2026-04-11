Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB8D23BD1B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775897254; cv=none; b=b0TlvTljc1vpnRtsJPjcEkGNt+g9gqgQA0XS9+pfle/i6qc93ks55tEwECdbyggloET8uUmcMlzPkkp+PZUTMqnDoV1lfY2ODxR1eu2A6/SBu6+2MIt4OaFPD4Xmu7rhGBucnuheDvfYjHaI4wwlL84TDQ2vn4DYBpfpuVUNRgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775897254; c=relaxed/simple;
	bh=eKCVREI3kyKrI85aWJ4AwSC90zadeLwGnDFditGR4mo=;
	h=To:Subject:From:Message-Id:Date; b=ItIQqmfyiOzMMnA3o6QhwFXD5+ywOvxDsSRoD5WkkBLtfV8xMDfDTeL5S596Rh7utN3rxn7ityXTg4VOCDHr1599bGL+HRPmReNXl7nVo0LJMCfBCU4RHc1B/9FGYxB7v6qNVmoYeqiq+QFkuZ0tA0EMirW6Cvht3jZ+ZZ09TkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyBmWFc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyBmWFc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C216AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775897253;
	bh=eKCVREI3kyKrI85aWJ4AwSC90zadeLwGnDFditGR4mo=;
	h=To:Subject:From:Date:From;
	b=oyBmWFc8bhXDdBzkkuIBMeVK3KBf1vL1D5l+ppZO2FLuhMbVvXkzOxUBJcUI60Ick
	 KJm9vPXqOELmoDhOO5YiETtpO6LWxbVIutZyT45aNnBXlAJI+RqXxsXLM+0h2zoYfr
	 lKEURi0mhJ0nATvLreetNf8gv7E2ubaH5iyznpwJl7y5f/kGYaRi8eQGNLNGpQBLlS
	 PrvFstKNC1y0t6yOCVu7TlWt6w7PG56A8FrT3d5S3ohbfAQ1zCjN/SMne342jJTNr9
	 PotxBIY3Kox0kasc+ugZ2wqTH3ZC5omIQceRKLkl8ZXdpFtcjW6opNEw4GppkHjBWR
	 QIA3wOWzLPM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAACF44874
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589725368.30569.13678949348835360864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dee1f83e26c5f4870621e76682b5f1fedf906cc92745829772fab41e294205d
Date: Sat, 11 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775897253
