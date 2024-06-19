Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3F91848
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718815763; cv=none; b=DYGmEkGZYxTxfbowTZOWcnFfACHAWkiJ7vRGKFnKKzFgooRtdiuw2K5DFKDRIyoU0dhWzftr2ZJKghnZ37mTqmKYzMfsjQVkLNu5HCz7Fq0M+GVo7ltxzmSuZ8eUWMjqElndzoczUDVX02GrlYsXvMMjZocCpfP6Xvt91AYluss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718815763; c=relaxed/simple;
	bh=16fcFiQxC55tuXOnMTRE1SJxbNS0pyDXFfho6Gvvsuo=;
	h=To:Subject:From:Message-Id:Date; b=qxeyaljxm5z3IahSSFx+yMTHMYNcRilj0dnSTdRT/U9seUYyYoBbTWBiwVfE14Azp0vJxpUY+cZ5Nt+BRKURwB7Fq60s+dmCSTtnXFX7H5okEdvx8jyCIRd/F9WEiDblBHQqPdNfRJrqnNMKTNRt7zYSnUa+61j/YQwYxHRkCRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bq7vJRc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bq7vJRc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1ABC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718815762;
	bh=16fcFiQxC55tuXOnMTRE1SJxbNS0pyDXFfho6Gvvsuo=;
	h=To:Subject:From:Date:From;
	b=Bq7vJRc9yR3nFY9uJYDaL+PD2OQgadBXQeijqNlxGCcIUUnp/ur/Mumi0GpIy/BXR
	 yVkiBRgwuIq74ufdH9LksvYIvbpO03mw6BVEL/MXe3cFsCIpWQqn5Qk3piFkGfXcB9
	 h17za8xdqWLYPaUty+gjrDHw0Ih75DEjU/dHl5ZaE7Q6qntxVWCabpetCezK7bwVbH
	 9lSNjkQ1TdPe0Mr2yJvVgvfJ33laxqxc2U8B/rgCVxZPMhPBc0PamuPuAVm78q6gJ6
	 /GjoTucqsOBcgzedi4zj2A/PX4h5fQm6nfwXVAOudQJvy7rd9l49WHgKym4zzY4m+g
	 vxPwhDRTw40Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E31C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881576281.7347.2704173372806995072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6edbb48e9ea1841c99e8a4913eb40e7d6acb741d83e7fee9581cb00d8c2fd98
Date: Wed, 19 Jun 2024 16:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718815762
