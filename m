Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8D82556E
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761182994; cv=none; b=LYtWslQ3YvYrxm2qqq7TPLFNHOr9is7NQ2NKIGy/GI3+zEBjge+mYgs8aj8lMjoYqjN69bRufkyOZikDnRYCi2fmPUfyh+fJ2fOmyr0kcoL4YJW49tiiURdgXFRYIIBNJTOJcj8Snm1mCt3JwTGA8LuqOHTnrbP5jKg+bC+y534=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761182994; c=relaxed/simple;
	bh=0G7ykHPkKCaWEW0GdCLds40ZDzWEUfsWWBBPrDsrIXU=;
	h=To:Subject:From:Message-Id:Date; b=kvwdFZed99yw95800zSIqdBCm7MppH1AAFu88mtgKn462Uk/NNIS8Za8C6bftLB4VS4qCufSAjzWeZi8OZ5OoL23oPMJ4TUXlCV8OtrLufK0UvjC23S156OTcvy8Vcx4qM8eDM1RGIn6Ye1KM4Z6blnO9ecQ6XlSRERggpLWzqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZK7qlFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZK7qlFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42BAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761182993;
	bh=0G7ykHPkKCaWEW0GdCLds40ZDzWEUfsWWBBPrDsrIXU=;
	h=To:Subject:From:Date:From;
	b=RZK7qlFJHCOfcg3k1yBxc7LwmR7dzCo1nZpPIeofxmUamj1w7WOK/xuy08voW0HvG
	 mqkBzZrZMdDEbfeC23k7bgzSPYd0+0fQCwk2aRQIvfrkVhyroMWM2sMY6zrnS2lSG9
	 z7qWIinSROYjGhY1YBdn6k+uChKuWG1Py+OpGu/bz+egQcfZYshQdmQi4u51rVdGDu
	 CohsqXG9Q9u4bTVfB2YazRFr0GVdJwgpIE77SasSm87dFI5mL1Pqm7xo7lYvRlOz1o
	 keMjW59STDFX3G+mdFOHcEipXD64pCdtMAofUoHAPYM+ACqvBsoR8AH60ypOkDRRsU
	 7xPohHpYvzwQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD7CCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118299358.3213.9699384743528474998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7b5457602827bfb4ec57b69727b6edf7c4dddbe79b954fee4c7c129d4fa5a4
Date: Thu, 23 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761182993
