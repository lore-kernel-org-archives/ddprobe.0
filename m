Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4064C2901
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725928554; cv=none; b=CuytOKIwVBdSPdkko25N9uwbM6nQEe01OdSMp8hiuk1tHGkjKucxcJprxWmS8Qxw6CUGs7LjZnRtVKepbdrShPERod2rawy9b/LYk0Ft/xMRXQk87N76paZOpwMzDscYKBm+c6F309gMbBaKHQDn3oH3O8czh6tRwEc5jT/OyLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725928554; c=relaxed/simple;
	bh=m/28Rgb+JygNEMgHCBv9rXpxAy2f6KPdG5VZM9lONtc=;
	h=To:Subject:From:Message-Id:Date; b=UGkiMBM+X/qwAVxQRVQwR7NGDnniJtlKCbIs7ykTEmyJKmM5grkkjuTeNc4pFGX5j1VcKMlSt16fIvAdf1JapgJujOAwDNq8RV9MGHUeMlwK6T7n5KHLcAkKZpXDzIcMl/Uo/3h8ig+D/qrMZgfHBwxeOZpuvGWnqLaq9Kwbw8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDxcgzut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDxcgzut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B6BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725928553;
	bh=m/28Rgb+JygNEMgHCBv9rXpxAy2f6KPdG5VZM9lONtc=;
	h=To:Subject:From:Date:From;
	b=oDxcgzutkL5chNRiBBjAUJc+G06suvO9UvNuOPBOvELOOGPchm9zHINaH5839V68K
	 XHv3JO7WTtXohR29jbmBiZP/3Rm1vh+iRMhfYL9Hiudk4VdPY2MptD8jCaUKi9PXoh
	 lBuVWkrh/9agZdpEGYq7UhmoaxP2w1nNGq55Ns8hyMwyXlzyBsVrFg4/c+94JbG+Zk
	 q5dlsnrL+xFT6oPBU/ltminK89fYTOVr02Gkh2Z4HY+CGqQBoF1bn0BgKu8N3xswaU
	 ROu7D4ywoqB/eULZddfZCr9KOFmlM9hh6wgrdaxD8CO58/QYQi624tzpGnaS5ISXxe
	 PdpvWesSh7MPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA48ECE59A
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172592855362.6199.5600972716117565199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e726bab7a2cffacc17dab0c62c67cf3c9748ee65fb46f95a20f15d4507e97ec2
Date: Tue, 10 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725928553
