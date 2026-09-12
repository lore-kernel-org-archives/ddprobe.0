Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55975344DB5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789198234; cv=none; b=LIxwXio8Zsf1GxiRtZP1j+56k3g8LOHnD1+9qP2DMFYXpAgyMG7NGEvcxfPGL8MI6DWbib3wKhrOZ/FZMqie+Tqs0dBCprocfkKepUlNYGkMaTNBUk9zuveoNHfWebuRxFOiQNXZ5BubIoACvD3yE7HH1vo9LurEtT/RAYq+ZU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789198234; c=relaxed/simple;
	bh=lwyk0B/64S2zZQB7Ge5ZUHTQ5RPBSnhu4j++rzDkVME=;
	h=To:Subject:From:Message-Id:Date; b=g/zvsVE+p11XmoTwfohMDWB6ELmrXpjPPVgku0HxCSIgRYj2vyk4InzRDKQy3owBvGySiCihZ8y5Hl8XY5Ijb4VY7yMxs4FxKZ1ruoUOoMW9uG1YHHe+qTtlo2KKT39oPbBCmwUsddq2SbE0SskC2mcnlVLIgFpC4dCTPYnWsMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQpQyKpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQpQyKpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2433C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789198233;
	bh=lwyk0B/64S2zZQB7Ge5ZUHTQ5RPBSnhu4j++rzDkVME=;
	h=To:Subject:From:Date:From;
	b=IQpQyKpkEoA5NfRQrwtxDlUUD029AJW3lySQ6TB63RMSLk7yoEvWhojW/NRHkzsUh
	 FyhyYZfvrznA2m+twOOeqQcGi+5eDHjqjbDPqagKH1Jbj45t+bQY0K1jqPKxgR1Mhk
	 UArzRyGUhYQJWk5ZYPACXP18hcc0R8xyiHoyDpbLJi8ui8ibW423fxFmSlKD6ECM0U
	 MukYI1om1qSTdK0MJuy/5PtN6nolO8G5tdDCktGRN7kIgM75VDta/h3be14Zt6YY/p
	 r+twr+M8Ws0Rp5+4PAKUQgr1RegaiHSLlv+85EF9PydsmBvdxQVp6Dbj3NpNj/seDX
	 5SRrOkQjemByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD76C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919823368.586.1856534531929625307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4139bf810ab8b6c196bdc7e32ded03b55668ddbf5ea2cd85c991bdbd9aecf4
Date: Sat, 12 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789198233
