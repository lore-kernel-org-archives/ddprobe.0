Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469113BD651
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792186834; cv=none; b=bI7s3eGEhxAUEcKYYAxbh5/ohmyZIleJ+NuAarY6asZMnJouZh26GT2wLVCJrS5Yl+hSFoo5/rAF63KZGYfttnPCHStFcjH1KicbP+Qs9Djcgk08YGAck8Sv8uv+tq3zfIz1WzUOOpbAsG8i6wnu31tD3RedN46lcEX4BB6qlq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792186834; c=relaxed/simple;
	bh=kC1eNE+xyOAlkw5VN2BYbkFzt6Q6x2BBRbBQy3zurqU=;
	h=To:Subject:From:Message-Id:Date; b=DM5iWFxRL2jkkE1u45OYQ7AxFcvmcq4F590KGvWqgjIaRiO3EhL8iYD/qQWdYbxdW6M8t6JylGtgaYiZJwiRQKIRTiS/yH4iNfJcbwJU3z+GPuXTPM4/XxJklHbnz7HAntOXKPmBPOk9FOYfaRykaEFg/KwzNuQgtbm4C7MGRoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4DpeA59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4DpeA59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FF3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792186833;
	bh=kC1eNE+xyOAlkw5VN2BYbkFzt6Q6x2BBRbBQy3zurqU=;
	h=To:Subject:From:Date:From;
	b=a4DpeA59bpCXx8d/SKZvU4LJfgKD43lVBSezPSo7AOr7gSk4P6zGIrWFzo4AdlIuo
	 v9bFnZQIO1u/oEILicSzrbliplEvGkelJoegE1rq/Guc55R09AyHSon39Bcgjv+ssQ
	 nVksBOYhIdxBxGIhTW9neZAS3Lqk3KrRc1676eCWb6Af/Zm7Rm4sljpLV6EcBBA+ry
	 f14HH68Nw/Q+r7zXj6p86L0FlZ8VCXLGhhmzbA2ZO8MJLUeOEwitTIXFrLYu46rjqo
	 vwPNo+XXikaOfS1Xyd/JaqRYe5nW2ft2AOwWoIRAu7IzIw40k23SHpWI/CKqAYh5EP
	 6blTjjKs8JMeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE9CCF2C4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218683369.17847.5467730149653101714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6716ea2b49ebb2d83c4a189be56a80eee2d247cd8e91571c89c89b4ac8dcd2
Date: Fri, 16 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792186833
