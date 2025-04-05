Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9101DF727
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743857394; cv=none; b=M2oZ22JP2pN5VfnEUd2R4og4ZmXbFObiY/7nB/v/JVyeYdxvMCftMMe2ILZrrQk7n2ohExJHuw4lgdgZ+g4IYSynoMglrsqndzAEtg5/Uxbc87wQfm1edsPBg1yy73BDY2wD3h1HSJFSUjAEda6IK3pCq9KC0ZZ6HE2P9DGR5Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743857394; c=relaxed/simple;
	bh=MQ23e86pVEySxYemwgsjU2LdDa/o4qYUgEv0vzRY7F4=;
	h=To:Subject:From:Message-Id:Date; b=hNxo6Oj1CsydvwzH3AJDsOgYb2/PPYib5YaGN6Zj1cgVB8aJ7cSB9CU/7fjzxqTYA4THijcrBHmuI35Gcbiug4J3TzLD9wlGXdGCKhKASETx68ex+h4BT/hLgfQU0w6KhJyXTkwsMkdDHUsxj8tUXvw3ed1z1lCkQN+/vMMp2aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WX2PZVXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WX2PZVXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEBAC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743857393;
	bh=MQ23e86pVEySxYemwgsjU2LdDa/o4qYUgEv0vzRY7F4=;
	h=To:Subject:From:Date:From;
	b=WX2PZVXIDva6kgF3Sx3T7JWJzW4RkEszSa5Ff60aPysUMYrw/wRuauM+VGCiLVHHz
	 JehcU3LJ2Hdxo3Qd5k6OC2dxKSWLASY2kiWRikoUkZZbc726dYdGoF0wTH/8qeXM9U
	 caJt8epYlQJpJwF1yX0+iU6NyEpgoXWKiaS4uqjV9SDginJAXWpIRIv0jajYYnq9xg
	 lYt+PhjUX4DaMb8zIFs524XX1r17nSKRpD/j6ZfXTIajxmy9oPGjkLvH4vZfo6q+8a
	 p26v45+izXlTKThArSONpThTek+pc6eJgkIemDo+sxZUjqhICZrqm++3ewCbQatk+N
	 VSBwKlsKJClgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F20C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385739361.26275.16520836874283268502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f8c62d42514b5eed02a6663f63e76b03b63c7fd9dff4011272c94262ba0ce0
Date: Sat, 05 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743857393
