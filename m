Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D7810F1
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759470594; cv=none; b=fm4UEJ8+oH9sQ8U1IGRAu7dWEGyqsICBuRPuSYXv2E1YDMV1tjYYpg4vHPFGSGvXm8GAnbZTp+eR3ojEbRibDFKA2K65uUM2+sv9BBD78Uzs6PlvUAuZt0AI8i2P7/BGqysMRiXbJyMJouYPlzJBXdEa+6AvixQWvexOHjSUElk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759470594; c=relaxed/simple;
	bh=uvvLZ855kKNHSxMvPhbWSZ3r0dncrHktEETIpaxjY/4=;
	h=To:Subject:From:Message-Id:Date; b=ld82VrD2fUim3j248Et8G1/dWYP4mGORZlc+nZRHlzsnd9/Yuu9efETW/xZ74ThDZTVIH0tAcbkOLjmdSJSUEDD1eh650NDWJrt90qf15Gp98F9E3pWYprq4RaUErPK4AdvA3dZ9mPS+z7i6gbezR50LCWcQvwCpq3O18zE2CAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5F7eguO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5F7eguO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A155DC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759470593;
	bh=uvvLZ855kKNHSxMvPhbWSZ3r0dncrHktEETIpaxjY/4=;
	h=To:Subject:From:Date:From;
	b=h5F7eguOC/mwNC6PWiobDoTb3EAcfyz728Ytvg3gtMPtEQgFMDlObnCiRTCT7I5kl
	 Cxs2n5OtOvvWT3A6iznXfEXh1hAtc8EKJetalMHLJTOL49ASDyWYJ/YrX6Hq64UCKg
	 8cR7VhPBk2SQu73ufgKpFw4pYBLOP5bz50KaEcme9yUioaW31ebw+C5PHZtLWg9BXg
	 +Uq8rNdfayUrl++e+Gfo0WsGquw8XYifDo+vmNGgsy+BgFha3KROM3JuQbDoAwcAcA
	 ebB3uULqrYdZT0ZRmhQoKtKjDUOWaooNO6vPxjAz+b/DKcEytsMkclM1kz7x5Ef7H/
	 /hsDgjupTpNhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C52CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947059357.29365.2268083282332223812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a33ff5ebe6c9ddaca3dff829da344f2aecf1da9d1246b515f82252e8a93087
Date: Fri, 03 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759470593
