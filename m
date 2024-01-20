Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270F0256D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705746497; cv=none; b=E+jBkfKZyHRVD8SDgUsDX/pDBzPMfYhwUBo/XbwXSlDSyuu52A6TC7DTEvDOFG44a62AW8NuXbSbAoI0GGLDbZTrm/zcrY18GlyIfMYKnpBvzIdxt/4EGsO6idHZXSaVdeNFMnnEYZLG7Fm8nnsXsPKAZVNPTTkoJgKvir9TUro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705746497; c=relaxed/simple;
	bh=OAMRRAorKwh8Lw0fgW6aG0QhfE5KZvybaOlrxVCsqBU=;
	h=To:Subject:From:Message-Id:Date; b=oVgMBUIuXS89n4igtHQIqWLNv8oAPEe++0iLCqo4UBUruS+10/lGq43Dv+He38bihERB1FrK8FZAa6XxbeZxQ0lCwnf+Ie2mH0TNOtj8NQ3axaZM69gMR5XxOjShQ/Zlp3REVcUHJo0hKfi8rIwRuHc2NtpumgPx221AmNSC/8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3S7ShWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3S7ShWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8001CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705746496;
	bh=OAMRRAorKwh8Lw0fgW6aG0QhfE5KZvybaOlrxVCsqBU=;
	h=To:Subject:From:Date:From;
	b=I3S7ShWc0ADuwJpoWebq44sckKZKmLd2lrqEwHENu5uaXgV4txJ+gWMmT6MLWKu4T
	 6UtLy3irfzwN6zcByXJeVmcf/ESSEBzU3qa1hL+qI8e7M7qyb842QeYbtBgY6Qhkva
	 w+bwqBk+K2Zz4q9C/Jg/NdP4XRbJAFht1garwLOUIWxQ+TEts9m3kCwlJX83eYfMDK
	 RwzmD5CEdMiqSBI/S+liwjjlQqqyOM1D/mLohjBmSiCzybzlefQhu2Juc8g9l30g/I
	 uGFpYA1lMdHSJt02b+yBmjPiXTsGma3s78FVBNrZuu3HulTKeneLRqqnnHVfOetBpR
	 QuY7jFLxsNAEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65158C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574649638.3122.5560126592970010604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afdc8af7fd4042ad72e6346a9536c924b67045d63aeb3070dea55806919be249
Date: Sat, 20 Jan 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705746496
