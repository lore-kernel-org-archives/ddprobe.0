Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E29F81AA8
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776688054; cv=none; b=jg+XDP7i/c6qPgbygxJodninjC4+MSAwJ97LrndfGYPUAvJ3ZmA1ZXCsgn5DBM6jm8RAmbcIq+2PWp0lwbl40NQWB90bMW5Q5nD48MKHCzTrurJqMMp36NESABxLhhQ/JnoKvg6gCC79Jomv127LnWT+OJWzsVR4pARujPK5l8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776688054; c=relaxed/simple;
	bh=+kNqx0LuNNcPEbYqh8H8H4cN0x07sfoTYU1HYvT674o=;
	h=To:Subject:From:Message-Id:Date; b=E9SVTsEIXRCRaA3f8n7Bj7UueDG2CbEOqmhbynLgwg94Ra6ibRGPTkpLe6t2G40BbGi6L+qAHVN2cIsziWG1N1wULMFlvZ4qelHOTz4/jD9zFRT21XCA7bsDEXzUK/p2qS0nMerPF3Hrstfc3ga12A6pM5p/ZDHwrupJ2YM8Z9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHQ0qRRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHQ0qRRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78CBC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776688053;
	bh=+kNqx0LuNNcPEbYqh8H8H4cN0x07sfoTYU1HYvT674o=;
	h=To:Subject:From:Date:From;
	b=SHQ0qRRGCsBRnXRMlegylc5j25e2VPvICIzF0b6AZH95mTYJTZohCIJd38yGTrjJK
	 VCs+6/Y59S6+jNX2KCb+ekXjA1Ti/ZPrL/hvzHTYXsPfwNvCJp7gjvXsGUDdABgRiX
	 U79Q4U/xxI+eroSuj9R6dFLESbhrXeyVAYxxvvZh3xJM8Qu4MGa9p/PAVYfpkN1tAY
	 rvxekMfEbwx2Gd3oSYGqjvsJdcEIfmTapTKcCKO+KOD3TrC0cm1uO86JEcYCxjfvch
	 HdIOp185T0K8yr87gyXMvgBk2qYilGfgeSWVn5wP3LCy9vV6rXj9iC6JGBzvstN38l
	 TW37iBObOrs1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9898F588C2
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668805368.16939.4540285542554116418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc7aa9501e92f77688503a4c5e96eb067e1b478c9453d244bd62db20a69453a
Date: Mon, 20 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776688053
