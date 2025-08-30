Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2CD22156D
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756586394; cv=none; b=bOKjMzVShRqCI3PBOB/wmImQ95G74plGeB8P9v87yGPSPp2//JlAOchH1J/CD8L8czk5IQjHYhlnYbP/zVQTVKmOud6HdLeJuYVRXzFgacFGa/Nm7HtE3qhb7HJP8Ib7cF5uLj+70WJhpp95iLyCFd+EPcMWlOHKTvnXyUzUc24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756586394; c=relaxed/simple;
	bh=xhKBI6DMqQFR1gfkIQuO3/iX62ESxM1OAahBE5llDAg=;
	h=To:Subject:From:Message-Id:Date; b=XnegAvrPULS/cWWkONEFnxl2DGtBS8TGeTvL62U4ypXFmRXw5h0XTO752KeH1mMEGkez/1v/5mDqCBD1ymvKlZbYdddWzyPuDazyeBeFNPjW/pLmE4HwPr5k+LnBJKWG+LGvwfDZlPsorcuZldKszSqI/07C2grmZdMWmMNFupo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBiYlkmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBiYlkmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6168C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756586393;
	bh=xhKBI6DMqQFR1gfkIQuO3/iX62ESxM1OAahBE5llDAg=;
	h=To:Subject:From:Date:From;
	b=MBiYlkmzsOJpG5+04VIzy1U1G7awwp10Xjp3ug6Ag5a39ivM6uT3G6OzYbEALmZl7
	 e2Jgry9YQIKoP2mnPzg32El5Ev4lk8fuMDGXFKiMRAZZQWlCanknuW96x4ODzlhn0f
	 An2JEfhlxw/CzXTC5cYRJklKu7+p7tVugT+h3iC+FZyc76IrtgfMKzAUN2JBUguEw9
	 F8GzEkkv+eFGrP4SJiP14BGHRSQs/OCuT6Z/cImjvoP2u2jLed58uIysBEE40T78jp
	 R2ZfAEhYxK5YMC5ZE6RbH83i++4JriL6F7dubqiLV64Ux36VvimYAVpsNs0FGRmiiJ
	 9kjHyNnSCqCfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DBFCA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658639357.1718.13700743562665075037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a02d08c708876c35f80f1e90a36064cfda60d3c37441e082db3a535547d51e
Date: Sat, 30 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756586393
