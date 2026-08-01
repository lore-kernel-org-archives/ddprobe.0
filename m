Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F04441A4E0
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785554434; cv=none; b=XJ0vROfhgqHWWNmGuePt8OG+BhD0kA1ytpF4v9mqUOuqV10+9e39qb36AgP5rGErccx+jNWTz+Zu4vxmazEVxrb8FrVBez7/Teww29gMKh2u/2E7CPdzP5hjcYQk/s9RlGOfa1Uh0IWs2ZUPm5x0RFqGDwTnU9F56oTbBRELuEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785554434; c=relaxed/simple;
	bh=wuM0dE/ng0FHs3BQpruaVZ1sSYVN5TPuYO3uzTZxDkc=;
	h=To:Subject:From:Message-Id:Date; b=ghnGAe988HT2vjUFS4eNfY/lB/FpG5Dvmm2bQ/XEuNbBV6/Oi+vGQLsB5gz5/3c2MOcnMJW51eM8MivzTDE6hwDRwpiYYgJXSaGcg85Q1a2VL6hy/riIsVjhcaABCD5/nNqEo+4P4RKGTjsnWpAdi/A02IhbzR1/2K5+qHqrUQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELifam6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELifam6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2F0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785554433;
	bh=wuM0dE/ng0FHs3BQpruaVZ1sSYVN5TPuYO3uzTZxDkc=;
	h=To:Subject:From:Date:From;
	b=ELifam6gBhCULl5kZMG7WVOLde8HBD2GBgt9w8oJie8RDfvFnXuQ4K7P+QqDYTGG4
	 CRad06UtxN0hu3xHJpXXKouA0jmmS1uqKYkSQ2bG3D7/Gl050uKeCEnEVeXUz9zrQX
	 io7E0RbGKcZVtaMeHQMiuU2/1FQ2O68G+n81GQIp+iZG0jxbgBaREzeN/Piy5rh4qt
	 2aMtZJ56lDEzrU5CJejJs263vsuxNMF/H71WLKTwaquvQl+DlXquCAlLjFbQHshfvc
	 YGPHU77A3AntYVSOE4nq79HOCYt3KSx/exgiiftYGetbkAq9dWCMPiGWptgSRAZIIq
	 gBQ6iQpO+BvHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB4DC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555443368.30515.16797707187674827032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38644f18fe822bd2ab87530920ede8da2141b97294f6bbb42d05687f5aa1aa23
Date: Sat, 01 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785554433
