Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2084E171CD
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746106194; cv=none; b=DqJrlI2+FpquhJ6mqFCHE732jm0uggOjfwMrHSjxd5jtEGAciCbmmLVEFXvY4dHTGXSFrj4Oy10BGkIlJTv6Ctz/1ZIMTF1oGHlz546i5+Jwq5xyU/lDY38kVYWGl0MXh0NwPRorqZcSYcnrDMr+/610xcsT/ANQByBgfHUu1Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746106194; c=relaxed/simple;
	bh=3B3YyREY7A1c5YEmDM2QKQe0RbdUFZN6BEK+gsA3paw=;
	h=To:Subject:From:Message-Id:Date; b=Kh44Wr3ImUVAkxHPBgB+74vaYwPg3ATJByOhg4oCMuBONcMfOLYMimYeL4xitNGlefLrOl0nmZ0l+gVS/phpkhzkKb3dfud41SW8aPoUnuDm5gwXTQfsnC0VMG63IjxWHdQd6c6W7Qp3YpN2rcoYwfQz5v43J5ADDo+go+JAgdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+s48iIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+s48iIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9ABC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746106193;
	bh=3B3YyREY7A1c5YEmDM2QKQe0RbdUFZN6BEK+gsA3paw=;
	h=To:Subject:From:Date:From;
	b=I+s48iIcRF32X+XflHm2Ge2aGlZrAs3p4HLtGobSieV8rZryyJt4oTx8HYOls78Ad
	 fQkP843Btb8rpwYaTCCfwVDFF42Fvjzd/zeG5062Cuhkd0a1qKXs4Tm8WvreSzGbuP
	 S181UpUx0W+EesWDTwE14/xrUfO2S7z/u5WfDVe+7lb6j8crhMoA13wEy9l1Yx/hww
	 3pvy16fBQyJfhhUirb1C40FYLtue/PdCPREA1t95Mtgr7lRmubc+ewssWIG5qaq+fA
	 5uZLLb1eioQm3zQ8w3Vd0GLClM7/W95uddJbJbwKdxisfFygyCElzwekRl7l85dfy/
	 GCDiPe3WXV1Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E66CC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610619357.14815.3119774992924226258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4a5610cc9906c67224520da0290822dd90c2191166e8b6d1147add38a5175b
Date: Thu, 01 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746106193
