Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86AF2E7F11
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761058193; cv=none; b=cTQsDyyOQZ5veE16Ct09GEA2Rz/8qPDqu28RHcRr+H8Ngels83FSIGUv8DfOOPgOUfMc/6kaoEWQxfpyNFyC6On5lr5DlujipDR8puPeQ3NV4/Ee/tOUxnQE1mp5w9fkJydEin+e+acf96fJc31Od9XNsXPCw3/L70oxyzz9xlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761058193; c=relaxed/simple;
	bh=YjiOmQ8vzX0TPNuuULhN6R4WoCMiO9d+4oY0CmvQEyM=;
	h=To:Subject:From:Message-Id:Date; b=QHf5XoLuvgldpGQU3QO3Wb8ujl+Menw6aFCQnsO5MlZ/0bQo+5wArOREJeSloqgr/bFTO7TH5jyYqY/1jG41mTWORLNKSAhSvndVhW0TUDI3FvceuV/u/78rXJVbk3nSeSDWC978tN0GVRRwOjwcsBLfumEt8QGgX1C/N0cvIeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ri4ZZOVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ri4ZZOVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E523C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761058193;
	bh=YjiOmQ8vzX0TPNuuULhN6R4WoCMiO9d+4oY0CmvQEyM=;
	h=To:Subject:From:Date:From;
	b=Ri4ZZOVFATRbjAtA1yXhwdJzTBpOGM13p/v3f6WAXAXCMOQLyGc4uHLTYXYWlwRl1
	 ccgwdoC0rXM/PZJbyHuZZN35XAbsFTnTNbJwAoxQuhNFc5pSjmAqmCSoZbqkDTn4Lm
	 /30k/y0JwzU5ngCVRjhCPySXH+7sSi94BO5+NWmuvokzwtoNSR7Yu37a6RqoDJMVt7
	 WiSLQhSj81vgavRGHBk1MESNhpyr4YVb4NvIwJonCvhaPk3DOI2eommsQNtLHH0GLC
	 ObnbUZzf74p4wEg+aqLZcZBD8PNx4zpMi3Pg2er/eWnk9XluFvBh2vFA7BhG5UPFgv
	 va6zHc02pqssA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4DCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105819358.10039.7122509090103180064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa481f7840d67e19e7bb1473ca3096a91bd61caf0f7b8a82ada150001758f20
Date: Tue, 21 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761058193
