Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186382DAFBD
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750880394; cv=none; b=XHzvovEek0w9ph6W3TA2oVT+CcPiOZJ8SeDfGLtCtgFKKRM4itUoGjXGayAXHay+9OYrb2QAQdqW8mgHT5zlybT2EygjhRapH4qrG7alsfJj3RvrTW7pxqiB/Vlpv97gxHqGhPH8zK2FutAhN15n4cUluixYPD51gMx+A+DE178=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750880394; c=relaxed/simple;
	bh=H2myT5tc3gd84+nPW6ZG4Qm52xjCNODzyVhufMZUlA4=;
	h=To:Subject:From:Message-Id:Date; b=NpZy7d+Pu7Ly8SCCafy82GtodDo206ZA3srFirDqa/gmkS2cvCRENkg5G1yHuiM133DS85onLi7LWOOhINSJOX/pRdvJefKceGnBZuvHyKB/wcR0CsCgV644/r+ZVcRLPsjZlPFah1wrynW17hl+5cK4/kkpX4EiitT/bG1RO1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3mnmmZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3mnmmZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF03C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750880393;
	bh=H2myT5tc3gd84+nPW6ZG4Qm52xjCNODzyVhufMZUlA4=;
	h=To:Subject:From:Date:From;
	b=C3mnmmZTqAjNLBstIvzgVTKIUq+uHJRJO+POWb83msaU19Ov9oAr2dV2P1TB7iSTD
	 pnMIQ1Tg+lc40OaeU09FVhVH35hJAh5ujH8LU/+1W3DWt6KC9Grsx+z1CQUZVm28uj
	 v1oxMc0Ou4Y6K8jqNt48qrlfWEAqQ9GdQI0OKYEXpu+KyzqwuMgQZSitLn9Rt9U+hv
	 am9LMX80pI2rv+C0jtnNO+xRjQPYoEjfnqCHkvm3GGUsMH+WCnzsjh8InqJmsnYs+V
	 B5sCjykuGM/BMFrau5wB6BCOGGu4vlz3b3gCPvpGRTV4AqW4PPPw/u0/7oXgrgk0wJ
	 7W5R56sdRhykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FCC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088039357.17507.13615438290248218451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3dc78b14bbf39cffe157bbd4dbd8ea9890babb854fb449e2cceacd45e402185
Date: Wed, 25 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750880393
