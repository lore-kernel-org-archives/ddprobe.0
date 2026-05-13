Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346EF388390
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778666434; cv=none; b=G4vflPXJTPJqM5IoVe2KGY41WJO5GXneIbdeUKdcX5adlNim6NwBY1sRpf7VJTOLH4OLDoSW1Hv+O/3HZrLVGyKIopp76HQZlAm90yZ0WCAudphGfDAADEb0UwvZu0I7S+JdHGTVApQdMgMGAmYP/8N+Ib86vtYO8gDlH02syWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778666434; c=relaxed/simple;
	bh=KMGwH/x5XGOaaSxHMf8WjrMkfCpYc4/uMxz0cOXnboY=;
	h=To:Subject:From:Message-Id:Date; b=pEa+4eX483smn7b9s0FoSvlRhQ0mwXHOVxj2JOUxvFNf7tJ0P1l7b9LHk1+WZ0y9XGgaCWsnZO5o/L0ZAeB7SOYvcVv6DI4kyUFTb2J+225xtit1FrI9m+RkarkWhP44acEWZ2llBhObidO8s342JjQtJQ1EyDCuk5G0YIL5laA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5TxL7xL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5TxL7xL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC594C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778666433;
	bh=KMGwH/x5XGOaaSxHMf8WjrMkfCpYc4/uMxz0cOXnboY=;
	h=To:Subject:From:Date:From;
	b=Q5TxL7xLYVfuQHtxf22/JfMhQ49kAhhbUF7oJDIpOltm1/bY2epNE2yovWvU7PfvL
	 lHExG7bPYXq8xgR7SpguB0xXmjKgfVRoT8gyJMPWhCChbMM8KksLoup+U6aNcY7muX
	 1NXPndstPFVgUsuCuJ7HU9eH2sBJLDcVyL+X10ei0hc89qzdnxxFEF9vE5JONe3ZNV
	 aDathWEIp4DaJ+L0Idp4F/R8ZLl4obtiu+Z8S7xJD2HUUOAMJnIGLMtKyXH/MP+mYC
	 UD3S3uYW6Lojl9oyeIh1cCu4nR4ObDfOG4nvhHHvz/wDfJtm0kRqNljYWfIzixVBB7
	 7fs9WslWBC7/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA882CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866643368.18292.8816092383617380989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c01edf164ef04c99b33454c2a0ecc1269ed1afda5881679a7094fecef0f81af
Date: Wed, 13 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778666433
