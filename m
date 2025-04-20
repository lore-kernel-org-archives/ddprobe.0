Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE1048CFC
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745116794; cv=none; b=D21xF74HLS7PvSTglCPgGK5BIBDp9PL8Y///bxHUKpaUARDDyLk51d1arGfJqB7YXyfd6MFmPXFlGFLscvugMTOVwxRaAuvs/Tuw3z6AUzQv6eS8gPsKitOt4QkXcxadrfBbCAXlR9rfb7hp9s51xKA7AwNyFwwEsVXXWTuEjzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745116794; c=relaxed/simple;
	bh=T7wuqAIevf6g8RM5fnsksY5Dq0CnnCTyk18nKXkGmtk=;
	h=To:Subject:From:Message-Id:Date; b=X5gYT45tHXZmuiOnR9eFvy/DzdMrtvJeMhbSUX4hpTRqzT0ER3onsq/Dtjgen90wYgK49YnRJYTKsqDnwDZoR7roXITcrfCt8kcs2Ds1ER41/cozKRmW5MKV245CoBHvf20hGbq/S4ckKOvGsxvbIPGxO6vOGOS3H+iZ/E1Z/24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXiHttAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXiHttAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB36DC4CEEC
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745116793;
	bh=T7wuqAIevf6g8RM5fnsksY5Dq0CnnCTyk18nKXkGmtk=;
	h=To:Subject:From:Date:From;
	b=dXiHttAJn1q2ZxgwTunL+ymo1BUJitEkNNePG8NYVWnPI/5v4JoDyDjt5akp+Tcx9
	 rruZdfhhK8lpT2jwfxLGM17pfGqNIPrvbRSQxd7kWvBdZY9crid94VpqvXlDSkfHOd
	 pfOlJA8EnDWtzWTWqlrupguBhyGPY0uFdwQpMXQZ0suSF0UG2Ppo9JQ5BQxMCnasOV
	 7+wQhOcXfvUAxC94ksR7DDLg17hfHU+lwGUFKkoT/4MpDwLOnQHkOCtWMGA6zYOL2Q
	 gcpGo9l8Tvc7CoG3R54+sDjVVNvxVRMoRE2R+R45gMUFNxfhf7siIzJ7CtQJwyX01C
	 BpeD9kDtbiPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19DFC369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511679363.15658.5557686822211734804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6be680d801d3067472afdc386e3ba840582587cbc1d0583abb04f7977cad227
Date: Sun, 20 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745116793
