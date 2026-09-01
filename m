Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F49A4CCDF6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788241834; cv=none; b=KRCdb3v9Q20gNxvSZDNH1FnsmxV6YaRD76XdgkA7eHD6FVREUztUzQGEdToda2LXTuS2rp1PNjPSL1b4KaxjAEkhnd8BJ8NmtTGuzlh06Aiv5Ubv/y6oU6IxTPPvlQ0jbzhvET6zRo3iJJsh+KwZanG58KPoDRoXNTpMRqZDFLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788241834; c=relaxed/simple;
	bh=YcXFWXy5IKm0pzTbi4fL4IrbrEGBwgR0V+g/Y2OpFds=;
	h=To:Subject:From:Message-Id:Date; b=J3Wc9tMe20lQi9mB4VxbGxqGpg11zFfRCuphRncqoxWeE3RHgjD7TNynlF5GqOlWc/tiN/Mc0zMJ5rzfMT0fiLK8W1NgkiYs0WVrImdorBMIH9pqCTwOHA7csY5tzYRbBmFwtVZsE5/75jL0JTdZSM4Zpsdlh2HxllsazLv+kZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIuPyx2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIuPyx2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD635C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788241833;
	bh=YcXFWXy5IKm0pzTbi4fL4IrbrEGBwgR0V+g/Y2OpFds=;
	h=To:Subject:From:Date:From;
	b=KIuPyx2cDayyp7wTxC3s+aDoyAxUubCgjWe+t7e+DbGC8laNYk0IS0+Zp4IIQZy+5
	 ZHbeCbi3doyIdE6TRGaLqzmf0S1BbACj2nRZz2cMU1x0Zr8Wqg2k0GZJunLTI1j5vC
	 N3wxpxlBcH4jMFTSEm8iL9w3WSLAHQeq0FQue4w8/+pVJefNGbC8r+XNz9wNimLN9b
	 I7f26XBixOUCKXFRZUTYW3KaR3/bPJLxESaeyF6hIdUPp7A2etx3aBdvdr5yKtt40I
	 OhMooYcR7woSv0d+94fa0cCHtrlO3nL56OB7N+kxzbFCW7yIw4RSYKqrWHvqUAa1Ej
	 yRYienn4y04FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA40EC61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824183368.11348.14700773621919151903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e04bb5c3dc09ab194ee6daea86b65b823a15afeb3bbdd055f51d63aef723034
Date: Tue, 01 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788241833
