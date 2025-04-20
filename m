Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1AC1DFFD
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745110194; cv=none; b=qtRxuffDPWuak54mNtqQjR2r+1VgDl6Q7G155raeaZnfykLodYLgGhzAbZVBycZ6dk2iW0ssBvtUxnkEnJx2pw2iOXh4kbSxF94yDfFnEE7BFW0vr5i6IJX105Jwqh5BF1/SEKpP5pQ7vVzIAEQFm3FZECS+TRmA2TlQRwDYXUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745110194; c=relaxed/simple;
	bh=ZzoUgPh1wamGkF3EsXSEEfJ/l9MmnJCrvyQmA82QfsI=;
	h=To:Subject:From:Message-Id:Date; b=hAq73weVP2alibfhz+WUwPP1XkihlRiJA7TBOFyuHXoIBp55qUNA+8+js5riGVazWB783+4vgkCmgO9Hr8W7hk9u0GZEHX4ncB+EDR7hlGuVtbiy+BDjT+8Xhm9mqssk7V9b0TYVc28M8CnFiCzctPQThd68i2djPyeR+piwT1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti06IVxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti06IVxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2747C4CEEC
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745110193;
	bh=ZzoUgPh1wamGkF3EsXSEEfJ/l9MmnJCrvyQmA82QfsI=;
	h=To:Subject:From:Date:From;
	b=ti06IVxXiT5sX+R4cP6tgAoHF9FyUfkjVx1NLC/QQYkflnZU/rvIZZnZwkVnxVMxt
	 mpOOJMfeo95m6Rq/igLlOlTZOKNTK5WmTwj5ImHeKgRWqLzG1GNKPRMKLbLjb8C9Rm
	 vVEzurwFV+0zIFmD2R2KuRdAMERBEEm1V0RNsWRLrcIQsJlluhnxHI/G4WLv0LvuKG
	 YesNdDU7/gM+tnB95jRemjDc+UEBqtu75Xmt6qyXeJsEq53dUYMCQq2jS6y6QwjT9q
	 zdlKxhBSTLylnAuuM7wcTyjtZpj0Y1UUPGDg1Jtm9sVEsUOLFtBvVCiVygkqE6Kl5D
	 iasY5uKukF66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9444EC369CF
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511019359.21717.1247540766810413747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b554b9075cdf233303f992893d6f45863e30414e65a89a72943bc44661a3df6
Date: Sun, 20 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745110193
