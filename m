Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471932F3B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737612954; cv=none; b=ei3EiS1wyU3T+6+SJd3Bu3xEzC2NXYHP+X1LLO/U+BCHmJEygnfGLulALw9/ThsfZvCqhZVl12urkvhP3KpKeU2NgAma5au2+DkKzSwSDTWngB/6jrEYhcFprHjdlAN1OQM9LsY8akzW7dn8j9jZ8ZJFEFC8KRPUHD216tc/Yrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737612954; c=relaxed/simple;
	bh=m+IHNBaVzDYUpR7yUpvE5QWCgovnmj8Asj1n9vX1byQ=;
	h=To:Subject:From:Message-Id:Date; b=dtC3mPiSXn205zX4b7jKzSyY7JnfeCmKPAiVKaABp+QVZQzaNudOnEBbl3Q6erKhc2AxbIjEwfGxbGVba6ha2IMZS9kVkafyE/P0K2MyiSpF9+HT+3vjGOAS+NF5vzmef6asgxoyB2HNtF9FaQ3WTKwwGcvdKRNRAXiqO1dTV+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcFm3PE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcFm3PE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FA3C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737612953;
	bh=m+IHNBaVzDYUpR7yUpvE5QWCgovnmj8Asj1n9vX1byQ=;
	h=To:Subject:From:Date:From;
	b=bcFm3PE/E0hwE2iV46JR3D70UokSl/V3p8YUKIJp61RYd1A9vO95djQvvC+a16XSY
	 sAfN8DAYxjm7VNCZEr1lm7E/FKivv7O9qGj00Kpdqyp9GTi/K28RkHts4WN5oOP/+S
	 SIq4nUCPXDcp7soUMmRjQNyhsAkGYmxrJ6X3f30Z7SF+TFZRvAxU0T7F7HeYa6EaCB
	 YnxYoJwu7j6Yyq9uuufPuoae2iPjtje3qZWYDFCf9q4PmYWEMoypN2US26waDjV/j4
	 CCCOtnai2OUUtH/DPZ8yW1f49hCxNrb3gOYb7mgpoQKKhqdT6JM0x0osv4AFBRU5zf
	 rThJ+w4LcAkHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B90C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173761295358.28855.9322576521162999497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f6b9e0c6d090e30d5d30fd455b05cfe7c907bc52047ecd379731c9594b56dd
Date: Thu, 23 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737612953
