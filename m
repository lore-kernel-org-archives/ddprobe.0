Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237C61917D0
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753887594; cv=none; b=IghkxEpNnUF71eQxxm48BWcPUsLnzBUOG6xE+Paz/BnRHF7t3RWz4Hi5vFHHE/YpfGhpTCNhozlKnu8WYyPhIoBlMLSlgMVhi2pMkzTEYrvIBy/BBh3RK2SkHT9er3J4O1pDMQTTbYaXcNYEn6Di9WB5SRxo93bMQ+BHqWxTIVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753887594; c=relaxed/simple;
	bh=TaYKbXw1A6pWXlVP+Hs+Te1QpkAYy6VPufJUGGESxtw=;
	h=To:Subject:From:Message-Id:Date; b=T+XIKghUBUg/sIw5wRpqc8Wh06qTOpoBSYdlr2NKcVhLVHG+0Y7K59wzT8AY5XkxLp8oRywoPKLNYDS2zCLT9E6xkEAkX9wr0CNTtI0nmzJZ8joAFbwbSXpPRWqNluV1l5p9t4X2gHXJFJHd+fHX6555lOa+bCDd+EmXoF9FJdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOtQMvKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOtQMvKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C79C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753887593;
	bh=TaYKbXw1A6pWXlVP+Hs+Te1QpkAYy6VPufJUGGESxtw=;
	h=To:Subject:From:Date:From;
	b=jOtQMvKJ4XutscFsedUiYYx+MPyKn3l/J8jR2PAdK8rIcEcV/8RkCmhZN5GcEmwHr
	 ORw6U1M0bLP3rdLJTlrOPCa0m90aOWXnJB4x2sMJA3kNNbL/aIPoVEgdfvpUdEaXAC
	 C13Su4goYTHQrGs5Mh9PdbkPvI7NUrr3FASF31VbXGC0zYZY1/h5YiUSMPWt+hpC0M
	 MBaGKyhlb0l/jkK1A87BKE8ePDT5mO+KOm/fHzAV8sFcoNP+9wN7eIelY5wh3Y5LqO
	 UtwshqtfGQT/Iim5ujH4H6yTpDUVjmO4Fz7wYwyY0/Or79RywZgMJUxxILY0XWoBli
	 GcwaH2tjOWRKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962FCC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388759360.10491.4982629307189251580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab8d3314b394f69aa82744af2d2d3acac8ab1a4df00a3ec030f79a30e9f1d4b
Date: Wed, 30 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753887593
