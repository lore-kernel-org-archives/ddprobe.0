Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8B32DBF5E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763533914; cv=none; b=UC8Uk6URqRYE177NfY++AuoLjdxMUlcPFrbauRFaWs5dnMEovLnQQKt9V/ZIh9JyN0Kx2D6/Ul7YOdRjYGJ/3iK5fQovAXQtguUvhA8VJ+usH0CWoRmuBo8s0KBE5tWVfJDil++TeOGVIocMnRO0lhYTL68KsLu4NpXsBQ5bELA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763533914; c=relaxed/simple;
	bh=UbbLikXUcQBtPOpZ9WWHsplhgmhsM8GiDC/LMymdU1o=;
	h=To:Subject:From:Message-Id:Date; b=O2Wa1r51cPCI5sDMgBF8ik85w6Z5kqeIdc2guZLxwMBD5RpvkwX1uMnRMN1i2x2jfejRr7qcS73saP1wzfkxAW/QP6qQuUs2+Wuq+wWfDnVhZL/KafJGGygGC9gEL8XpTIonNHzCwOZG7kOdEh0A0zHsLCUII+I8WK1rwaX+Jko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3q5jLOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3q5jLOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C620AC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763533913;
	bh=UbbLikXUcQBtPOpZ9WWHsplhgmhsM8GiDC/LMymdU1o=;
	h=To:Subject:From:Date:From;
	b=A3q5jLOuwrZrIoB3HbepGyvRIhI/k3ayIobEytWpK+6vA1y+3j0LXId/9q7BMUdWS
	 Fz6Cr3p63BWUSVDXNxyVa1yhaeq70/pAet5fNrrstRvwVwEw4kmUlspYZKkjVicw6o
	 8UdzWYDzBPpXGoPsVNViNKmkBmtcE86tj0GN+qK8V8/ULEC0xSHcvq2c5Th9GpGIw/
	 bTNA0Qa05aIAljexygSWhB1t8MBWvJAyNbusKvEK7kercFYwPv8L8nNPNA65bcLW5K
	 +5UeIdwNQgslOL6s/pheaLSecSX+lTI+U1AG62+XGb2asl8lN8nKz06M45RIeZtBwB
	 rc1wVkRLWg/mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91993CF258F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353391358.20464.17595526516853940504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b5102c85098c9992431204a1cc7fdeb6be72bc632c3c2804534e459623267e
Date: Wed, 19 Nov 2025 06:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763533913
