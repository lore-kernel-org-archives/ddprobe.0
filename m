Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F3B15921D
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727322354; cv=none; b=EuqITL8ii1gWSm8mPQ+W6FLeMy485Ab6ObMnT3awMVVjiSENKKbTsWyeFdHinX2a77M8eKUJ5ZCJHLMKoqptYQovGnY104N7f8zCMI0Y1Qu25sVSvIK9WYDwSkAfwznkkOP04dnXQkJLwjoU4p8KimE1wj5gBoxiF5ZA2+U/dzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727322354; c=relaxed/simple;
	bh=C/m74Xdk4Jmmj/XToEodYMVsVelnrz6CgbBBM4OZ5Bs=;
	h=To:Subject:From:Message-Id:Date; b=eMb8RBqKs5pTNZphLnILLts7g55e1a5tHqETtMHK1azO9FJa4oFPJiPQtRx/1Fna0cbq7CwuPbtAsBeglQm3mnJ7tH7l/rVdEoXiXhGTnBvxeo1IU+nhBuARwMvfapu6h/jHvWqv2berK/L4yKmmfwexeRaitAOl1YYCQ04/FGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7uE+Izy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7uE+Izy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7249C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727322353;
	bh=C/m74Xdk4Jmmj/XToEodYMVsVelnrz6CgbBBM4OZ5Bs=;
	h=To:Subject:From:Date:From;
	b=I7uE+Izy44Q27G36PL6jnyiMECt1FRNFKyOC5kIcAfrVqJoWexWyzqfleWIatB6zA
	 qVw/dkduPJYNb/F+Rj38dsavWgYwlDuYEn0pMwccAiBKUjegmsunGFxpCt83HF0/bo
	 J6+kbF83d+wwZhAZ1GfeoGzvYJBi2HcLt2ltZI3H7tbMSvB/KTFW9fogp6LMhXek/z
	 Kbx4A71m3j+4+2Q5zB1Qpw4sAmb/uRBGNL3I66gIXiUzgamvzP1wqsKGvrQR0kDS4l
	 xA3lBggl9L3gxioAqOUI7fm3bYxlK0Fvlm3oPV2M8YNCTtXg9u0BMy0bVhn4qcpxhP
	 +VrkrSiqfuBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE18CCFA15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172732235357.10202.15184113361644871281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e117646d2a452d79e4fd6fcb6bcbec08825757b4bce8407c1a78a4f99bdf9b
Date: Thu, 26 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727322353
