Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D12D2BEC45
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757546994; cv=none; b=LThetOJNhwALri/xdz92G/CQGDs1K8TRBneyfOEAo4ik3OvDLvDii1bVnIK2FGc31vEQQaUrzevmOEvOv9nQFeWeYBL8wm11GJouJWUJlQSxAkT915y3sb2ITzNR+5CcUe48OHpfY9p6O14lcFF7OkpmU5QqKB70h93iP3WWrbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757546994; c=relaxed/simple;
	bh=vnZZrA+ejGJGUpaQGXmm2qjQ/cbrhS7u6BjEvWFIYcU=;
	h=To:Subject:From:Message-Id:Date; b=iYZw2Gr4XL9FzEfN4vZFB1Iq08TCNbLq+3tFFo/hs/7tttctaVV/n2uCaFNFML059mwxH4WZ/Rao7fpXhFKRfF95NwgJaS0b5EVVBnizNX2PfmymH6QCDZXFj8COYzyuvcPLHyMQrAD/L5sALr0q1gcDufagCZllG6IbkwTWHvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTB6mYJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTB6mYJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F693C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757546993;
	bh=vnZZrA+ejGJGUpaQGXmm2qjQ/cbrhS7u6BjEvWFIYcU=;
	h=To:Subject:From:Date:From;
	b=cTB6mYJ91+YLVP4qOMQX2uxJAO7S1/Xy6BYoPLa7QIKhgQG/QIa5u6gygiU2P+rOz
	 jLiZE/1Tg9gbWXj4FRqATK7vNgleFE5gM3VK/dG0tIrtxqfnyL9gYH9V/DCnwer/RK
	 FSR11gJ2JHkSL/yVPLPVVtFrQY/XymggROSdZqyzSjpJdPY2XP+FDJ5xTvye+Zz/kp
	 udBb1weDt9xwieMWKAz4HTI6Fm6+1TPgSfF3xRj8XGQdbjfZC22sZgDpakqeOfXU1B
	 I/5FQB7GRbrhVC3dWNYYDU9spJ4nQ9iSG/GADO1N8thRYgWgxJ0kAHS9XLz3vRgKJ1
	 alyET3jK9zsFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F804CAC58E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754699357.17104.18085235211771629476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7fefa4f0b315a655749551714a4adcad5debd0e49d0bb8a8a86b1a8824eacf
Date: Wed, 10 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757546993
