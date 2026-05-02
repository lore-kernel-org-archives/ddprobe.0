Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C0917BA6
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777731454; cv=none; b=T4JqoJbohSG3O6H7krBQ9U6G0dgkU4U1PojirDkK9PRP8dIfRwDC+BFpI1pgyX92XauCuDh0BacrZZNF9U1bb21ISmIlWa/sGSQ3y4QDS0ubpEZODooq8mO6c8kZSHCBTc5yPg/C8bEbeiCFt6h/bMo6J+h3LUC8pUVaXZ3KfKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777731454; c=relaxed/simple;
	bh=vfAYuwsUhqNKuJi+Fh04/GxLS9A3zNlw+Zo54rYgCys=;
	h=To:Subject:From:Message-Id:Date; b=C+7dsm/5iK0ei4k82jj1MUmNMtLCp1FQtcRAL93IbCrTGWUZty5ed7uA6wjgpNnTxPA4ri1wyi9vcb8j86zE5Z+47InIbnR0bwcAtQH49GS2RCf0vQN+VlyNTxw2DG0qtCBjjf7vYck9yv7Fh2YA8UbWcS32IdW+kQ2BagUtUV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeSs7kqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeSs7kqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9F2C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777731453;
	bh=vfAYuwsUhqNKuJi+Fh04/GxLS9A3zNlw+Zo54rYgCys=;
	h=To:Subject:From:Date:From;
	b=VeSs7kqiHnJszZVnW9CYyBr9Nzded/FDLh56ornPljbvdBLoZNekh11HvakxiQpOa
	 NWuin3zx+fEroLcfREigyNEjSi6MFhtwulnPB+W7kmj8FDe4oz5R7+pUVxLull3sjA
	 rNgoQm0+vBgS1VmsYBjaGOFcd62n3fpntiy2i1/763L1sTBo4MKdySn9O2uKZnu03+
	 V16rGFuYk9XCSlezLx+i1SiqH3KOTPRzz+Wei6oJys53cxcIVZ3BxKsBLOHkvc7DgE
	 ZmiwofrX+MQ28Aq2NRe83IepFpaWMNX7B8YVX1gFXRDD5G/Zm95sWTTtURTA4CROmU
	 8MrAB2bHKy5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA37ECD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773145368.23150.10894932935281087259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b561c2aef0aff953d76ca64c94c79c13e7d5aacc87cf9effb8005d7d511cbf5
Date: Sat, 02 May 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777731453
