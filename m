Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3054C2C15BE
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784480314; cv=none; b=YnawJFrPaPQrnvv77dtYnJ+EwfNSMMRrCOb1lWCLZG7ofSr5eaQ/ExmsUkipYMvXy6/3pojCazQvPYBMmNVjAZN8gV1/hFDK5vuMKMHcr7BiwLyt5VtfWmFhGwvq+qGSSpEmFTye0OJ4Lqqs/pALtWl0tl0t9qieVEAyump1yg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784480314; c=relaxed/simple;
	bh=gDM2qomWypQ/yk8v6Smwfn4+V5bq2fr56HE3mARIp8g=;
	h=To:Subject:From:Message-Id:Date; b=p9x9kuKCAvDzk7bnkFqiIR+EwzLQqk4LMQpJnZ1Ub4kLV2DC3GjdmAV2/RGsLCXDdQu7SYGYliaEopfEv5da/CshBOxuifF8vbL+qattpPnTVzukoHm6j5/9Mx0aEp8ZkZXloGKHj0c7tjfhU6damdDPGiztrHjcDmn4O1mJ1KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PO2onONU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PO2onONU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAFAC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784480313;
	bh=gDM2qomWypQ/yk8v6Smwfn4+V5bq2fr56HE3mARIp8g=;
	h=To:Subject:From:Date:From;
	b=PO2onONUukmKOtQkuut6TkguLR5v+zwyY0jclSucmPEa6Emx6D+xlTV4h0IUl4pH3
	 jN80Td/WlDNXw+TccjDiJV6U0/FetHuvmN5nSxkccQC1QFPPYoc9EdXrJwSzt+wHkV
	 jTZO1aKWLrqiU2hR3llV17I7otBA7UvIvetagLRgfcZSZy36IwD1ZIknIv3sQqi4X5
	 FJovo3ICOl5oVe2HjOMb3cWyF2p8N4MnF7kjQYBbRo399ihBw9xxWoHXY4GsLbmDAE
	 SPS51o5zIGpaP0N8iyJZ32raEIv3j6bOx++2SYOk9nPLUJyrFJyG9xrXtMBTKxE66f
	 SpKBJ50vGtaLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB604C4451B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448031368.8525.4490797720377048632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab93ab9cf6cff3875edcc9f4077e5452dad526a5546ba9b489e24457de3b22c8
Date: Sun, 19 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784480313
