Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54763D30B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719085943; cv=none; b=osVlgH3gSxTTzG0dPBdIDq1GV30WnfQ8Ll0Wmx0V/7KE0w9qamBK20MdAqEUboVuoQ8WeDzpWL0L8DI2qHQpUrMjMCeOaqVS+EOeTM0BWnDeBSIOBv8tXvBPA267o2Gei+/iqaJ6oT7+/iS4zj4p16ym7e0Wz7rgVA//r665VHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719085943; c=relaxed/simple;
	bh=zQSn+p0V3MYk5XYqsDX5PGekfISsRnCuJr6Bef0Nbqw=;
	h=To:Subject:From:Message-Id:Date; b=VJT87ZmZFMLg8b8BMBIdnNs8Yh1a2am/loTejARxY6yKNuBlR6/hVqZ5xwGPBc8qIT/SEvNotJ+IUKtr/OOXb51BDJgY+F30Ijkm1cZKaGOXrhM0wCFMS6BoRb6VZ21gEs5iMbtbGp3wmBwV6rJvvkOUmwFYLx2oWTIRf9VjoaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JST2OIhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JST2OIhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1629C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719085942;
	bh=zQSn+p0V3MYk5XYqsDX5PGekfISsRnCuJr6Bef0Nbqw=;
	h=To:Subject:From:Date:From;
	b=JST2OIhzsecGTR5oFQrShzAb4R+vFtxdF6QAUSEWKw0mvs3y5065G1eKuFN+8AcAg
	 52VktUmiBMc2GWij/gr+z8GDIV4JiA3Pp7CKQGQp8B/qSaPZMmdgsyNZsLXJv9KERH
	 MrER24M4Ged152a+cUVEyk3zaX1meqxNflXuWYiHsg0qtHP+VILCV77KN0UnQctN8M
	 r4cce814NGTLhbxWE2yZ6pEpYxkrDdJe9dvWOiaQB325kKEHTGFwXH70x/5Dzq6xWf
	 0b2heMoERfI6BlvzFJlXD+Ti096L8pmUtyEN1ijkTcUqRwUsrHTi8a3ne/UEZBdwhq
	 oFtfMv1qAdV6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76B2C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908594278.31993.9588159917287296536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcad2e3bcba7c20c6f2ed96351f87750cf7eefe5362004f5abc54ecbb2340bc
Date: Sat, 22 Jun 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719085942
