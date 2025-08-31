Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132F7212566
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756636794; cv=none; b=ZdEbs9p+vmQ7hksbileezKgTTkjRHfNlXg1LKlD6LP8CmKAIjeIXpedEeaO+CGd2rMj/qpPNGG3+Wbiy1PkEY9MxEWRBuMMml8elfJvhNJBkE2TqnKf9rlvzcqUow8LbaeMM0uz430Td2Ho2f1nf1QjWrFtdc5AtFVAjzqMABu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756636794; c=relaxed/simple;
	bh=MQV4ZOJ+zLW9lkVIpKpK9rxEDOghORqIRNloeY16+Hc=;
	h=To:Subject:From:Message-Id:Date; b=YKTf6boPPsLsIGBDYGWGET6pytASbXrVjjmChvgbndaqmkLK6uog0n9VcPbyXcQI67dHSNiaYuNZ7hCe2jcp8OtOL9bcZKzMuTiPGtYoN0MVGy/7G5Sq07KUAa/NYt6Q3IUKFGMRyvmoPPKUnxD2ZjP4vV1EkrISZuZi9RqadXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVp5MIwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVp5MIwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50EAC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756636793;
	bh=MQV4ZOJ+zLW9lkVIpKpK9rxEDOghORqIRNloeY16+Hc=;
	h=To:Subject:From:Date:From;
	b=eVp5MIwW6qrvrhpimEgCYqWK7HfbGgU1qn/UffnOCTX+6qKGMHjDvLQyYos6XXo/o
	 83b75ih6BJB0EzmtqxH05B+H2Dy6E9z7aWNPaglU2VQqjLTUTfGfzbar/a7iDXtLrh
	 KGR2aLmX5OAcv/tGYfg4NAxwU5PErRgAnv6GuNu9m4r2nz0mEqoTACPqLL3E9NRUEJ
	 p5XUdXlsVc1kMXuM22HI05amphLv9Zpqy2PT/Acg/cEgb+uZXLf5XzJ0Q8lGcKkP4c
	 DbPWZacVZMVFHhhLCiBKhjsInBFEz6v2kYblPFmjfuGD0dvGjO6aUIH8TJup3I2oph
	 Wf4IBfzF4Mb/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C24CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663679357.3660.6438751950213869464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea1e3b50ea3b23ed727d2a669777babd3a3bfe34a9eca65ed683d1540c4b6fc
Date: Sun, 31 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756636793
