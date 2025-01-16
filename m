Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EE65588F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736991954; cv=none; b=H8MUQvvYwsi/wEWpVf+UwTK7rqylAuG5NM4Es+BDwarAK1VA8KNTDwX3XmLgvsjFfQn/7f9BoT4ivgRh4nx9My37vQ3ASk2rON7y9gcnB1eroXw+iVOo19osv5PltoawNMDRL6RZ5zyACucEh1IIjMGTnQ0B8WE3uSGHPSw3LTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736991954; c=relaxed/simple;
	bh=IFQLv+WF+SpvNLg30N1W+8ZFPbScIy+GY2nVYLIScnI=;
	h=To:Subject:From:Message-Id:Date; b=g4akWCNP6jdO5u4ZIS3LXjkDhUjUhXT2nDwWtm43l4sOQ6OPXhZj1nlj6gywK0HfVcClVL5cM6g/0avzQwMyZMU8bWTQfcU05mIddvUKLb2bDtChxs8f+hFaFR+GVnmxBj2ULoqVXRTPeMMw8oNnLmgjrR5r3hBBIBI/sGXIVUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrT23Giy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrT23Giy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5B5C4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736991953;
	bh=IFQLv+WF+SpvNLg30N1W+8ZFPbScIy+GY2nVYLIScnI=;
	h=To:Subject:From:Date:From;
	b=HrT23GiyhOL6Lxn6j55tX7dOOSt6gsw7TjhQG0wPb41mpttMLCwdx6iBbtxRSGfju
	 r16FHoXPXkQ5jNFMW/140ptbugs9kLVxtjP+M2wIPBvGESaABLt/ze1T02F9SO1KPe
	 wOIoZtGtpMqzlflouPpHBBPJIGCYWDxxy5EzP01GPkVaOknZQBWB/m29Ch31snegqt
	 YPyFX4/BmBbLlt56Mp84K/3bBSwXhPDuBbYce3mVV8jLPo3QgQFNSx3ZCisfsQDZbT
	 dEWxPAJiBQnOntZhQFQ1UknkjMNhnpfrtLaZ1ozmLbDpTe+BgThdyyJRxPJ7g4vhD2
	 Y7Uh95sHgzdjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A177BC02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699195365.2138.15276851904595408735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c8339b192c593bfd78890b67f3cc352ed0f153e2801275d015b968ae36203f
Date: Thu, 16 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736991953
