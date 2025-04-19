Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E07E53AC
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745032794; cv=none; b=hKrSNqaeBxv5E0j8fNqTUYEv3I3LXt98tJPf8oESB9qzQAFH+j0lFr6yE/AP/nsZEz3CBgVbSFJljCDOSmfZ4hn3SQwNTF52Skw4L10taJw6q+4+ABoUHOYd9x6InvTZ4rlsQSyG5qR/14HIv9uaxMxXC/KX5kXkEk0Oo27d/PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745032794; c=relaxed/simple;
	bh=HoZwyFS8Gvzhr6QjVV8pEb/xPcC5Anf6UX9D5EG00cY=;
	h=To:Subject:From:Message-Id:Date; b=EIlBvu/l+z5dXKUpEscuUyC0dh+kdXcKrjP2mjH0U93zGJkQplO+duoBTNlfg5x7t1YBWqmdm6AkUFjAewD1H9/qSQlk2gQDDdHKZCWkzWFR2SdicYp/NgG7gmr3PcJrNt/MG93c0Gr90FZVeTQD8cqzCcp91IlBEOcxGE3ds/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctlCE3Rz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctlCE3Rz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA869C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745032793;
	bh=HoZwyFS8Gvzhr6QjVV8pEb/xPcC5Anf6UX9D5EG00cY=;
	h=To:Subject:From:Date:From;
	b=ctlCE3RzmQjwPpp+t3FBPO11lc4UVeViP41Al/3JmOqiVyDLps9jJs/l/p4kzrdLN
	 oVnY6M5wrziHuZGn/i6apTytOOOhFDsLRma1IE9KZzI3XHf+kDG8yghoX+TK8mpWA+
	 RfaPxkmLeSB8JzQbmznuT1WNQQFmesZyOUF2IdznSjrRE+xPqUEIIUneZSXtN4yVpw
	 GzUCWrTmv7eOxvT/nfgpfBavvumBTDXe1vbPy/97UnF/nSWeOfEnngiJvWHfE+vAX0
	 LsOULNoBqWK4AOROv4Lh8AJbWUGKgaRZQtyAc9sLWDKZ1FV6QfPJPV1Vfy/ntoywTq
	 dCWk3oI5vBJrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E1C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503279359.30443.16136934434924301382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a96bd40e0bc1b5d638a7941d32fa43db15e755c8127c8d33f96cdd546aee8fd
Date: Sat, 19 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745032793
