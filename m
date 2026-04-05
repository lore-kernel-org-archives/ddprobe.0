Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3427D1DF27D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775371534; cv=none; b=iZWmgXrnUTnluDTaaBoGMLbqUrxk26zLyV2CHt3jMb7+th9MUhqvGv2Uj3butoYGm/wXlLJenN5fW4lQgrsK40gy7NPTNO8JvdkFbgf2uleBcklUuOPyvziD/H8UjnFuncSDgJgw8HBa01DXYI5ofoQk971tRyScz5ciw1d87d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775371534; c=relaxed/simple;
	bh=GaoI0b0Z9FELbAge3reuv0jrpgtIKB6gwrrwKnWkMPc=;
	h=To:Subject:From:Message-Id:Date; b=ElEJTW5A+B9+T9gvgEslvuP7kTj4kVzwYYv1kacWbp34KqOVP+wQUdNFSZ0vS1ytJxf8VILUECH2olIKQ5BROPtp6iH3O1pqNs+oQ1ESXdQp4WUHM0VuX7vy3Afp5xqbGYjldmNzhKRGMaDW3TZrWVxEZ542SczBrgGO5ohDQPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQZgLPov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQZgLPov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2FFC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775371533;
	bh=GaoI0b0Z9FELbAge3reuv0jrpgtIKB6gwrrwKnWkMPc=;
	h=To:Subject:From:Date:From;
	b=nQZgLPovqbCd8x6AK/0PcBXIiqmswm3BV6kDkgC7Cg8Ka7lqAwSTTCWQ8L1P1u8yo
	 neSI1omNRFYisbxN2YZwCqZyuz3e0x/Bfv1EL8B5j653FLIF7Bm/ka0jHA+wjQywvA
	 kkmizyscQVFVrGcZC0CRuc5wqPwiN8ofde07osll53EQRIPjSawX93S7gNHbKKqhH+
	 Wi+k2gIcYM9RBKQHG5PZi+TMcNLNPWdpMDCS0B7oI1e8zDwgVPmWMyqsAK2x+H1miH
	 JCzekzFwDAxB8+bzIjeMtIONlg7q7A+JaZwvGjM9mQ2PmTfHgVYFoA18a1koaH0JjG
	 vbQdyDlJnQiJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84E9E64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537153376.28275.14779670843882824109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8420d7eb1e3cb7a183e714bcd32b673e5ebcd5c7fa51646ad3b53f2c57c34a79
Date: Sun, 05 Apr 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775371533
