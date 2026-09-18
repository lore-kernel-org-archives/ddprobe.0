Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C64D51815D
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789749634; cv=none; b=KKB4pUVzn/0Uk2+NgRNz7RY/uUUi+QNCwJ9iMzsze+kFwrPbu/SbKzx2QyMITaQlG4rWokDybmZb7x2nj66055roTAJRrZ5r+WcP98pvdHky7YG2LvZBEAVbQ2my4ITPzcVbO/8DuvXeO5mQtPDWPBX13U4aQPfdJ9IXZCIuwg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789749634; c=relaxed/simple;
	bh=SS9lW5N6Hfx2wdkSJaGOg0gpOIvsxkFS295b9mUyt8M=;
	h=To:Subject:From:Message-Id:Date; b=VROitKZyuwgZ81BlwBI7xXPYYC/Ea2UXUpMER0PzDpWHjLZ+A+5TOodlCgZG+qcj61yEGSftXMy1H9LHttRF08m6uoX93lGiPqs9wunhAO4Z5PH7kLbUxgMPnSm4g+PQq81niHpela2ivYpZJC5zNXAGyqXwtpLzN9MUljblI1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O70kLWpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O70kLWpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7102C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789749633;
	bh=SS9lW5N6Hfx2wdkSJaGOg0gpOIvsxkFS295b9mUyt8M=;
	h=To:Subject:From:Date:From;
	b=O70kLWpVl6GJZoJwSCp+7rjjkveHvE/o9QEkIRb9m8CAvkzNGu7dlDWWVhRm2nrBB
	 ZfKKZSv3R4u2PJeXoSt3IZ8zBQGU0wlDzFIDjfk/X9oQIZhh/+Oe4ZurSkelF36eqz
	 ixvOA3cfk81xAPhlc17BjLG2ChOXdIXkWp1ZfWT1cotFWDPFMpR1yD8LPFQqeWjCA/
	 MWolYAVT0xOOmanfpsxfBmLlcoeEa3bJ/T4oPWh42YTreB3Y7b+pIz70xu19mskG2G
	 EcxtXDAKBOerIaurgabbGkoMJ/LX3ctyqOIzRmPV+TrwtVde0BjQw69PgG6R+wB9j4
	 u24ALaQAov9bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E33C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974963372.23146.13872532362444736382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf6c37c50f76fdbc8ba727a6809b324beb3c2a1a7b9f7565683edbeebda5be8
Date: Fri, 18 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789749633
