Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549A0770F9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719477863; cv=none; b=KwLgUrAaYgelccil1mQ6JkyiqHI1QDnwtxBnlOhIDgEj+GNjNbravl+h2F6MCferxDUugnlJK9ZU/0wghCb5FEZPMNRoX5jTmU2E/gjnVwkCmLS+DxI33D0asO7utQs8Om22VfOGD4p15uxrhaS6hV9SuUucCMzfG2j3g+WpR/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719477863; c=relaxed/simple;
	bh=JcmMagiv4Xpfya5JRcFQrIsn+hXBx2s+amANtwwDp0A=;
	h=To:Subject:From:Message-Id:Date; b=qrWn5LPozrjyNfeew34ou/Ow/TM4vKUP2Y1VNDkgdFexQNwzvgs+eWxDPNoh8FE84NQ6CpEnF7RIx6RTvSjYDTGaV6cZcBau8i2mV+0Jm9bRtkkusfvC/EtCJMCQqqZhI9hgP9bjfAGKibBAKRu3WIGm4E3p4ipxeavVbhL3UJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Muvai5ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Muvai5ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B15C4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719477862;
	bh=JcmMagiv4Xpfya5JRcFQrIsn+hXBx2s+amANtwwDp0A=;
	h=To:Subject:From:Date:From;
	b=Muvai5ut+Q4EGP7gn15+47sEv8A7kKpNfQ8Z/p9ofZdLAN79CcJyHHjgjc2ApEFBE
	 YjcHLwJgBaNga/RpahaNinfQFfLOWc3OXdvv5p4TjGq9rurP8TmEejqYhaD2ZMlTDP
	 LIxj5QEiDhhVcNBLdpORj8EFwY0x9LEWguFSexp2/Oqz+FHaOpVcN6zGJNf84omC6D
	 ayMfeNXB29kjUmzZL+gidYt8m0iyc38alXmySrddw3/wUdtRpWhT1V8hjp5PiJEuvC
	 ceO9Q4ZrYYXngdAbMw37erRjT0qdki706D5WGwcuyuQB4pzDPtDc9VV0DLiqbx75z5
	 cmIwvJr/JZsVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6351C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947786280.2530.2293363919487947069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db480010d7b8098c6d5f3e8552d8052fc8af4dd2eaa69d6c089090870878e447
Date: Thu, 27 Jun 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719477862
