Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43247354AF5
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760842194; cv=none; b=FvT0JbncUWigGPc9m/phXi7ZXrY42G+JPq+0HYeIh1Pa0fKySRqAjUbLFaK+mjsAWUPFDccgXIaCfrAKRr/NlsHNlTRA+bMOkWXkErCDDxWTEtDaNwnzH+qA71iCkdACgwD6gVMDUfmFTAproSlsa2tLxquDqDDG6b0ww9aoBAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760842194; c=relaxed/simple;
	bh=Tz14bFIJLL5NoBZP29XW93DdcE81TuoNmoJmMmjIAz0=;
	h=To:Subject:From:Message-Id:Date; b=m7IxHvFNx8WdoYozb4f3OF0dxSYROWye33Ywbo64wn79SAIt11Dm0G9Z4vnOYCVMP8Oqqk6m1vmJjFF0N3s2zNaE6AegZLq2iYMUybZrTFuhxaGg8p/CSvd+QosUEAThqYro0x/f10pRX+u180uWrUb8X4PhiumvOX4rxlfte34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTqYDOps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTqYDOps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7075C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760842193;
	bh=Tz14bFIJLL5NoBZP29XW93DdcE81TuoNmoJmMmjIAz0=;
	h=To:Subject:From:Date:From;
	b=oTqYDOpslIGsmziEx2rYgmDYkKWBeJWigKupo68lh4aVMZOmzIf6b43QQdtFsRiGI
	 SUa9ZtkXlcb0DTh6P9pDPn8OTMUNeJQtKQryyML/uf1rf7Wj01GL+6a0f7sBAoYrIG
	 XzynzL0VMLxsU81L03DKkJjxSmJwcMWSOhGu9y0w4aabTOT4E8SkljV80dXvB1/2Z6
	 IVMCNuMfZr3TfKKnWApVoEQU8rPu3BP9qOluqHf88CthEfbrka6FUUXPBPcBdRA/2i
	 ZmEu3GVXbyBFRGUzoG2l/FsmZmV74/3BL0aoWebeGKsrCe8AwekPv31q96BaYbZmE4
	 wQVQxPfCw1Vwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F1CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084219357.27359.14121566936166672896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64915ec26fe351a8677340d27cff2ebf7f1c2d0d1a0cc84e9ead7af684f55f2a
Date: Sun, 19 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760842193
