Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A083630B7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778283454; cv=none; b=ruOdtkpxuTmf2fsDETnHGNvAj9WJRfFpk87CpQmrl+7zidel0+FsWFkoyUHRfzfqefWq03J2tzvolkZwvQsxgtMkU4EjUJd3fqJZOvmw9vUD5Ty9aSCn5Mlk+GSguiwwAfsqYn64Y6h1ftqwVSlgmarrbTQXw122lOg4h3A+M9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778283454; c=relaxed/simple;
	bh=Yo1RBENNBUXWnNokPJcOlrP2aJJvM3m8eQIttubFM/c=;
	h=To:Subject:From:Message-Id:Date; b=tRn2d5gr/8wNLh4y9pDkTS29d3O/72Z1JnUvZndVRdMR/bw+XIzAd/hs4Q1opY+GBGoIJ36CZVpoYaCS23lSgOPyMps/nN0xVq7Gi04dGsKqQXAucKuXa6mHeZQeXQERlrfYjj7IDVNdgwew7olNol25N8Tiyt9CvyyZqyZyp3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfSACthO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfSACthO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78E1C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778283453;
	bh=Yo1RBENNBUXWnNokPJcOlrP2aJJvM3m8eQIttubFM/c=;
	h=To:Subject:From:Date:From;
	b=IfSACthO2HGU3HXECBBGvgi4PK8dyZCbBOsLIAPeBVrfGbbz20mJLwDLPXo2BIQdl
	 /T7obc8ozNmbI0egQQCeYqaPAWRXSZ/SwLVlZrtciKsAB+ZrWNYYjjz+Kc9jPYWFNr
	 3q9olEIfIU67TQo4o1blT3HSGt84WnfEU1iuVHVW9s3Sg5mRl7eqUkndLfcp+Ca3nn
	 ccpJrmgKUhjV3wp8fZReqrZ1drK+/w7SsATbH5//EcYECTZt9Os5PSNYu9Vh+lqXcG
	 /I49OHXBqQ5ckdwtfJfvm86807Q7aSuECzZjgvy+dHS0Q6BJWE5RVEW78Bou5VkKbc
	 YN54jkoOYHYKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6911CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828345373.20680.5752446829336187055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b817e2bb4c52a876b2d4eb99a7d5b72b3f7ba318b73342e7fc98dfb281f87b
Date: Fri, 08 May 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778283453
