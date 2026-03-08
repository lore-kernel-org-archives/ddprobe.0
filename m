Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F223921D599
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772968494; cv=none; b=iUHKgmFEVNwoc11Z8vGxcTyNnBJ7d6FLNdymdgfGIn/Zu8bvi6Gd8TNB/WHYn1ERW+bwvEh8H75fDSsuxfI+YazySHKI5SovdAasBB4WVBsPm71qEYTaVZ5PRwt/cTUTCsCpHJCaKP63DIz3rmETvxFahMKqQStu1atiqftZegs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772968494; c=relaxed/simple;
	bh=Q/4PlO1f2V5htGC2C4hhvaXhuecRhbGyorRDSUhiXJs=;
	h=To:Subject:From:Message-Id:Date; b=enbomb8d2Vh2abKOYiF8Sb4SCIdczK2GXDEa+dtPpVY+VabKVDZ/pQc6jKbb+gRZbUZ5aSBuHDEunQVlSza6I6Xh7B2MlLhBkonvI4Q7tYHlmgJPReQMe0/Xbl7OpdpqREG39G/ESsEEbFMJuIaCV6U3bL09mpjyzkHoZsBRWJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVOp7VRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVOp7VRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E5BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772968493;
	bh=Q/4PlO1f2V5htGC2C4hhvaXhuecRhbGyorRDSUhiXJs=;
	h=To:Subject:From:Date:From;
	b=NVOp7VRxccmGRJKQ7jFK5Zai52JlEe37FFNCm8BmXdJmRGB1ts4qSWoHQ49Tfwy/w
	 vtA0AkaWX9oxDQzQxkJBJ8auL5XMpY45YBCi0FW5m+6XQXGj6HaKLUdulHzN3X17CA
	 /ezThXSsvbuJz3+HUNuNogRGYAxJrSqwhiHa1STtPL0i+p9OubPDv1FU8V7RY1MY3F
	 /3sIIEcgTScPq0M96MS+pb3KH9bzMoNjTKipqfQ36hLfAc2/AmvvKgWdF6OmT9+/dY
	 oZgiqZsduHeNUZwvpJF9V9uFgAGfKudUAG6rJjjqbCPRCfComOnpxX4ozyUmkICrMv
	 it7hyPdUDlW6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B4F55102
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296849357.14804.8418548022012309717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725c9137340d0202210c48353d9d01737339824d82d82ad81448a2b426af7e4f
Date: Sun, 08 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772968493
