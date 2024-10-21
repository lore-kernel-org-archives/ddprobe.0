Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7041199239
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729532153; cv=none; b=QOC3g+ABcdOIah2KmwnRDXITdXRm3UNvvrdBKxqHSNf68Ap5MR60auvLF1nqCITL9Sb2PzjlN69Idgx7v9Z0zkCG7JZUgf9gY9n3FCwT53zNSthLuv6zhH1eXXIUAPMT/IKKuUZ5xJeSiHpkYuWGSgWFOnmHLD/TsCBmaV8QXKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729532153; c=relaxed/simple;
	bh=dqpZ8hBQQUqNyio2tMJQUdzH3EGeiGNmg+im9rLXQwI=;
	h=To:Subject:From:Message-Id:Date; b=s1ykkr+m8Tlqop6UHq7wKcP8SoJNY0aHldHVdFLVH/VpmuFf7T2soNTRJL6ddJ3cC9AR/ze4VCk2kwa2ci2TpzI4/k/ZaLBPRe+xgUV2fJPiEU5HwuZsPLqt62c9Il5iEIRnWO493xqDYZaxNd/HtnXadyHFneOZ1FJyWYwRScU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwGUn0Mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwGUn0Mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD16C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729532153;
	bh=dqpZ8hBQQUqNyio2tMJQUdzH3EGeiGNmg+im9rLXQwI=;
	h=To:Subject:From:Date:From;
	b=VwGUn0MzqnsOJ5dT/cwnB8A/wf/FxlYVmFDV7rCQqHREk3tXtyC1VlFfr8/4ozdij
	 ZcKg6PNo61FIaGG4DOHacJKurBj2s6ebDPnfwkmkojt2jtmpYK2bSrsR3yd8PAkX6X
	 IDeKU7V2GEMlsupxjWFaxobLwv0uNk/rW54Lm38ZswhuByh/6sJvyU/36kk8KeUYzy
	 DBjSeFhdNTGifSM0vkeFEbiemEd/82iuCiZRxmzUVobkwm/8hujkhSqVkoQ4wJeafm
	 UbX4orQSjlNSt5mqtpKYbuYSTCrxjQNUQkQk1cTMTnkz/DnE0srIIgz8FtGXpeD8J0
	 N5TQzCgRGR/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B15D3C935
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172953215360.23704.1336684604063002021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94d33baaa0bea6096a99bd0450e9a50f02710aa4a13e531918d5a77c23a6767
Date: Mon, 21 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729532153
