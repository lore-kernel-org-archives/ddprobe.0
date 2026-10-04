Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BA9381E8B
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791092434; cv=none; b=lYWAw9xoajzMEuCs1SIC29BoGvrkdgKDq5C88dEnCzbHBDWK8CT4nuDU28BFqiU2s8nb+Ir1YKYEsuumuEBRxcZI0qRcRr8QSNzDk2wxPVpA5NJgh9pHP2xk0SlRGdowois3ntTxDJiLieN2jybChA87ed4+uKXaC5krzZPGRds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791092434; c=relaxed/simple;
	bh=9PYcCt7gRec3OvrUn30ZauOXCxQ8Wx0zvT0YeldOAgM=;
	h=To:Subject:From:Message-Id:Date; b=TCcOSqV5QT2cTkxU+3TzFlUof2Ur+jeZL4S18xNoHN2vtANd2yoCxsD39LvsT4ZA1OHz8cZqQ0vjLUkYRBHq/xJkfoa7G7zweAkMIXH/F3/2sJx0GHm2FTIvFLAg21W6812eAWSBZ4FIC0mXcQOVU2NluduJXBg3OHhWHnO2DnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVitsmKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVitsmKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAEDC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791092433;
	bh=9PYcCt7gRec3OvrUn30ZauOXCxQ8Wx0zvT0YeldOAgM=;
	h=To:Subject:From:Date:From;
	b=HVitsmKWzLWuveAC3k1vOLwh+7gCPL9gzNJPjip3OFUO0m41lcTUFpYCEG52CvPeh
	 fnREiV9p7kLtLHMZEA0Shao24CpIiX0BRmuk2b6Gnow0uDUqVyPZEbnubXWT21iaKx
	 xH351Jc/7j//MHsMYyQ33xa8OA3kFO06F+35iTTZZkpSFVG9IHQGGXVgFqkonD6rbC
	 P8jWAWnPj1PkWZBlLf2/pjmFm1FJUIK9zprdDXOzBRJaC/6LatOZUGMt4y4q4hSa12
	 kgQbQsYlPZ6lCGasSXGTxH06EurOSiqNqM/5KvfTNhaKqpBskMOWx8OXobOBeu4H2b
	 Rc/SVLc+RPSHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB38CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109243369.30445.17304199873940505950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ec359123581db372e2dd306889ef67d4e3863dfacfd8751d9a59c7ff2249be
Date: Sun, 04 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791092433
