Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFD71B95B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720811963; cv=none; b=AJeCMGnQl69SGRqnzjG48knJR0gyQ9at2wwdz3RkJ0wh2Y4gIqyGJiOp71LCKLFr5KeaY+jp8VrCUZdimFbsR30PAL+YR5b3AxqJWNfnGvUWJ7SrNCj5eptGVcJC2/RoC9Aw3mVcS5pLRr7lyOMjB7L1/4Chz/aZltN6EB0f+ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720811963; c=relaxed/simple;
	bh=XeW5HOoHU6zv09dtLitjEe2PfDr3mUGv4pgBmPFGfao=;
	h=To:Subject:From:Message-Id:Date; b=LohUW1MXPwgV24RxNC2ePxXHt0PfUESUjTFnRu7SUsfsu3s40wpwxYf+OKKokl3fwwwWh/y0F2BVSBcZbgbHH4KX58shHvgi1QBkDS1DjoAfpBHNy3wXr8B8OFF44/c7dX1fv0h8/1UHOZ4RWIDT9FBa2OJ4vGkm16vg2z4adl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvoVWVzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvoVWVzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD869C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720811962;
	bh=XeW5HOoHU6zv09dtLitjEe2PfDr3mUGv4pgBmPFGfao=;
	h=To:Subject:From:Date:From;
	b=dvoVWVzB380IPBvw0SknoM4l8TPFaQbSekOgJ2+jLQbPkTMWWzDy3hyXqQvpIC4lW
	 xHqB9A+nVxxs7eNyK5ApUeXHl+f5rvrV3CZ59G8eyzDf+5DcHuZwQ+RMVTXo3JFNII
	 Hc8hpcZ2u4MPtalOSecQ41k42dFXaXVpnZBALud2GDURDqd64JirgvTyazlB/AyIWI
	 MaDA+X6NTIyBATMrxBrjrURKpm+puKy7lPmiqjqNWjovHjDWefezaIgv/9uD/zIwjv
	 o20INGtlFOrnZD473mhenen50cT3R6Fepi84anqtaxxL6op8z8GjTWRUp7ovE/GykW
	 0dCW52iTJ5MRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B59C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081196280.12090.14021922269449265180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1347cd1d24382b0576d4003830767ce7b1402bdcf8999fc23b8f18d2dc0719c9
Date: Fri, 12 Jul 2024 19:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720811962
