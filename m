Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C03C2D46A9
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771395294; cv=none; b=C4lWYSXEOQ8C6c6rA0KJBtHuYkVpl7NbDWiThj2wytrOMOIyAk58xLpJ2zRCaj6BvNCKlTxHd5IicEi7Ny+fcAMb6stGDZh5MEu7XxtuVo3WhnEYsGVnFhN+hHymPGe/3oDU0MrECvsqROlEkvQ9mledNdDBaDEAKcn7IzRipc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771395294; c=relaxed/simple;
	bh=v065dplo47W31UzXKtA8EcAhIfPXpXCT65PFkp3l3Ec=;
	h=To:Subject:From:Message-Id:Date; b=oBBXeLvkNzkXaKhoTlivSyRQz52vPSA7y1wqaKS+aS4QaIHc9IMaOEPvk59MOuHXWO8uAKHAhLHsnoC8wsEt5zmEYsySuTXjTtWeIy8JJkxLbsi3dREvTNdAyGoAGH4yXrXuEpLYCTCQSAGHfGE2j72JUNJ0yaEXZ4yJ+dHkWR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vROMBXsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vROMBXsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B113DC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771395293;
	bh=v065dplo47W31UzXKtA8EcAhIfPXpXCT65PFkp3l3Ec=;
	h=To:Subject:From:Date:From;
	b=vROMBXscPectg8i1OjRvmtnbc6eYEij8oSLOYNAbrv+WGYwtBiHaSA/6uPeVYm30h
	 tm3F0Nv1ZeOsCufzoEe5ZUZzuEbcH7pkcrbRkP1mz7KGlpQeLA3hMke+FHgBYJojHo
	 cu/L2mkzee0O5K/cOrSNo0cWdEUy+wy69WJ1tsp06rE3VLlE4uxJHQP646tvGIRxIL
	 d+5/jEN+gmldP0jvnixHqrPApnOpTrgWZ9UdHlkOHjxMoE9NzTl/eJNznZRNEeLc9G
	 9vyTdoQ3w7GjCTTmhPT2+Hqy/6l3PJaQVY3L4IFozmC8wjgUAHcKZ8QfF1PHK4j6F9
	 WsGHNzXPpkHcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A1DE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139529358.14941.2137246391167197408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d32ff9cd284a0cba26e6d52043f2d51c83babe0e61df1a26ed49835fa6d20b
Date: Wed, 18 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771395293
