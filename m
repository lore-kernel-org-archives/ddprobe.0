Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AEB22C6D9
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733525754; cv=none; b=h9ryRKAS1yvoKtuSY9PylzSjHPEb0ESePAu4XixRxvtUFF7PB1/UFnOtq2NqVEcvOG21QromyH5Gr0QqZp2NCnlADRc57HTHAEoD5SmQ2xgLKKtlOoT/MhmOQ4fPUvQjnqkEaZ6B+6u/DY2aa520LvmLAkiIar5/6UhP8oaG7ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733525754; c=relaxed/simple;
	bh=Ae9fZCw40T+ecJnlCJDGQnuTlZmKzoKClMZPldLidCI=;
	h=To:Subject:From:Message-Id:Date; b=uGU9fte80iZpqPicdLnRsPZoKw0cs3INjF0osP5js4tk5cChzY7SI7xKr6FlaO4UUVXsY4Ia/5R96C0k4FWCaslMh6IvyfyytOavi26D8yQSiaiX+DZUFZVqfCecj4J91GSO9mO2G/mx6rQSKyXJk629b8cmxcXNAIZnrineFaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpVunB/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpVunB/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD96BC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733525753;
	bh=Ae9fZCw40T+ecJnlCJDGQnuTlZmKzoKClMZPldLidCI=;
	h=To:Subject:From:Date:From;
	b=HpVunB/9OuNf6hdbIVHbJTPxzqWJYuYJ6K0LaxBijWuIT5nehWF5g8M/abvg4KvlU
	 JQ+j941gtRHDMPBfyEFKoHmpZQr0dqTqvtlNoyzlJYe89wtzd+aJYYMInIYrtmYf8b
	 xDdRBoZrMcXMsX8vY87a6/c2XkRZa1CJJM+qd20+p+zRBFR0fsc5iMzwuzMLfo4bVA
	 X5njzH2XG8YMl2+UDNUv8kxs6g6FY4bHBCo3UUa4lXO1yj9c6z47CLXiHPZsCcKTGl
	 YVab1YzAlFqxaYvbbIZXaDN0pL30ppI9El4cvkSKHgdYktjFqk3r5ej3Velq2lvFv4
	 XIWAFrstopY0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0B4E7717B
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352575362.8711.8184856030342927982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76afc0fb1cfed5309de717bf8854fab61848d758abe25fd5ba89ebe4631934c1
Date: Fri, 06 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733525753
