Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4559C25634
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722124554; cv=none; b=hwjKZMoDduKgwoU6qn8+lRU2VaBFedqzzjq2tcxxKuJbDPaKgozpRW+baQlmJgeIcskwt4CEj+LEP8jH1PcumP4O7iH+9ZBTAC47YdW7S1v06CJhsLI3bwDnDae4r9fSmGf5yWUL5i11SL46edzP78V5NK8F8UtrCVCywJpCTZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722124554; c=relaxed/simple;
	bh=XS9OTVeQiKXbdsX0PWNNSoJn7kNlfeq3ZPjEzg48d+U=;
	h=To:Subject:From:Message-Id:Date; b=nWGmArKtkTiLVbeTAz6yOUPm7rpEuEKqfXIDCZzMuUwVJzOvykoOK/kK6lyS27LlYw003v7ZJ6trP8giHXAIo3p0f9nlBT6ygG/cO8KR5MmG7v0wTt1Po3NMOofpTNpYpzWUI+xnOwzwp5ViADmfDkrZ8Sv5STXLpkiTrwHjsl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsCiGzZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsCiGzZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66E4C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722124553;
	bh=XS9OTVeQiKXbdsX0PWNNSoJn7kNlfeq3ZPjEzg48d+U=;
	h=To:Subject:From:Date:From;
	b=rsCiGzZ33FoV0Wn8j+2aClHEQbt2rapvfTAzjEGx2RtuDGQmUD8pDJPwpBz/t3CiZ
	 ZGmXpncX2a2RN+0SX/c1TZMELr+SoRnB8SkVTo0XniaJUQySdQPWI4Z0t02iJMvHDU
	 KqAblKIbOAd1BTfxoFEDf64lZWK+PAIM6cNm4nN6gbGAgm+5eddQIjKtIuCcwGRPt6
	 +xudnCNNi0XRs+KARV67gkw4Y4c+H7nHHCwMSQxwqsIZ9TS7rSBY5I/c1/7o1coowd
	 GKG00kG53Zr/mLM41QerdbFGcJtNi61AmBvzEAeH1aTNpN2SBuKz9NfapyP+f2PPGE
	 nu0UbvfjfbVng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CCDC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212455365.20717.2208619939192423095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040ba1179adab08f9e71978f980cad31013184b6145af977c53ca6997af038de
Date: Sat, 27 Jul 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722124553
