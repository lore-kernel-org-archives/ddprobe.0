Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE4A1CEADB
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775871454; cv=none; b=TiPeAiRhyBrc1PsAnHVbPa4EEml7VYCHg3cpldRYRyr2cToet/LQYIoY/x6d8JMU3FQltSCdDkwVevGqPdi3nYRxzJEyYDjPO+8CKhyo4qSINjwFqHrEHudk2e1pZhHrpRANyd1uJR8h6xiW+BTUp0wDMJrB14KSufUGyXvtcDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775871454; c=relaxed/simple;
	bh=qGiT1qPe/sk3g1ozfJuJCm6/H5XIF0btlp1QGBLzPzM=;
	h=To:Subject:From:Message-Id:Date; b=rr8N4Wjz+BIkU+8xOGr8Z6wkqje6dmPHzwE1Fc83JSFXE9Q267io1XoJ6e3bXN5w5AglLPwBUlIub6nrsPlNoQaIzKQ0pD0446yOI/jZs4f2x0k9rbD7vJXT8NMPoacFQQv3yGLkjGh01Zk3Zqt76bFR19oGdGg40T6QVVNSSLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hineTYU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hineTYU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9ED3C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775871453;
	bh=qGiT1qPe/sk3g1ozfJuJCm6/H5XIF0btlp1QGBLzPzM=;
	h=To:Subject:From:Date:From;
	b=hineTYU6XLvkn0hgW0nJ+l0T3kdUMoASQpwCWqQnAkIpJsuP4Gg05xMjHF2mIDm7U
	 V4Bm4uOrDWSIGGlduIBBm4fF4NfZF6zXrdx0ef3O0b2RvAsrELc+gnjYxU4IbQh9ai
	 3RLvfXSFDK6rnPOT7nDze95IbCulI2ludbekEqw/UaeltedklJZ/YlRkD8H73UrM+T
	 W8goP/+5ycZh6V+oWRCj2lxFO4oOwHg4C4emA7l0MEppGN4aCmIMIqRlFdU5vJFf2Z
	 In0OVRvghDWwR2Ufr/cSVUBu5vuELDezhI9LbD78W1SbDseCqv2EJ0wu/QUmQE4w7M
	 ZbmvfTMjVfh0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93BCF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587145368.30598.6305657603096408123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18948f140c40c79180b6efcafd9d57ddeb9ab1b54ba1c4f682a777a9e519bc06
Date: Sat, 11 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775871453
