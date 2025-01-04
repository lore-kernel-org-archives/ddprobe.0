Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182AB433B3
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735979754; cv=none; b=NQFuE8+gc7YbO+Jmt72+iYkPxmL7cwogmdpAQUn3b9RfJBQvMD86JCobrQfeEbVcX/cmVNHW18mf1gVdZbAhtA7gp7QPMU6XQ+Ou34TNXTTv9eP/mhs05rJhBTYVnkB4xwRmqlsVJAcAPEme5Z0+7BxlihnbcAGF7I1u3STBufg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735979754; c=relaxed/simple;
	bh=ygWnCA6nCYqBc/kxMpfd21d2Tsq/KRh13U6ZPP4gK2k=;
	h=To:Subject:From:Message-Id:Date; b=W5terEZKEmPOP0LPexspTtzkaHQBh6kd97v1oTrOohyBFdzy36g/eJwfCE+wroB+Mv3vlx+0AH7mh+QQH6s3klEw5s83CvHpT7Hutjm9TiyQSx/RExav6iZQDD5Do9VUOx4ydZmrhhwZlHZGa5oXojs1EWaINg9WvR61aIlcqcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrlSlqLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrlSlqLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8018C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735979753;
	bh=ygWnCA6nCYqBc/kxMpfd21d2Tsq/KRh13U6ZPP4gK2k=;
	h=To:Subject:From:Date:From;
	b=LrlSlqLo6fj1i3a5Ndn7iJ3nAoXtTFpLMhnmO30as9jtEzhOiyWKdIvh8RhzI2OsF
	 g8tnPCwcvc6/sn2YKJJdvxDELbkVk2XKsuDBkGlxAu/5BaJcZd78OAQXWmgXLK7fpN
	 C1CTRebYyKK5qTOR5cD4Fb5ViCpoNDHMNVoCuC+dsAaf4CrQE4aU8UW02CPwM59BWy
	 paQjL5axbMtwY/hfuH49siAE/Rs1mjQbsLuWwpU7Lh3CXKxbJXCbECxG83StwAkqfw
	 8DwcNIkU9lFeW2GHVWXOK2km318+LXvi2YSUkHew5y4uXYie42S0CilL9F8bswytto
	 lI1/GzdopibLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985FFE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597975358.10459.15409105939654848818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df4ac49bedc898efd359346662c360efc1ba7c844680e0010bab0794c0c6550
Date: Sat, 04 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735979753
