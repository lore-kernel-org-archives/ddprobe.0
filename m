Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5DA18EA8
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706389097; cv=none; b=LwK353u1ph65kvHYkmj4TXzqo/yiFZHHVmYHr61AEua3P7rb3hUywyACSgs0K+z05Fg28V7RrRkXT0S0+Bn0s451URGblUaVprC8X/eERianJBMSicLM/QRPfhFQqN6zLHSYTijpQE70I+WSbY3G0ngPY5rwEf3ATBNkSNiGFVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706389097; c=relaxed/simple;
	bh=Yvzxxz4/X+n/8WiZkHYpm2gojCIrns4KcvCOVzprxhY=;
	h=To:Subject:From:Message-Id:Date; b=mkkQ+GKaqa7/aFEh02FkTauQDTJlYz5nGbdf4FtcgiK5YddL748pnDmWuBuVo4FCsFbAwt47VruO2e0W8BhDV28Cw11nsoVStQtNhF61+arbsa2CIIrelAsJuh/PyLrdLDYLlF66Lt1EiOrFJ7NEVtr6P4vGzZKpK8DvxLqmoCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQeCaqld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQeCaqld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA48C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706389096;
	bh=Yvzxxz4/X+n/8WiZkHYpm2gojCIrns4KcvCOVzprxhY=;
	h=To:Subject:From:Date:From;
	b=gQeCaqldCMQ/t4ikZo7OviZYnKIpPBZ6C5ZTw6Pap9/iIRteq4hLMFCcRU2i5URlK
	 oRODOjpVmHSxK0OSl/BD1EwJz6/vRGx2zyLuHcioP0KUn33w3RXog2UO63aVCooTor
	 Y8/3yPLcnDTSaUZg+5ECY76zm2F63ihVLRkjvcFI9+ikQIQZU3Qv82BP07R+HEqpSL
	 ROQoU/L5WWlfB7BvykaLCr0xjLTpPQm+PIkHqiGjjNfis/nQb4+bh5MKSYaSRZnyb6
	 XDpKSaaxTYE/PC2tEHexYjA+XBySKwsrwhO7P+XCG/XgkL5+YUoJLyrKqEtz0QplGe
	 fGB6BjWOdzObA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E5FC47DA9
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170638909638.21150.12776233719555225015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6452657a4429c6780225aadf0823f3f91deca850a52788292b129734017933c
Date: Sat, 27 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706389096
