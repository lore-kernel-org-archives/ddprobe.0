Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A77D287246
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784345314; cv=none; b=TeBfeAWikRc4Gvni+G2uy7GoKT6uKWg+p4oA1cOp0b0OsBBlvBJAdyDYtTu56SR4mDkzR8REaHzaQ9/FXpR5waW8YoZs+nIddEuyUuGb4pTQDDnxz1V4N0aj9DPeJkHF6dhvjitMMJ/5SFpxay9vOXQhJDHt1fB9ZxJpFAHyrFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784345314; c=relaxed/simple;
	bh=lLFvhoJJtOBm47OerO3d8GC98wFgB0kh1Pw+h1Ej7qo=;
	h=To:Subject:From:Message-Id:Date; b=JN+ZpTguvrCMY+Iip1oAyNi1J+70v4mfjBuxIacChBhK+yUg3fzVLB0mv5dtAxo/0jMPwW6N/V/6NTdZv01ZKeN22apLo57po+QA/PyVLNWQeemYGKT3l4S98W3oxhihzpNANcI04XFoN2g5ZR62y5HYIXnkIpe1JOr8+MqpA3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNFMxmoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNFMxmoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D337EC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784345313;
	bh=lLFvhoJJtOBm47OerO3d8GC98wFgB0kh1Pw+h1Ej7qo=;
	h=To:Subject:From:Date:From;
	b=cNFMxmoFe2l8N73LKnp4Gm/7ht/JwIjySkZu+mfI+KTSx72v11Ab/q2iUwk4Xs2VS
	 7nL4uzpsj7kTHNJoWdySeynBWKBQIGDOQmR5FPKn9ZgVwlwyPDMnuEx/GB9qTpphUb
	 Zc7SyDONWutHWSF6840L5r7VVcCfk4ZGzcqyGriIM/8Iq9d8C08hHua1QTp3yvLfwk
	 GjUmqv5CnqDzsCUUHcHPtibFpFcuHCv3ZNzhl7VnuX/4RZ/ZMkf0L1t5gLiFOPtqne
	 NquI+/y286+X2eBqUSp21wLrDGicVZhIO54EvNBTgIonjguoCV6396JhzcSiduyZC7
	 SS+8YxixOKuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB66C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434531370.10716.1204851095130774162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb75b96b80e2656d8e29a6cc777ab6b03d22bdce21e6dda433b597d01808cd38
Date: Sat, 18 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784345313
