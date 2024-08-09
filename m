Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390D7101E6
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723168554; cv=none; b=JM3rWi6g6xWcVPAmKIexxRYWUb7B9weglvG5PYugBIr/DTzXsBliodYoddHeccKwC7YaLsJXs37JFW86xGVyF5btuMHxR/gxAPzHZT7Cz6FHFMVw9SigvTWruLNEfKIZmztE77Ye/zh1o95RP1Lr9lkL8wOtVNxh4TYr88NVqOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723168554; c=relaxed/simple;
	bh=mX+KpztrZAn4Rmfd2Ksp19o8tOesSKXHgqAGTBlAcAM=;
	h=To:Subject:From:Message-Id:Date; b=G5WMNRldKDZzjLH5Aji0XY/ZJo3qnDBB30wyvXWnoBCQBdTFbS1iAKVvBxVWOb+eiTbJXwUKpNrT0gXrPlKyAtdACLAfnhJ/nCHCuR4xa0R1x7TrvOps8PGGfQa1i46wapoYuXd9FfIxRFKcvktJ7n9i7Czf/nzhdJhNZ4VvLw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxW/AEa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxW/AEa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6E3C4AF15
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723168553;
	bh=mX+KpztrZAn4Rmfd2Ksp19o8tOesSKXHgqAGTBlAcAM=;
	h=To:Subject:From:Date:From;
	b=MxW/AEa/FKH0NSa3zlN6oVZFeXquryA4vv3er2pW7eBzrq0qWNreJMvge4deDYmIT
	 AcAK8UmXhNKQhc+aJPeYGqNiuQzePfRZY0UkjtDJ+73YBnfe0hTo12aSFdnK/az/Jb
	 PUK3eE52Msy/DMQY7hQE+BHTEmf5o3dk10+qJlZ09Xi3NS/SaTcCxHYpxOaEiwJD40
	 GesbagAkUHJ6uDZBI+pRdN9ZYQ07Q7knG/YoNwTiuQQ1AIbA7x+1yz648Uj3/y7Bh+
	 KfbWANlRz+oGE3SxQ7hp75Wu+/xKjjv89VubJ5v0mcRD/ZCF80FEH6kQRC/W54tlsd
	 tazAEgNFp6Bzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F2C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172316855360.18733.12565527125354413636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fffe34e73848663d97a9b9202bf2757a88ba420b11a6312fde1c385e724beee
Date: Fri, 09 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723168553
