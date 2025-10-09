Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E788284B42
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760045394; cv=none; b=ANy+KQLq8Xyts7JqfXNdje1FxqsZBbwhAhgwhzUZpU0hDkjHpTqUjaur30JiY6dAz14is330yizqmvh6aooKalNtn4OH2ckT6wFRND6mqg2vrsjr9es6QHGRg4eTfjQpOe8l+risD31jzY7oP2l1Enq1bdI2peiN+gaVxB4DYus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760045394; c=relaxed/simple;
	bh=JnvL1+TBbOK4ASL80g34HlTtTKchj+1tPLJwdhSBsoQ=;
	h=To:Subject:From:Message-Id:Date; b=lhDPuhJWL0QeC32iJkxK9pwlDDsXpWNbEtTLG+Ctv4Q/6dUhFfUYBUa110TIBamX7PVxZaRMz5xoHARy2g/uTklsrIGmEWQSl+fOAz/RJPnw25vposjtKnP5AoXXJlidKGboBYAoSKhi+t9s/r7eFSfOiyQtSeyVR2fZyhGDddE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIa5quea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIa5quea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F3C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760045393;
	bh=JnvL1+TBbOK4ASL80g34HlTtTKchj+1tPLJwdhSBsoQ=;
	h=To:Subject:From:Date:From;
	b=EIa5queabPZSv4JqeE35tCPsG36dPW2OgWTbHNcUetpdEaSeCYqT0xJeYTeLJL00x
	 2F4YSdtJj9L2yhoWG26NLl2PdzIbRxu4Ip3TPwnkot84DVBJlIsTw64PvxOgtOw/+H
	 hG5fQPvmCzVjxwuA+gLAqiRzfBMswRce6B1SK9lZcYtAa2mB1JYupoKOg2gfu8CAdy
	 eAcUGhXh0xfkimorwri/N0rlONa+GANbgW8TWQjuKGtkwnJyzR4r9fsAu8+t/vPhSr
	 OdKLHi5DxebcrN5vhYEDIP1nzIQ4GD08comqk8ZcI2jCYPc6DlHO139gsqQ/8MxvfG
	 5J3Cz0E5VNCPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90528CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004539358.7864.8851053688557585630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc0a764eef71d81f41b0ce1c00ddbab2d78de9db28ae790e9c977cbae1d94cc
Date: Thu, 09 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760045393
