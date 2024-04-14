Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F781D688
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713126563; cv=none; b=C4O+u5/BgtAfDDvqAfGXy8UJ1ognajXFagUJDy19jHksdcEfyLcw94W0hFE8MW3Qpzs5vStx/5oOJFWkT4zIJrNPVChAtg+nzzaPSyBb1kNZu4zIwrBB9hD7oKg8jPnN9txyBppqhAbZXWEneu7CHkgSPwMjoe5T2SI7RpyFBGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713126563; c=relaxed/simple;
	bh=txes3K+WJBbQj2IivtPE9EJpW21j+jSRl42raseSWyA=;
	h=To:Subject:From:Message-Id:Date; b=c/UgeZ6GxskUN4bx2ELUnchA77/YYtsLtkCJ/srcXeZ6akt/JEyCckM/AfVtikmBd5klu2aCUUTobJKqrx/F7dPafOX+OCL8bKXMev7F38Y3SvWpzwgsh23AUjV4AFzbmgcHSwzWN1dsZZzY6G2a9eQ3Y5VLsRpn3lCLTpxfUms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjXQTvXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjXQTvXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4735C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713126562;
	bh=txes3K+WJBbQj2IivtPE9EJpW21j+jSRl42raseSWyA=;
	h=To:Subject:From:Date:From;
	b=NjXQTvXY1fRPtI9KwSgZRE/pbvHYYgcxXQ/g0IjKN2KWgnOFD5UHrflVh0Y9dPV3h
	 bTsScuv3Vhb2vr+EjnY32xQe60BCBI4qxdXVv3NWVGCnoUlFjg4Q2NX4qBpMcDSoaW
	 ofBOJuPFqN4B3OzPuL2VpzYLMcbch0wAvZY8RXVkyoH83MHh6VEIjUufcvWMs0XfRg
	 AMbZ/boUydE+vu45FgaPmScvPPyztimqiX9oZs24ZM/sotVJFBj6KPf8dlbofMfApQ
	 YxObmwOgqEYxaMJ7Cex9oW4q+mvyvLqvb02x4SFauKicHPcpRLCGSCfkyY6nd6u0ye
	 fH/FjO1XQjBoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF241C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312656275.27087.233136149142441671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2708ed2c8d5b4cc0a1d5abcb0553c4fbbda6c9ddbb851e195c659637d8a767
Date: Sun, 14 Apr 2024 20:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713126562
