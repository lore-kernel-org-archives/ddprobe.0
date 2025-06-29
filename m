Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303F91E412A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751225395; cv=none; b=hQAjBjojCYVp5eTxBGZnsyEPbIa7Of8QNGyXbN+LZCyNzTI5XynPNs8TKtn6ym069IZKJV/VunYY2usUIl2+2+YtUruXiyFppYD+dqWUAuBwYTquSLQRaQwQ/Frv0yhDvs85TC/nVFBFVgm5tzvQiFJvszJuxeGsmy/SKjJeCGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751225395; c=relaxed/simple;
	bh=H6QOzsG/lY1RONCmxEAy3dNkZ9OoRkNBl/zw7PS8Esc=;
	h=To:Subject:From:Message-Id:Date; b=sco5pIE/SNRJhGkyLcH06+y9XiJojzc2jSRM2z4wkJVXAUkNQnEdQNQEHl1qC7fahaRYOsDMSA8CNu+BM9luvHzxmhFXwJWQakFlkIF+XRvKDhC1ix16ftLb+xaPoew1cTZqlwnDtpSeeoFGS1U9AOvhsdT3UmSlBPz8WNNi4P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pR06Jutc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pR06Jutc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57DAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751225393;
	bh=H6QOzsG/lY1RONCmxEAy3dNkZ9OoRkNBl/zw7PS8Esc=;
	h=To:Subject:From:Date:From;
	b=pR06JutcE7Nka2+wJf7xvABbEWEHezN/G+6GzUnmnMqujeJee/USyp9Z0Hhq3qO8p
	 OCRavpTDtUr4Zevv8Jp3eDuZTYf95sFruj4F1PC/qbDAVKTUed7o6xB/K9xLtt58f7
	 KnNDmzhMdELmXGX7MqaxUBMFF7Zw4z0HNEQonPIpzQ3avVU0p6CbRygN+1MOpWgQqn
	 ucNp1TM03AydAzX6alQjC8Gt8vkRHXYhZnzukiPP4NbCDJEKQOJUjSn3RYz0M14A56
	 KjJRs7g3jM7GoLq8az/17sHhxitrlHxM0j7OoB5aE7yVj8c190uKFo1APyL7PU3gOb
	 qKLl0vx2NyxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91341C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122539357.27612.6126438019660972175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e2e0e63229fdae76071aa6e7405402136e264aeedfe224e4678df04fe9b6cd
Date: Sun, 29 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751225393
