Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3503B1E633C
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757173195; cv=none; b=FPpQXSNtewFf6/6hZWu0nDvh8Ghp0LV5jLv458+Krnpb6/xSnZYGjp906/+WOFIV7XIHa8mxB68OS/lBdUhKAtRD1pk2knAVQrFatg1EvkBmY04Xpj8540VghdyEX6KKTRIJ8h273kRt6m5zaQC1SXGqZkbAb/lKMAOyAyC4lTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757173195; c=relaxed/simple;
	bh=JSVVb+sGccuKw4yRobyB3e29WwwfqFb8IdoO/Tbk0p4=;
	h=To:Subject:From:Message-Id:Date; b=bjihcIyuDfFIWGno75UXQDCLruHkobnz5qYGHqh5JpCzqK0U6aK0xr8EZ6uaOSMgUk5suRLHr+ZK5/zsGo7lcNhe62gvsVAf855wG2N8X/qPPCFUCingTYHp619fFAnSwTfORFsOfnQKSJTPb+dju3G1OyoV9BBuwuvEuojgGiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hvhg+hcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hvhg+hcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6628C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757173193;
	bh=JSVVb+sGccuKw4yRobyB3e29WwwfqFb8IdoO/Tbk0p4=;
	h=To:Subject:From:Date:From;
	b=Hvhg+hcZV5QsTCR4I43OoHqDBSBYWZw3fzWaQM9E2MKqaKxQbm+RLbcxeFIB10jSj
	 Od5qtkz+V34oE4846/iGjf6jmfXERUj4wAoo8BhukI6nC2VoHU2lmiub6A3ucHz04M
	 Ub9gh/w1U+VfisInLtilfITiC8Rwax+EC3d326gjjsaiKyD0eDdLvDCyOIc9FI3rZ6
	 uvXjcQpl8llR9zzzDNlK6Q5FopyG8niV+RoP0PFP/cVjus7ojY3s2SNBBC4OaWvCEh
	 pbDKmR7QgzHYd88y+2D35V4A3uW6ZFgfzXJICVrGf2YYpdGl21UJpvQQRsLCfpyWFB
	 tCMvYoeJ+4YOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E30CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717319357.1490.10281119162883368643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1862008e91ce992f189ef3776141bd0a1799306fcdee0989c97e4465c760e26
Date: Sat, 06 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757173193
