Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43574158535
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743965394; cv=none; b=E62CoiWG/2+dk6mzqdyLJbVH2ZVTUsxXqoCknBk11HeMJqlu1RPeqiUXGiIO3c6gQWz3geILqLsZOpiZ7QS4pbR29T89O0lvalbP/cSzJN44ZVlslJdST7iP0zjQ6aw/eqny+1EQTsZs+TyPF0NR2eFUhBrU6ZE6Cs2D9tkAcoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743965394; c=relaxed/simple;
	bh=Nh/AOqfjx+z19UoUHUzGG8bvaWVY3alunbLfMhnKQcI=;
	h=To:Subject:From:Message-Id:Date; b=QZA/E+OXVXUiL7KiSNPqE3JPPTz5b9wgUjCHKOs09vAiwt/gEo3JGifbQRuefRwh2kYN339FCGuYkJY10WU6KmrNOBz84xIu8X2HcX9OfnhC2wxr9Z9sSm9FFxi6qoK8Ml5UnX4qmCsLU9jsdVIS/IKhVMSHf/XuKEyYH/KfrR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQoilbRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQoilbRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC21CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743965393;
	bh=Nh/AOqfjx+z19UoUHUzGG8bvaWVY3alunbLfMhnKQcI=;
	h=To:Subject:From:Date:From;
	b=pQoilbRUHiLYcglXDZZH+p3XHTeZjXEPKmxRhN36WYB5wm5sio/X42m8PgXOmjeoF
	 tCAi1JFXlSYeSvCbsHZHy4t4c7U43z6xeDE3+fjgpw91ziMM0JliUK7eEt5npT0Vh6
	 rHh/GyCXYaqksgSC6Qj4Wgd6jNYYGDRudG0lQN1wXVCej+RxVMvTTIU/HSQEoNsWwP
	 AY52yVnpvucdMnbvCpHgbR1ubDC403HPtp9aC0mbyEAQvy0ZiwMrDMjblzH1DHmIx2
	 HydsyXOJGcnOHqVXL1k4MWC3x1oXtrWh7IHKEuCAUB3ArQz2aiiF+kPxCIj0kpzcoF
	 EgKg99yGQwOig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EE3C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396539360.24791.5007508545617441450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a05e3db79fe3c955686cd56160fb22c784d744fa97ab826fee37b319c71650d
Date: Sun, 06 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743965393
