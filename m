Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FEA34BA20
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780026754; cv=none; b=fBQpozdV6U3zBgiKFvAGX1t6mPzIblUqfcWX79/4Nn8+4gODd+p/743rhEJPzK3BLW5zbQa4jlKC/xyJn8A0NqS1/pEFbFKxo1bAUkow3GzsPfnZ39B35xxuD+GzvYm8v5j0HUFylxiPSGz93nQ3dvsUZmzgQq4ifZM9fviHsds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780026754; c=relaxed/simple;
	bh=dK6eMKOoBraNOvBREKNa/qRIUxqQubTnoqa5kU+a1aE=;
	h=To:Subject:From:Message-Id:Date; b=bYqdQZATWX35mV1ENp7ZAq/De1B3q0PdS2H1kJr85RXUFn9QHxnzg1jWfERMnTRLxoilsDMAz6mqUlvFRpo+rGqpkWV0VW9XrIKS8No6/ym0WbACrMrEun+3pbj2rA0KaYebnPgTliOi1lKYl6cBbVNwRRiCrM5j+OB+PGxDAvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5IoBmu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5IoBmu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B89C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780026753;
	bh=dK6eMKOoBraNOvBREKNa/qRIUxqQubTnoqa5kU+a1aE=;
	h=To:Subject:From:Date:From;
	b=m5IoBmu3OaAgHVxQ5wL8Np+t8LlheJZ8aXSw2C/9TdAMhT0JupJi7Gvm3LhtDi1Ax
	 dSKDVkwK3y5ktYEzZCDB4h7jPjQsh1f2iYcRMb3N2pJrSmj/3npOsgxUNhl0Lkpy3S
	 u9IZ/G38104kCzeBR+2vUyEyE0ZvNITVloGWNoskjSyUGOH0BG3kAqZkDtPrnD6T/0
	 Y8m4aNE3VW//zcEOLb57b8Xl8OjnI3xEZJU5IRfvzkSs1/iMzVWygdj2BYSBS2YYrC
	 MDIItm0YS+q7wclTVe2D2U6hP+0AJ7dOoz1o4Al3sZYJGmECVbyS5Jpa2dv5tVLo4t
	 QQrUiOKL0KZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E63CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002675368.31431.15437739300616352182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2695ad003325ec5764285b125147feacd0ceb0e6560061e8f8987289444a453a
Date: Fri, 29 May 2026 03:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780026753
