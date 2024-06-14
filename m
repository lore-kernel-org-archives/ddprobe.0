Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729677E574
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718368103; cv=none; b=YiXkOInou0W2lc2VPbnzK8N3XscEPytqCr8dtPTsqWByl4PzCifqFHYSNVpJvHeMEpOvvhsblHkQWIigefY8QVJ+J3qfZxgvemSdea40Q4AXv+Mxf6iO0hRndtZFYY/aWJ5pV7slPPYQNU14QoBFTamp0+7+Bj8X9MztdEkGwAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718368103; c=relaxed/simple;
	bh=FeJ0a96bx7nJXBjTk3+3QRJ6odJOs4lCnxhFDyBarPw=;
	h=To:Subject:From:Message-Id:Date; b=nGnyEAsrAxPT//Qi6egysrS5QB+4Soo6HOgLgxMiXzq7fyH0kmnpBarQ0uKbOcWtyUbZypLGlbBBmzqGOJOlnvkPr4NlSANr8wUv8SUG6D0jQNroalmmyho3lwk5fO6ctZcd3TKjDfdfimCvGTdL3UQ79NMV3O8Aaam8q4t0AM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaHAQDOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaHAQDOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE86C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718368102;
	bh=FeJ0a96bx7nJXBjTk3+3QRJ6odJOs4lCnxhFDyBarPw=;
	h=To:Subject:From:Date:From;
	b=JaHAQDOarmnR9DFemiEbf2EGVevzWI0tLrTxJkjEbXtKnXNgYhODbgObyzDnTBidG
	 j6rA5GW44OGDtBbDB7CSNbyOFoi12+7aGyuR2Qx0hVOc6Du9d00uHVZX9Y7PFVQsAY
	 bWS70h85BpG6BVulaxuFGgO/Ddm0brB2DArFv3gJTv4ZviNoZ3/KP4c3D2bjMaGGNM
	 Gk/n03EEuhbBMXJkvlxW8ifDiNxVdjWDD9lUsumLfCi7x4eSoR8d5qqP47EVwpZ5V8
	 BwD2iBAX0hqYlkgyCIA4Jlcm2I28/ZXMhfxhFQUdZcuRAVbc1300wM+rlXyhK19u89
	 xW6C4GnmLvLSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD2AC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836810282.20348.13766518543519953167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9283ea630d94d16bbee8808de65178ecced206ad35895b6ddceef5f752eef77e
Date: Fri, 14 Jun 2024 12:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718368102
