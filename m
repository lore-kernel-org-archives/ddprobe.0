Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4F879DA
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790814636; cv=none; b=dRUrQUxQev/RUzhPbKZkpJiqsvfrhfpp1oZkt4PaqpoEqJ7lxEHPAmqxO0DSyHuXOS9iayKejR8vJ0xs1bKS+nF2wgKkh1SFhCVV6bi+h53XsJNG/zlv0r4apuf06RNcn99f2nnJ/kwVxfjhpdAuC8CwXCmYricku/5kFAoTZNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790814636; c=relaxed/simple;
	bh=nbfjPDHyICmUi5RGQKfPcswbjVw1IFSkrGEfaaZMeCI=;
	h=To:Subject:From:Message-Id:Date; b=ToKpJKKUOcFdM87g4sONgL2qoulQINjUOAEvbL5YwdoFoXtiH28kNWPvpp7XTOhUGsQZnRH6R8AG06I3TB0d1Tf08ypa/iEh/0Xg4ktTI7d8oxxl75+Devd97eedhVvBU3Zlbho08iuck8C939glOC2KF3Rx/HaL8sCU7yURINE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBQ+fuho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBQ+fuho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3218C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790814633;
	bh=nbfjPDHyICmUi5RGQKfPcswbjVw1IFSkrGEfaaZMeCI=;
	h=To:Subject:From:Date:From;
	b=WBQ+fuhoPGJLtfOATJUVXmb5Ny9L4moQnWg8dSxcC9MoXAhCLfX4bQya4dGgvKUrv
	 8KsMZyTY3rIslQ5dmr2I/filfAgX0ALH/jGF53t8V/DmEeItuCQx3joDlGIse9MCZP
	 p2W36+OSfrJjAY2HrKF2dkfHuYhnMQVzcOzt9zUi1Ly7DqBVZkghCSs8herEBt3U65
	 sssMtXlTkbFnl79J92RyrEeuQpdrbI3HuFdGuXlEIq3Lo+WE6uEwjjKSg+29tjwdyH
	 uUj5YvL1vLpaq+H0k+I2Jbjs7veodzbLoRyGuz0o/m39xme8C8ev/y9WM0f8ZRbUxW
	 TVEMT5njRpBjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1825CA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081463369.9497.3422681104591352977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ddb6e35bb647486da49cc148fdbc57a93b3179b7a88d6e86a7b8a6453c6d716
Date: Thu, 01 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790814633
