Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105EA194A44
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759418394; cv=none; b=dYAd4BEBHwEAEsDzZKO8GYToO98BrD/mbxPO+5KYjnOYsRyRIXF2sE1fY04UvZwMIV0G8Iazn1NtcERN2aBhxTC2kvot4xWJiv7c2bXRyeyFf3vV7f25a2A2cEwGsILXYXMNFoQIVFE/cy8CVUVPf4fnUG7ct7S9J6U5bo/zdds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759418394; c=relaxed/simple;
	bh=3i2FeL5NYzhGcq8mPJtw8ZERCm8cpKxFCZIIcvo+cVc=;
	h=To:Subject:From:Message-Id:Date; b=aF25U2YSuXgJEbJli3NmZd4lGftRIvnzxHK8Cw8C2Azfq2OBCQZq8A3EmhQ/cLdETTO/WtsnpJ/H+Vs1gSYpKj/vmmZ7HaifpAO27XPRkzp7+qS6EExFhVx+yjVh2YD3rBKund7Ml9zi9M+MWBVpmG8Kaz1PFiCIlPbv/i1hEQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZLDkv3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZLDkv3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C40C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759418393;
	bh=3i2FeL5NYzhGcq8mPJtw8ZERCm8cpKxFCZIIcvo+cVc=;
	h=To:Subject:From:Date:From;
	b=nZLDkv3s7+MNLf8+p8ZlXhrfCIBWDrLzNBpDOuSC6gqSeK3UFFqsv0y84ffxkVdsY
	 DkkP+iAlk61TMzDEIl8+k+aUtNP3/fPwAqUuPaCBKUjGVLgqaQqp8NLnvya/za6uPq
	 PPrxXCnZPmEFnNqfLOUphoqjUP26AqPEeAVk9kql6mkk6yBZxLDGj7XqvtVKkWnw7A
	 eM4xxmtGZqLNFXsOB1DEyTCh8BNSUYVwLpRKJpeuOFapWd1jgr8Hsmi9BAtlFg6xLg
	 oh58gYG5A8u/qyYqSX3x1CfdgyM5IErv9uzuElI2TuvGe/GwKZVVyYDWGDgxRzp1Yy
	 hDkSo26gKAM2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D1CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941839357.20609.201058754768277377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db76cd29391ea14d1c5caffea67f92f5929f5d9de486860f756bb22c7c80309c
Date: Thu, 02 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759418393
