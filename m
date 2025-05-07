Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C46F28A41F
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746631794; cv=none; b=r6PvT+z+VMjhdkm4cjV1ZOFo21c2EvetKoHY3jDEuJaR+Z83Ryrbvj5b3BhVV7vU1pAw39YnNzgIcLD03RaTYcP1urfmhx6h/cxOqHGobIgnsVH9lPOhbXdHz3YyLp8IScAQRXggmRJ8kgv8dSAarWyn4bzXWEwH4ODGP7QGuXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746631794; c=relaxed/simple;
	bh=NQCg9VOQnQOfIWtOB5DdDj7WUlS8B5zAbpqmj/PyLbg=;
	h=To:Subject:From:Message-Id:Date; b=ZKoS7xrjouavxXUdlFgLQ4GTMpLoGfgzu++pFILhJuycOXyN7c9hravWO3vsU/WK1wVtQ5wBiXBmEVtqYYSEJbkq7jWCtgcaML+2UkemA+k7WHysGmRTqs2gLnp0wWhS1aZjESLYWT4mUUR68GuyqlbAdBgNdYkthRj3xOGsQC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpyxSsRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpyxSsRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FA3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746631793;
	bh=NQCg9VOQnQOfIWtOB5DdDj7WUlS8B5zAbpqmj/PyLbg=;
	h=To:Subject:From:Date:From;
	b=DpyxSsRlKSnYoargETLAyWsTEAhJnswbmkGESfa/XY8gFMpWvwLY1d1ENqYEiht/q
	 QX9dVUYkzjybj7Yvtm1tw9DW6odDQike06pxIOfga5PZ9iD2z/bMJeKeJ++a+faRVn
	 zXVyVtP5Wh6eu/x5jjelTi72fLjLb9dPNoiiBWqB2mZtXX/pXRPBujeXnu+pPYKFRF
	 x3xTjYeyXmsnK79VH7iZNWo1eb1q7XPUxKwQs9NfqJpUYRRE05kCrI/6/q8rm4r8yF
	 UIbbt/M6MatGpnr+P3J/cgJlLtiXJqvAgdwxyEVNUPLPqRN3Kck5Q0xhicm6R7roSY
	 mJ4HrOsJsbIHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42FC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663179357.3808.8672651554743475525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab9e505d0e115b7bc97279daec6a59ef9f954448455d06079f0ed4db47a87f3
Date: Wed, 07 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746631793
