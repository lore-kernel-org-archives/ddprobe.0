Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A30014A0B5
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718301503; cv=none; b=fLNx1cuW45K157lfWkyKDmPBkga8VHOOibh+ouV3YlK50CBY2Ioqn/gwLKvAL1cXb1zHQ0QXhIoWQvZibyw38lxsF9iEiohVdroBjEOPXVa5e/ueI/pulpJfc4qr4NDJtENoSEqQQeu7dOjhRRE+daDzjQyRaOprdwYrc2Ysu/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718301503; c=relaxed/simple;
	bh=86tgTwzlys7SeXtJGod/BWng/ujcGsev6+5Uoh5sGnA=;
	h=To:Subject:From:Message-Id:Date; b=fQ3qMYlIkz59uL2v74/BHUOj+KAG8KnqRC9N1WIpd04Je+qVKRiLFf/FXpRJOnWRaM1h9VCMGClpbHc5iuiOMZoSQjZQ183fDzTX3vppxq6vi8CqZiYfE1A1WqpP9yJaKgjp29OH722W+Q/h5VuIalD3sgMTAsfS7dDzNJwAwjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQdh8U2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQdh8U2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5452C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718301502;
	bh=86tgTwzlys7SeXtJGod/BWng/ujcGsev6+5Uoh5sGnA=;
	h=To:Subject:From:Date:From;
	b=WQdh8U2JbFiSG/iFYgOaU684bHF4Iy16i2ckDp/gStEnU9x1WNKl2RoYoWaMRr6NH
	 AXT/+Ssygxc9itBmZBuCRJNpuCDTSiqIubEkfrSfvbJQ79e+Pk8l4SljUBU1eDWFy0
	 NvbeZrgcdQK2inXfTglWHayo9biKtRVrgdjQZrcUey226bbgXYi2I/OT8VKcBiE19r
	 IOY/Tccm8kMqXQaSE+k0+cgmfHeGCooGABZE77VpHy1aTTf+xddgxfA8o0cry3Q7mc
	 J2/Dm65v5KHGOvnfV4jI7WAoXZkGnyZIa7J4c2tTDLZFH3ud1+mueApnyN11t1hQRK
	 JcfVXFnD7QZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE199C27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171830150282.11204.4218505061495273973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4bd95e70d86d28f67fb826a4af7436d9db3ae8596c09c630f376853e4ed1dc
Date: Thu, 13 Jun 2024 17:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718301502
