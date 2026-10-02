Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6143E35F170
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790971234; cv=none; b=Lt+rNnMDnYrs0aIkUizPH+Q53Wc8x4oRxFTK9+qfFIyIgyQuo/D57wzdtB9vxMeEhp6ZXtsA94fH72MUOwivEAUT6B1ZC2JUlo2lL+M9sG/orW3ZBgN60K/p+m0l+8OY0pNks7mgXLUuWyG7n9Um3BN5LArxcpIHPbMKPparJyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790971234; c=relaxed/simple;
	bh=F7uL6ePI16IJWkwc2ktZgWtMoTk2IfItjWh6yZLtEYM=;
	h=To:Subject:From:Message-Id:Date; b=LHnAZehn0KjwTqys3g4Q1w3FnqzgXadRTa2QkTf56WnlInZrzMG8NEOgKFo64JnZRwa7ouMQAOUs0scPDfLeoG7/7qjZcN9zvTvYH7sYjIfmR1L66TuYMz+QrYbNz1IUtQblnoK2TawjoY8K2APP7si+TknHN66WwiHHBi3Z7Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fggsCO19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fggsCO19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5149C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790971233;
	bh=F7uL6ePI16IJWkwc2ktZgWtMoTk2IfItjWh6yZLtEYM=;
	h=To:Subject:From:Date:From;
	b=fggsCO19I+cUQUzTzNmS8vYVkSsGCgGm6/rIc/37t74wUPFsDjyyIbFO8NR/O0vli
	 EuN3CCj+7MahpGMgbf3V27WRQC7Vny9Zyt7riz5gA6t/XgiYc6PPAeqhqBzOupairH
	 wBTnxqIyliZZW/GvQZIEKCxwfdBIdPKfmeSN0lSvGCOoquECO2REKpUoAgUCmfYxVV
	 TisGQw7ueDoykvwjsc5ixVP17b/y2jQ71oF0JeKXsF/b2XLa3J16QsWN1SbHmxSfqe
	 UQYzyjIl6Y9rr03JFLgoUp1ZVqc3wGlNydDP5FW4eQ+KLspqhXrX90gJyNmR5w1N36
	 s6Wmi2Q3r3OgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0168CA5FE5
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097123370.7369.2222786324052846760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc23b5d05994c9ef810b8bfd4ffa6575b651c990324bfbe5fbde0ee9c4730d43
Date: Fri, 02 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790971233
