Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1AF1E04AD
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754875794; cv=none; b=I1LxPycA5iVHld4d3RiqC5cFWX8bSly2d8rM6LZe1yy0+KZapPIjljIM424CTs6Z82OByEsjXfSA001AqbYM/ClBFkRnZ91sqmxVlSLx1o60vqLXcrNrvCBEyvNUJNWTT75PIhc+wGNI4GuGh55CjA1F+O2hZKlel3YdixkgBro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754875794; c=relaxed/simple;
	bh=p++LjkdHaCaqf9HpMw/FTAiCXcb51dJsRkEsFqRrDng=;
	h=To:Subject:From:Message-Id:Date; b=k82cOdAF3LIRqLqvpDO6lwJyQcBDOrJ4KsN7kiVqR5ORJuyNOmL3P7+QA9RefgTo/mqjx6wUlhwoXXjwRBk1Mkk13dEZNpvMK5ol6qkeN50bHd34tS6u9hhC2pZNb9uAORjTklSLb52TxFE0Su5sINvJIGCuZcLz2SzKAEh5iJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrjIhgT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrjIhgT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A284AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754875793;
	bh=p++LjkdHaCaqf9HpMw/FTAiCXcb51dJsRkEsFqRrDng=;
	h=To:Subject:From:Date:From;
	b=OrjIhgT+Yc/mFAdTUjiuz1sea98RcUkG+b+1lSdljSwYlBGO9IZG3dEuR9Fn3Mj1K
	 2Cp3b5BRZ6E3PLocJ4+uyOOPM/lJrFQlm1Lcy9b/S7XLjqtdeNySUXJDgdiFMW14Mh
	 KgEunyE7DQoNxf7IdVXXNdEoRwQNcfy0/n7TLU077hKK+hPjdBDdhE+jMxAljeSnqV
	 wKTrGOm6bQtc5VgIZ5kPmakdxfI321MvJ8qfiPZYr8RLv3t4IuS6TZOABUsMOwag0n
	 uanarUIiVctKAKKEN3mVNt2cYXPmAprxd46LCVIDoDDcwNP0X7Z7levk3o3rhCY3N9
	 Q1l+Mdmyxr/jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C02C87FCF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487579357.3893.1675628158330927657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83297dc853dc4b9354d94320dc146c60ce787286cd27505619738b77fa46702
Date: Mon, 11 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754875793
