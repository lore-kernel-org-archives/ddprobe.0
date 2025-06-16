Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7545E2E4258
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750075794; cv=none; b=sLiu069VeHxAOktltwHnSJf7WF1B47GNJTbQNqbOYp5MWTSxvP7+Lnf7/ka7DIlmJg9ff4a6rB1PgZH3Za7EQvDbzLkNOAqco/Orx42Px16fUDPTu8iBO7259r002ChkuCzYe+2POJKyABUws3CCpmq78zCG3xd1iHH5z7HHMuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750075794; c=relaxed/simple;
	bh=xFNLybHSgNpUmydbsXJEnICmxBuIh+9Sh/8qyw1CSYE=;
	h=To:Subject:From:Message-Id:Date; b=IxEAsYO60eCoRXH2h8iH2uOwpIvvVYBwPQSOecBuPIFWhN1TPXgTIReT/xVKjalJkckrew/JOeMrN+wQC8Kp0+dWFaRits6I4wloIZ0D/YuMxUqYVEPm4Kuz/WYaQUEM1e15OorMg5Nzap2W53ID/BbAM9ukbf/vFk5gp9eFgcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqLRqACK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqLRqACK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EC8C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750075793;
	bh=xFNLybHSgNpUmydbsXJEnICmxBuIh+9Sh/8qyw1CSYE=;
	h=To:Subject:From:Date:From;
	b=oqLRqACKUbK8BRbsKwTe8G007j2rlmxTbbArXEzkIig34y9s4K9LUurL/65IIPebC
	 xBybUIHYkxyHvTCWbmE+Eq1EoCqg/ovQUxCJKSeFpOfCCXn4sySWAq7+Pudb+wuI7u
	 GuQS/S8B6Ibe6jbtyQZ0C6kgwirsTSiG/Oswl7ubFfHoNeNkHEXo7kAFTE7elSFOoR
	 j0wvpvApq3n0TZnVH0u4S2Ac37uYaf4dqi7+qK9diQpH0Nl/fCGRYfANERjGaOFlnm
	 YVyDWtSQh1+S3mQVDf4v4lvBj2ys1AqCKzGoqP35b4SNHjwCrxOrR2wwyx9PnS/pCq
	 X9iQd9J5uHCOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2750C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007579365.27735.1022121124289007479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c0304b53458baabfea1a1630f5f5e55a898bf526711d67f02405c99e08a453
Date: Mon, 16 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750075793
