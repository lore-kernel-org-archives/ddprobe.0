Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155AC3EBF35
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769983434; cv=none; b=ILxZ6vkcHLZK1F6qwIuJArrQ04pnHpJVSYkhCrZ4qrMc6oVH4vVACvrmntRR7/ARJ4j04snRSBCqJf9rEDULINw08Nt6h7Ex0+ZB0vrJuAtbZJEvQpkXwwTgFsEPU1uyJRC+wUzHk3038e1btv3n4CJPzTsTw1j+hU+F6ZmUDYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769983434; c=relaxed/simple;
	bh=yMEr4uGz8lkpeJbYVXW2f8x9ZBSdvaxAzXMocjWkYQ0=;
	h=To:Subject:From:Message-Id:Date; b=GSRjFWT2/oiBhRWOYXTUe4/FoEJ4KYNJK22DZA1TxBmIOkrZG5ZI5AgI2MiYTs33V8Yrd6JNIQQrFH2QsLwtIurFJaWkGvbtg1zmee8lepFVR37UfnRFb69sjRpLPcj5Msja+vnVc2VSXDbalG6DP1528J1cVp0imD5Hx6SfF/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGJI11SY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGJI11SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF080C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769983433;
	bh=yMEr4uGz8lkpeJbYVXW2f8x9ZBSdvaxAzXMocjWkYQ0=;
	h=To:Subject:From:Date:From;
	b=VGJI11SYafbRu5D3VYJW5EapAUEufHcF5JULMOKTGoh9wBSWBhAvFDh95+uv7E1ln
	 FaVVAgrNCBP8o4QtFJ7QiGdvc61WtK1DGYS5xwzpQ/xuXlr+tSGVKphizhDwQRuwLG
	 1b6nfu7yQZiB9FiBRtoYt7kWYeKtSz3K/AQmKNbHwyw6+xQ4G12Y9Es5/OabZPljUQ
	 3PCRUo9eaC0fo8eGP8hmPlML4yNGbiuYOyXzz+nmzvBaeTRurQmmrU23bRLuyeOFpx
	 7hIOo+fX+H0vR5T6UIeKPaqy+bDZS0QWeTKNHlVd8ZEcdVPO3aUuzB/oLnRv8OqYeI
	 Pm2AAP4Vn0qCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE71D172A6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998343362.6816.13736434467062737046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65279358174a9ad3c55b66d64026436ff31faf132b2809395fbd83040935ef42
Date: Sun, 01 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769983433
