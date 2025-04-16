Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F25E14B950
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744841394; cv=none; b=uZukPhteXo7OdAsCbmGrPXQ+e1jYr/innGavS9H7zY1jGXzNm3vy2BqqUeixQb1m3EgAcdJyXwcOz6Juh5Mgix3YNQnDi/ZSVPp4l/jwfKG+XOEW0T48iBqeNHdM6I2pd/mv/5M44sKDDi63cC0DcjiYFZeAf58PUvBlopOYvdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744841394; c=relaxed/simple;
	bh=/T6PGPDk68D7sfIZKtpdwuNte3TDNTaOhc8Id2LcC3o=;
	h=To:Subject:From:Message-Id:Date; b=IELIf23CRbYG6L0ISgIIGEdLJtPAIminbeJCLmyLz9KM+0DyfiO/dU6MXuAbysB6X0weI0WIzlnMVEb/4JSnTCLg/qoGP/hBXdKx82swnxH0vDHl/R2IrNR5fYK3VopiEwkIdGXrNF6flfopGsZoSM0fg14ER2Nr/Gvrxuj2LXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aqpju8tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aqpju8tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8435C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744841393;
	bh=/T6PGPDk68D7sfIZKtpdwuNte3TDNTaOhc8Id2LcC3o=;
	h=To:Subject:From:Date:From;
	b=Aqpju8tkTnORF4p2SRRYJavRVuEEeGocDOuGTJASLEyFQYthkCwDjnppArEH2B/rR
	 03X30Q8jhvDlRhYn2ElqHqEinxZ+/fwX8pbkwUPpezdj3DHgIlj6oX7IHEZtbkyHBu
	 tvRecVRii7EnBpwfxrXLxpO2l4Bt1uW0XXDAzClErSmzS/b2EbQiTaYdaPCDJpj2YA
	 wJw1u+bfPUD1SvPa6nWQrd31BKbqX/irvqShv2nPEn8lRhy+ReFi1SqR2z5v+TT118
	 qs9KpYQIzesklMLvAgccEZSYHBuTkaVHd6yPVpcSnJ/5Ie1k7W7eUIVdz5DQKkhXDF
	 nTNz91GDFCXmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E5C369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484139358.14694.14608227681191287610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723c561377de4388311972ae387c2b336d385d4d87a124fd5dd9e5d573e75996
Date: Wed, 16 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744841393
