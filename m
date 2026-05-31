Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5258864AA4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780202074; cv=none; b=BzxccYW6IGXVYnDdi8BbuuEIt1JrDk7FY6LVH0tanZ8h7DO76ncCyT9RF2CPg9mZ3XNKHkm/Zhnn9qIrUrXsM/OVs5w1D60BDaE10nLh4FHkP5sBPSBQzoEUpEXptH8mWZcyzqQF9frf98zNAgTe/iwJPVH+GDejwuZ5Z/47Gsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780202074; c=relaxed/simple;
	bh=2tB4PQM37Q1pTQexSQEtinXPJbAWCDWhLJzIJ1ePwgw=;
	h=To:Subject:From:Message-Id:Date; b=ShreH2LBM7KxvAcy+zDUvkJIHjLEpqtP1FA5dBLKOWpoZU8XZCm022Mc+B6SOPFW8Hoiawl0TVQXgdcK6ghGot6XTaVBR6NasjvXHjsDjx4cCgo797SrF0C1vWEy+zwAA82brGhCAU/DbVQQI5ZpHOwCjDyejyJk2XOvNWoeH/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqcwAkxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqcwAkxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90DCC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780202073;
	bh=2tB4PQM37Q1pTQexSQEtinXPJbAWCDWhLJzIJ1ePwgw=;
	h=To:Subject:From:Date:From;
	b=IqcwAkxNK2K6MRK5iLBwrINyD8fTO25F0ZcXVXekfTSbP6qDOfZ0U7rpnEiUJGjdR
	 eyacM6x6gZfJv7WTF2vvPpiqn6sL6/nhlrLJFs7q132dNRc1X9Yy1yQjTRWFB3RrHo
	 nlO5G1Ez3jZigE6ET9QJBrsUDL/BafP4ej27RCwhPRjbxB7PCXN144tlV4FGdq3xOE
	 DBo+NrYtdltMOLf3BP1+uhUqTqw+Ng1NReUvQ5UttwjDeaMUo2CqBI4ZPDelVFp8//
	 rs2XsTtWjbJnlMd4A39PU9LZFE37cBN47E4yAcO2GyevN3J7R10nk9mhJ0uLhN3cQk
	 q0i/JRKhHyeGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B43CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020207369.24303.8188796003198960768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f6bbbd0c553af5405c13b063a00f4296750dcd02eaaa565c62c532824bec29
Date: Sun, 31 May 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780202073
