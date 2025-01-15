Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A5041C6C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736973354; cv=none; b=rP249ZRGAIrDifN9cQwePF0J99oQdwjcBIRi41MS5qF1PJjO8uGd+/Z8FDSWXy1mzOFo7yQYEibV2/Itw+u9Ayu1vDZjr8Bs71DJcdH3+XQFn09/y9ILQWL9DhiHFy8IPY/a9Bilty5bOExubXMfHOICH7RYkN+3hTB2ADAt3p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736973354; c=relaxed/simple;
	bh=lXWVg62TZLLSrojLVbHvQWCZtGmmC7qlXp+WZ46fBSU=;
	h=To:Subject:From:Message-Id:Date; b=BrBc9Hq5AOC13c49VNdCPP4mFt2tu/JyIRsg5dKZA8K0AEgIFqlZz1CPXr4+QpxBLHYU6Nbs4Irg3L6JMavmhyC5cqXl1H+zOtOmzJKtqQzpPUnfR8Yp1whEeGBPch0vd46yUfNTWzM1gLJAuXLPgLTWhgdAWPFUoj86MGdIJSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgeqK0Xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgeqK0Xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B522FC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736973353;
	bh=lXWVg62TZLLSrojLVbHvQWCZtGmmC7qlXp+WZ46fBSU=;
	h=To:Subject:From:Date:From;
	b=PgeqK0XlxTqV110+9CVCnX2Y8mTmuMHaB6qTYlSnRX6jOTXgug57SG8NqOfvsa8qO
	 NWxNwTvy9gomAcbttxtA13Klc93PcqGMPGPGSR0YScfk+Pcuw2/ZjOyGCWpgBW+b8B
	 iCiTK/8V7MN/aRABd1UcSLvIlrrZXkj9+CBhfMJxQBDqjJv5jr0M1plNt/Nj+RXhj4
	 Zzs6FKskTOmN25fuTPt6fpt+GTsXfT3JVGHZi1ed3ErALdWYudDrtgVg9eQ8hDkBph
	 wOl9cICgF3WdSBBe8QqGEvBv18HpeieRWUu57LKCx+w5G4NGzCRERbL04/KAS9IVPa
	 XFC7rcnMdUo+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A168EC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697335364.20154.11115077833333253506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9512351c59755e711e224ff37e48e0a1836c5ded66dd03de64815ae3a245b832
Date: Wed, 15 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736973353
