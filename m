Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2928D1F1515
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749148194; cv=none; b=V53WSGxtbbRR/KUr+SqGWUQI0tURsZHzXvf6gfYrvb4rCK5vVgYduRXWnmXski5pDQ0F/whBCjvddN2kjN1N0J5hMrj0rbz0AB6P3LtacGovvg55kkaerpKejWOFdkhb049ZvxdoHm7Lh1siL41Vw0uG191bEZKkIJm9n7vd3Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749148194; c=relaxed/simple;
	bh=3rNemEVf0qM/l+ufwAKHLwU9QbJ/9FJ5nLTlOfX1Syc=;
	h=To:Subject:From:Message-Id:Date; b=DASpEJw931YEcep6sKosrB/nXRCp1tXi32P8xZvdu6mMIRG6rjqCgQvadFitmDPJ+RbxnG4pYCN7R+BiiC0XgmETh9+yUjCkxMlbQrcPMjPLwo6riiNgI7QtI7mFOQjdxQnaNJNooQosjN/9YFDeSflluKy6vpFTpKUGz53H/Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL9d9aJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL9d9aJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A058BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749148193;
	bh=3rNemEVf0qM/l+ufwAKHLwU9QbJ/9FJ5nLTlOfX1Syc=;
	h=To:Subject:From:Date:From;
	b=eL9d9aJ39zGY6DLZfGmJaCt2t+Fh2x2juCgLJr/76u928MP/AmSC58Q5Ov81XCV7C
	 C9dmyHeQY44hHPgWQ4uN9TQEjRhEX+tedxCKjtJRZdViKrT4UgD41I4ikLOk/CQeNX
	 hHUn8LyuWmTWC7rexUmFSoE8Gc6LZuA1PjObxAvwF4B8CS8V6RurD4/P66UJAcdE2Y
	 ZkpQVOogfsoBoZiSiJmFBzZRhu9wpx3ZZEpm+eDrXgnLJ8GjXvft2QpEbq6zbgDGMu
	 cVrQhtWl2/LxcD5ft8WPxqbTXdQsQVuu8MB0L9UbyiAdTLB7jp6t9w/JMu0vUdUZQI
	 fVImgixYA+kjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D4C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914819358.20911.8027681692114028620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20bbe4e9b046016c001d572883215c43c3f5149f6751d0486c86518a03ccc96a
Date: Thu, 05 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749148193
