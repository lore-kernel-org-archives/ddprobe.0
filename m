Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181107260F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759603194; cv=none; b=lYBM7gIn0RKUNVa2W2cA6xlizVv2snjTl/QSiiqKmCHbvD/xU0iejvxp4n13mLwh8l/qrFsm8o06SecSEJjGT08JF6yfK5q40/iktjH3JoGNDLyFKUkT16P5PXPZYyDoAVXWyTA7VAuX7Wo98FsblzcO8lV0TIBx08Nk+PnzkPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759603194; c=relaxed/simple;
	bh=r6UE1KCNbkoOL0HYBDfxTnxhQQPXwwXholwMhu/23Ws=;
	h=To:Subject:From:Message-Id:Date; b=bqlD4inRZH8bOtRYyUZwQ0TGFdIrRaeIdiapimrNC6qf8I+iuVtA7ve2c7MkA4/Vn1Wl1iuRxw61dQSs3/HNrl84KG7TlN6QpchyTc2Qx4L6KfseRuCUBhDa+g3gGua6suy/RnIt8X9OK+U87m9YEHRghUPyK6n9ECOt+rKemcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDm6RDKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDm6RDKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F15C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759603193;
	bh=r6UE1KCNbkoOL0HYBDfxTnxhQQPXwwXholwMhu/23Ws=;
	h=To:Subject:From:Date:From;
	b=mDm6RDKvUz29EyWflPeGSkpSaaWLzudOjYHLSWsynGrs1yLBFqATk+BnD1xhDgkhS
	 qDCu/SHAisuJxCj6istRKTey50Uj4fTy2g8x580y2FUq/VGw/tz3sfVSbh78ywcIVc
	 WMK6srXY2rOpoPTo/gws5plOBCEhJj9ETrYkazgXyUoAvvJqb9PzkJAPnndKaKCSZW
	 3Tl/GSWStx697qQxFZpKSPZNi1yIv5Jf7P20Q/xaYGQJXNWbEVGBsqohZKfck0rDq5
	 TPgkgTc3d+EOEsfTNmM876swyRjcigki8ktzUlYqopzRJIZ1/04fu1FtL1+NNcrTw2
	 ecR+ptPbtk5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA1CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960319357.10780.14154106267413648364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c2a3b7791040f59fde0093cc802a379270d42807de1bb85854db28fdd79b3e
Date: Sat, 04 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759603193
