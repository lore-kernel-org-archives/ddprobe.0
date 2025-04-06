Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5129B3597A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743972595; cv=none; b=dorB9M0PVhzNCxP1gwPuEG6v0xpZ+W3X1Z+TGB6j75hHpWlDF2uFayADirnJcqDl0RBZOmNPWxY9QInP0c3GNJJHGbGywK1VVvic+u9sG5jyq9XH2WULIrJ5LOqRlzA6gymEZRNK1eudtaYX4nGgo6232Z8aU7UTn866JFkIPc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743972595; c=relaxed/simple;
	bh=wEFTDleRdizkAng2xuiU8T7jeeqaG5eOi+zpiKiHAdI=;
	h=To:Subject:From:Message-Id:Date; b=iqHc7VaeJBMQ04nJcsIp8JyAWVT/aT6RDFy75152cuhhB8wXwEW0rq768kW3i5Eui6Qvg2U0SiyaeBx8u3DgswyptERFgvbBDM7kN3Rde+NglN/aCatPwwplKtDmSR8KnUtxKvX9NJZqiOcoIoFpOIdk/20ZL+AvbilTf/Ytq/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ch/IX5Kf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ch/IX5Kf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4721C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743972593;
	bh=wEFTDleRdizkAng2xuiU8T7jeeqaG5eOi+zpiKiHAdI=;
	h=To:Subject:From:Date:From;
	b=Ch/IX5KfAxF4spqrFQmnkRnF6PVEq2d6IuuUvHzqESVXbymVzSM251z3+7A9J85wu
	 32C53Wya49UQHTowdWinSCOULn3KmG//uqRy39ih9Pm6UTXbSbaGEljjGLnOBSRvoQ
	 Pk96UN8WWU01U73lM+gJSyucm0B3sMVKikE8SjG3I/JA1rgZ81INtsSYYhy4ItjQMz
	 nLJIUqtfSilE9kir/gksgZzQRJvTZejIwFXLF5KMKnnPHi1qDdUAWf8ZFrrPnGehc0
	 0dM7kEkpSSgNWJW5FBK+GedBr3FNNUW++7R8+dfQZ0FWunCv6iu1Gesh1xhriQyudI
	 z2+t9RZ5q/G2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DB1C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397259359.19295.5236766885114202625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f547180428cf8ab07d9dfa91dc6745b7cc09f4dc743cf56f7fe93d9d3e4f8c
Date: Sun, 06 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743972593
