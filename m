Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C60256C7E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750750194; cv=none; b=SBOfTaJS7N82L3YsK7I2GvUtb40O9Pdiy3R9QL4o/gQestfQ6HJ8B7s6gryY/G1+l7SuOV3SA+XZIcOeF6L81cQyC3v0ri7BEG334RN//xrxm/xu+ZRp6eYSUTf/a9sMLgjfR9UmbSSsrSIeOyIsqNZfxb+/7gXccAktD33Qrbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750750194; c=relaxed/simple;
	bh=QUVsPMgCpaKeeNYnSiNv6sTonWwTF2y91685CazBWJY=;
	h=To:Subject:From:Message-Id:Date; b=UzFZrCGUfUsInoc37LQEXUctZy7tYCG/E43YYmuGg2E8u8jOeIYdXPwvPkBnOpU8P3TSGb3BLdTyX9KDTAFKGWZ7Jc6cNCRQf9NqJ23SKPgxHpFKfvrouZzSjKrXsEYC+Ycw1vLNMAArBvlTS/S3yKU2BKWAx9Iwlj4QxRyPG18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myR5/GpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myR5/GpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6DBC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750750193;
	bh=QUVsPMgCpaKeeNYnSiNv6sTonWwTF2y91685CazBWJY=;
	h=To:Subject:From:Date:From;
	b=myR5/GpFMmP41WyUTmz5Yp8n01z8TjGU5Q7n1WeLUpTb57gLwrIB540zXRL+ELF7K
	 lfyGhsGYWhYjlN/UgXBxS4or5xXApttKNyblnkrOjCEMD5jTDYY9fWQsnmlVKHPDBN
	 hGZ/S0wAdyOGk0acNIZfp1mxyJPkHl5XEnawM/qnb/ZeCY9SIKYy0S4MiR79T7cDeV
	 5I5S/BYotdq7pR8oHXXvTJwALilgC37dlGG7/uvXTtqWgSo3W5aQG87+YlKieJS9d6
	 3APFsxpz1vpx51ON54k1+3nQ8w1mWLezMoWG0G5fpO6fYiDuRUDqdREDQs2Psf6Hdd
	 VrEs+8y7J5ONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F451C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075019357.14483.1957385474192975548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86894ad316cbcd5c2133c3324f7f066eceb96c7e2f4e223b2791e606fa44063b
Date: Tue, 24 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750750193
