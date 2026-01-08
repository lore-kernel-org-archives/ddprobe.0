Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117C933D6CE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767909234; cv=none; b=FD64xwDF/qhA/Z9D+vVbiYOaj8rzV19TP6m6HSFD/WH46JMEciY1NzWYvaJirYym3PAL7zik1QxKDwZIPAVvGUK7IhvaxHD2pqrw53ow/tR3F7a3BTn1GH4SvML7d1OdzUBq4WYTvxMzVBURThTm4V0JVaaauv03yWvzEL2RAOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767909234; c=relaxed/simple;
	bh=jwGDX0HIpCSfThq1KzTaIPY0NHmeirFoGrlkVEVL6gc=;
	h=To:Subject:From:Message-Id:Date; b=ccbwGLIKqG5AaW+YACR4yDYiCOBBLcQbAd0azVi9hmQdCd/yFz4rfnWFPiRjCT23R+FMa4VqPesp2q5GptGe941ci1jglZ4LAibIJ7pd15OBfksRUXxm6qLFEC5Bpjo33gtFme2FTJT7C9le4A9pVH5W0VZJ6zAx1Cyh7Dhdr3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUgJXOdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUgJXOdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A355DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767909233;
	bh=jwGDX0HIpCSfThq1KzTaIPY0NHmeirFoGrlkVEVL6gc=;
	h=To:Subject:From:Date:From;
	b=ZUgJXOdqKUQ3p7Knr6Z0E3mLjyCy3GHOCF2nsWK1SBEF2e6apn9OB0pmKo+S+lY4Y
	 eHDbWynHeaABUGQtlNzlYyHonpeBxrC4ONlS2y860iCmryQ2kMEwHkWUbYlsJ4nGfL
	 tpNJ5AfypQRXctEHCzg0w6LBYh5Yb050CSC3aSdao5KCKIB8pO7PX3GSRpfpZyH4g4
	 BlZlarozCR66aiSBUkjJyRYU/mVYXxU5MRXg70p6WExN1nNnk+3qZfFNWjCygSGq/D
	 PzywlTwCI3Eers89LvtzB37JSwHj+8MR0KSimwhrFbKnLsX4ktGdq+x9d6ObGDdl1O
	 R4LZTiQ/YUrsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F8FD1D48A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790923358.31403.7611142585614230529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee119d8f419abbe8f679ef1bbf07fd00799397d2f4f4e06640e7f814932c29a7
Date: Thu, 08 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767909233
