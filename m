Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE717080D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747835394; cv=none; b=F+7SmfD0b6UKztz0c2o4qgHDE1fgU6Vv3mSflphvfb9nKKoly95HXE7MOnJp+gqmnIZCC38UMpnCBaER1+rgGq9W2YQry6RCuCsUrK5Y/nOIlVIJmpkGUsT+EW0AuBU0Nm4ST38wBcbDL2MOlHtMXgRI6XjV9zyO7onMm9hhQ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747835394; c=relaxed/simple;
	bh=hE68gydL8YNuMAgscXqOsKy28++XArTlKpDg1AnW4x8=;
	h=To:Subject:From:Message-Id:Date; b=AiHKvh2T3EiZXHsZqboqUCSk+chwW6By10Gnd39kcXCDEgz0742++rxhoKXDuxq69AsYj7VUpSb061yxPc8QomTsAqIRBC6otHoFDK8HElUu0oLDx3E8PlScxMNhDubEbr4hTFzdaIcz4pOD/xv3nWfFwn0lV67xmviJeCyce+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAPGmztn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAPGmztn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1586C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747835393;
	bh=hE68gydL8YNuMAgscXqOsKy28++XArTlKpDg1AnW4x8=;
	h=To:Subject:From:Date:From;
	b=DAPGmztn4P8w3ce4s7LYeBsLVIKBpZhA+Vk2feh6UNME+mTQZyBJ9+O570r2FHWsR
	 UQ/fLmluh4uz1YkJ7XwSQEQV6gvbFeyObJQ5otQDbG9G4Qatac9NVKd1PwfjCak0Vk
	 ZRoUNlkuMh83Dy8mReiBIdVS/SZ23KhZQk2i0xT4B5C61aBnn0cWbEeL7c2zWnc4P2
	 lVxsWa+nl4RDU5+UdoB52c3sGrmfKrXdZHRSVEFVT8dTwDYs93IXkNFgDsPI2p2gEN
	 vslOyjAdE41QewkshFrOFtUI9zl2MVoFZdX4iohBEwj5HUJ72/+HyNZPOuerfYxcK9
	 QMOPP2P6SGkRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F125C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783539357.29900.5202255403772423946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77663b185c715088c21717db9d4be4719ccc31ec2de1b7a50a1fb29584e14c0d
Date: Wed, 21 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747835393
