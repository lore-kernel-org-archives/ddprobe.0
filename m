Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE5A7081A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758342594; cv=none; b=SYE8a9UcWaPFcZ5hI0p6F3r6GqHqDE7zojP99HyJLQ7l1dL3HWBGYtEZJsnAxZQEZMaBRZR0PUR+I7o9TqrKDo/q2iFRLt8q4Dv9UwcGmlbj9i5VD/8FY7P0jQEevjj5sc9CBFwvyFDuFcXGb/wXX8NEQ+dd66WGFDcOeSgAPjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758342594; c=relaxed/simple;
	bh=pmJCawRwfL4Xfs6Qs3M5LfzGF0lj8Qfy1Qq8U2SyRgE=;
	h=To:Subject:From:Message-Id:Date; b=QYrX6XllN4fR5y5CcLe3M4sg/cBzUp6xPxbN+wnux3ehGR/UJWBjAqir7mOhTeipKwkyFznd8BXRA8pkjGHT8WrgIjjQUn/Tei5kKjlZDxAzg5xI0DVtLnIxtyTWnmJSpG1oYrgNHMUG0iP4sTRNQaJvL4b5g7PpC3NgN93X9Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjZc1v40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjZc1v40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A51C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758342593;
	bh=pmJCawRwfL4Xfs6Qs3M5LfzGF0lj8Qfy1Qq8U2SyRgE=;
	h=To:Subject:From:Date:From;
	b=IjZc1v404g3ERBmZ/XKYam3jlFXIhySRSAgTlNXc+KQZqUfGyd76JXITY52aGf4vQ
	 O4fXexxtnwBryAMrmttEh2sHR3F7twf8W2TtmFUc7ftCQfHKstYd65sC/r7b4UVQe1
	 s7UK3eC/RMnBkM03i8ItHpipDynlEN16RPU+rwsRM+wSgueU8jYA+JXbp3a60AMezl
	 ThoFDE02oWAuDU6bgUk+8w6d1FrBESpJZTTGkkkbpZlbpEK0GbWaZpdv7U1k+OnM0W
	 S73YidmloC92jRDGYkhlg2NB13o9qV5iXa2Z4uNfbtOBk0unCDSeoMyWQimc/+uLhc
	 vqCBuHzCfsOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E4CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834259358.7004.11554161321957320497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d1ab6bf56fe1130b6df0c72df7011f7a5705060ecbfe2e06d79f6f7553db52
Date: Sat, 20 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758342593
