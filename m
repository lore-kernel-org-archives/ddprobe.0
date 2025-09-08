Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4521F78E6
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757314795; cv=none; b=JNo38QK7i7b4FImRQqRxevLSpNz8/BrZ6SIG9sarZcrzGV1vbJ8BShgCiDT7xdVuLOA2bAMCckaq5l67iS7g2pR6Gjvzb96PDtylVz64ASsNU0emF4oznGNEvt9CM8gzPF8vK847tfTNXdib+ISoXaHqzzRQmSAs8AAueIUi0A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757314795; c=relaxed/simple;
	bh=KqTUqtIAop8pLgCuWi983UuN5ww6pnIrN+0z4IbqFIE=;
	h=To:Subject:From:Message-Id:Date; b=Fl1vrXPRrvS1bY8wqcj8sv4YcStQcqiW00oaqFceJr8SyOApnbvOq7tbauROUDWayibQQYFcpD+rNb7IZ3qeHc390Pw4tlOXxi1pnCVkmY+ipNxT6cxx+VIXTUI7Zu9krd0e0v8adn/xo4V635MXBJwyxUZ6icrP/xqqgmtSjRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll8Dv3N1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll8Dv3N1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2ADC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757314793;
	bh=KqTUqtIAop8pLgCuWi983UuN5ww6pnIrN+0z4IbqFIE=;
	h=To:Subject:From:Date:From;
	b=Ll8Dv3N1nV0FdpkoeSQ+q1vgUU+LQqOJlc/sTS1qsJ/Zr12r38pNzMQan7l5q+MeI
	 1Zzb+e0jG2xMT6W3QGbe/1vAg1BM4hRHp9+YTYtmwCn3P3ZI3W+XTWwwAbLof5AYv3
	 pd5MsgDmOldpe/bsWHv82OWWilc2/swrFxlB4lDdmVErzZGFotK4//YEeO73BswDpe
	 3l4MAWzSiFrQHnPKSpbtcOEHrdsKph88aNXRdE3FxcIpCeOpjgkH6XTKPLMACfr7m7
	 3PcSuKPgIia/G42F45JOGtDIDk4Zxx9BMaIw+wD/RDeZcyizBkZKMTAKbTag3+2zxv
	 P+bBAIRqLIEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E5CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731479357.13906.11623522069653453647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392a8422ee1ed7f5c992767e8133b1c5e2993f96e531ab85b590a81010f7f6d7
Date: Mon, 08 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757314793
