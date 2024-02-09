Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123D47BAED
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707503297; cv=none; b=HMmKLuzSDAf8OHN8Y91p5PatO4EdnjLSEdKCbDiG71wHUyiK5BAAgkD385+fQXlJhrpDRMQxYgcY0VJTrPuPI0scdtWBJLwEB9Um6PVFM/Wsu0fjcNk04hBnrqghgZFZoyZxRvsn17ZrHIXzqpepFtxlrOb4zDA+mfsLvclROhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707503297; c=relaxed/simple;
	bh=O9+WgC3W221SmPK1POgvnhpNCinmetHTdQu2WMT3Khw=;
	h=To:Subject:From:Message-Id:Date; b=pwIRhRA+dCJFcUBQ8ejhmrxIC35XsGPdTFKwDkKz4E5NzLvdYoHffoB1ESV9R+GM/5uGj532TmNDmXvoMPrMquyPrwUUoT65OYry8LtK0T1csjDOoPfse1F1Xp/KEG0+/9VNLVwQw5BQJ/yavxHSYSZ29uEtM5FvC5BHTaXEzfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpj5qkik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpj5qkik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B24C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707503296;
	bh=O9+WgC3W221SmPK1POgvnhpNCinmetHTdQu2WMT3Khw=;
	h=To:Subject:From:Date:From;
	b=tpj5qkikwnKCDMQDcA5+BvYncKNnUFZ2FbB8Z/WyIR2MdX4N9is5/ljLiuBQyyAv8
	 yePPtZXT4t23ysPPqQebvQwATFfcNWmQyeLqbd+yuqRa9N+MLEJeN2mBx3ecJfDzOd
	 zx8DcXPhxC2/+so18mzadHsOUOVM+9zIJHP9vBn8lTmj6AHZNiBIuVjYc55cDLZAl1
	 qqbrc58tQ4mytZFDpGuIUKVDlfzISAKWiaKXMQAu964k8CTqXup2nwa60JAWXMl16e
	 fEruB9irEo3kbcOoLYo6s9mjcqLOJEpXtBste9D6gZ+R+zoQpcSbL5FjCGg0oqrXKm
	 2sFTWhs90jmeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C935C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170750329637.6111.14122030589293174869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a338041c31056343284fdba55a4f7fe14f243c9a185c42e37404afa635baaa88
Date: Fri, 09 Feb 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707503296
