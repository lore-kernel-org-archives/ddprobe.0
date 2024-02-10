Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114C12586
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707533297; cv=none; b=Gnm33vIdbsa9/ZrqesTZ0ywWMtIebCKsRg1DViC9pVVAHGuRGc2l2L4fJvYRJ7F+bAGQhGnuPRYE8i3G3hK8BIijT+MeVQNHE1YuDGEtp7oO8ljjYYhFUlNP8KvF9NY9/+RPgDZPqahb4uuFO/pzkrBSq3iugMLVMGbQIhpPJwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707533297; c=relaxed/simple;
	bh=Lu3PD7dif3jME64v6zqTEx0oF0W8xFgc3u304Ho9ODI=;
	h=To:Subject:From:Message-Id:Date; b=sZisFRqwzOSJrcz3fbLNHaeqoqzf8tlipXMw1lWNqky9KdOUXxEE+J4tbbPFKc0rSYYlEKIRrCRJ6Gg9X0pTx2KsSgZqFLN+GJXP37xDLZVnzMt89V+GraGJxMMsZV+SFv/P94Tn8qgnxdGgjUAP6uryHeHYOS8TCXQ3gOPV7E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOFvyMEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOFvyMEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89826C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707533296;
	bh=Lu3PD7dif3jME64v6zqTEx0oF0W8xFgc3u304Ho9ODI=;
	h=To:Subject:From:Date:From;
	b=HOFvyMEB5qcHFrVlf8TjUln0YJn+E31/k6stTISONcY2RadcO3dJmi46GbSXRyZ2S
	 33AA5Cs1P/svxId0E264G5FIafFoVZk0tBzuymlGptyp160Ndea4+1l3m2jeRQUK8x
	 NdQ6Vse7cy3fYBZ8G4p50hh1qDbpMu9ItKFvoYO5KstcpYj9baKBm+BrlOU0F96RI0
	 uc1v9OSTxTXAa0MvAX4tz3rHo9BGVLicgv/DtKjx/wNLVoCKBa8kCFXRDC70Uqf60h
	 p693K2Pbj+Y58psPc+msRbLEB1TnEKlBcYsC8tWwE60Yke3pFmoV2S7JthkRMKOTfP
	 xysHzD/q84FZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8F6C48297
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170753329641.4177.9894998142434991598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d7f943ff1bf06d0e61253fa0c53522ee144f391f9b45a63db2f86a27a1de5d
Date: Sat, 10 Feb 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707533296
