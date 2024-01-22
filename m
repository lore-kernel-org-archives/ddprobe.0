Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE58B3D573
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705942697; cv=none; b=g36HoGDaaNZ7mGMNjoEHLxMeA8tZloagyQyNWCQROxb15D/n8WWeka5Yluf+6FPETc4RJ7TGpyruyTZJFwFpVywIvieBtO/GKY6TbPmpdaeJ2kK47/IX3JnFoD3SzAg6jcmuAHMvuY01anRgQhsDtb6QKJ7SCRZguD8jgf2YHA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705942697; c=relaxed/simple;
	bh=vwAcADOTm6caO9Kai8UNDSeFt/Rr63bz+9BJvKYJGnA=;
	h=To:Subject:From:Message-Id:Date; b=luH4A19M7mRfjgJBozsx4zkR+gvDaa+Yw7fmm0r0er7ePuVzo4C6dUIUhbMStKXH/Qrg7yEuTHSAdOD5EhXb9tchwhlIxM4TRRzAd6qy0m+aWjYE1zH/8GVEkCzB9HSsQN5aXjt/3vLMOneYMQ0RQWkpwVTY2x0ze4zr2yRfFno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRubra8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRubra8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BA2C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705942696;
	bh=vwAcADOTm6caO9Kai8UNDSeFt/Rr63bz+9BJvKYJGnA=;
	h=To:Subject:From:Date:From;
	b=uRubra8vIEcRg6a+TZ9B/JK6hvzLs2evxA/5e/a82ljOZYzodmYTjQQ/VzdkqzPGX
	 jZqJ05sE/ZZ7lANyPn9BRw6NVywxH1jCRLHdJztWN2D70YbZinB1hhC3DirM6SJUEA
	 uLhulLdqpo4lWU1KaYsLUPdMuKSYN0bnniYNiYsGlWTaQ3JHyfsqGOmQNGpZEBrjaf
	 ZXECfwrtqFjbg22Ln7QdKZGDcXLQQpe974xgzS4uBiWmGrg+y49PuuJCKXN9K1us4U
	 t12hji0yDs6LbtOHuiMi3INh3qBQRPhiVXkdTHhI3gt6mRgkaN1PXewwq0GN2vq6/O
	 pA9WIAcGJyC/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF8FC47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170594269638.950.6829685974682351644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f527f9270de995a332eda8dd1d9cfc9b2edfccff54f33e8d772ede93224980d4
Date: Mon, 22 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705942696
