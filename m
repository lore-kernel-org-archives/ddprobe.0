Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C25E3F1ADB
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785281434; cv=none; b=o5VPR2RnGZTgYZ9cVHpYKChu22A4AkOJ43F0uIteZKje2Vxf8WOYIz049nRNTVFwCQoryaCfWoip5kL4fDqCIcWGH3qhGAj12apKZ1ry7cB2fqYkRcFtN+VuQX/W8P0mi4RfuGbPu9Lt/Q/Jvekx8hk3dNlT+PW/1Ce92RBFEKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785281434; c=relaxed/simple;
	bh=o1vjhopXjQyxqWKJF1AIXf7kH0Ixr/F4LxHkGU4go4A=;
	h=To:Subject:From:Message-Id:Date; b=pm1sbevLQG8S93shCEfUuWH5ZVkUbLW9AC/BU5BoIff2q9EM4gur7rtfN6HkmOjQbnpJuZ41HTaTFnv2Trjq0mswhZmN6RM8cA/LjEK7BPOF1fZ6yoL2P04ZjYBGtRuRPsQvNyF88oD2bZCixXWMvrmEJCCHcL+tuOvrEWT4Dyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dwl+zN7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dwl+zN7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14F1C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785281433;
	bh=o1vjhopXjQyxqWKJF1AIXf7kH0Ixr/F4LxHkGU4go4A=;
	h=To:Subject:From:Date:From;
	b=Dwl+zN7NVBjU+NPWkuOjvqPhuLer8/NNoJkcJPuSOmIcpRm9tCWRx8iJfKic6YExE
	 ohTFvFEbv78+K6KtGUY79Bx1rdarPVNe3F2UnjJBggebrMGGvn/0NEH06OrZJqLQmu
	 JHj6vDo483fiEijgOdNeonwEorMmY4id7Q9TXV7WBY5l8MoWXMPEn/jNGtstIy7W3A
	 2sdwYSG0rYTpLK4zhx5MZbQRoU69P+4P3nWlFCG8MFtqC2FNO6ZvGeJ4F/fflmHaE0
	 S4wIYrjvIH5q7yKLFIB6cW6eDx0ZNQ2CoW8vNLj/UneHZHThdqO4j10rqWgNB4B4lA
	 BUeQtrRum+Smg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB411C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528143368.25529.14246769818797270847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f24d956531dddad80f07bd979e6390359bd5222038e3ed416560db00383819
Date: Tue, 28 Jul 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785281433
