Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326F9157E61
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724102754; cv=none; b=i/G3cVPjFVE8lOANnTF60eNPBfdJVozRX//RnsX1Bmzs92F6f/uh59IuC3Od3tGHCnLiFhAxcf62P6+jjIxuDvOB2drS90LO4AQ4tu1Bzi9Dgxxo+j8gJYcjm2aWbhfRoA42/d8eO3ATjFmNdDweQXUVo3umhuXgwkBnogKVfDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724102754; c=relaxed/simple;
	bh=xwIm4/BlwxroWTSr3HsE00EpOyp4CkR7wB5pJ6cFhlg=;
	h=To:Subject:From:Message-Id:Date; b=czal2inansKDy1e38r9MZa51rafty0VWIiJt8FPCZcLw2HGoxCY9SvjhEDnKRDBpcwHxWiuaseq7cdAxwNldYCFsSRARf1iXuPVTPRuKf7VANadL72gMJA5eWaqmt15o8HgcbUqPuDE2+C1wH9cZV72gsylPIHcDgt4lOXyrjdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xy0QbbSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xy0QbbSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA47C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724102753;
	bh=xwIm4/BlwxroWTSr3HsE00EpOyp4CkR7wB5pJ6cFhlg=;
	h=To:Subject:From:Date:From;
	b=Xy0QbbSUQnT8lNeM47Kdp2NMLsx4L3loGMIJYAXr6YoX6TDhXH/FnSjq2bIBnORX2
	 MojeuVcXRej6Kdxtnsjwg+bxa9qbaxapyE+On12kr+JOxyiNJC9ohUq4AruJqrbB4l
	 4beFuxdM+mEe9j3XEtdxEjakkYMEPrJByzQ1S1Nt3X2kOW34fkw3RBn4dlApGcqBRy
	 NLv3nGczrzfQd4YbOQDbVhttGg+0DrewAMv928YU/1UKCqUvoegtf5hGfzTXsCeekG
	 YnDu/4pSBmVB1H8AJgFZ/VqBqxpjd/T2+g2pAOSRXpRkt+pqlEvOVQhEuDpRH6esN8
	 v2Q8QM4y9BAMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93888C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172410275357.28306.6830164637816601802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929be570fa7acd8bb046250466c329d03f1b7483aff85fc39d2a15951dbbae37
Date: Mon, 19 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724102753
