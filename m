Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A994281376
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761691194; cv=none; b=gW05ifr7i98AtXfYs/4P/dQDGteNTCmJt9Jgk+Di3gRjcoFoDxnICHDn4IGMbQjC3sWO/kxFvkweY6mfAvdRyvuY4B2WLwUHMxcH+8khGQG6l005+BAHFeOjKCl48V/nDM0T2sK7vixypvfBW0V3iaZMcxO6CuP/lLs4bkYdI3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761691194; c=relaxed/simple;
	bh=z2CBJKW1nl20FfqaSgXjrlQB+CwCOtnW7BFFhX7huQo=;
	h=To:Subject:From:Message-Id:Date; b=Vmxx0LaX10odyj7Lgvv9cpxnyvwgfLjN7aYjtjWTuYfrRKqaL8VTr27H5L55AOS+aVwFgGpRoLsHYfEc7p9nAUT41OIGCWz5j0jIC6G/AqlTFZO+sPt40mCNZvdq9L9+Q1ruCCy8zMBFp6G6qGHKIaqAwGo/84lnNnegXpDWa/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdOytRiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdOytRiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D90C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761691193;
	bh=z2CBJKW1nl20FfqaSgXjrlQB+CwCOtnW7BFFhX7huQo=;
	h=To:Subject:From:Date:From;
	b=qdOytRiCpDGC7kXnwuwU6R/07xmnvaNQ+5HjZv7u1ywJWixD9hCn3dCvcrwS/4UR/
	 JLMBwH5gY+fcnkwAgDSfwTbrvdA8KMUh0V6IK5p1gJIvNhwE8hNbkbZyEGppxRgLGT
	 RbtSZ+kaUwjGdjspmM23qta0BmMeAU02tfxAUO3fT6gDoyutfI1Cvlw5eYP0eEJcqP
	 uenGyDqHJ+cuiG/j4esOJF+bHJYEfuxWFRnylyAPPyW8L7p/afjAsQeaibgcZq/7Hs
	 SCC+WZ/uu/G1ed4neH5MD7Xim9wpjVp/F48dMKKt/cUCRWIEdoiRsEifI5LwbO0TNv
	 jRFo7Eqp30oXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92117CCF9EA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169119358.7567.5237615251789505770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832c0544bd8d8cd5596a16c9ac9ff772ed82cb7253b411a3587d2997719d2fd8
Date: Tue, 28 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761691193
