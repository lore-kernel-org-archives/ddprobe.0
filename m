Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F33C23D7FD
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760540994; cv=none; b=ByHcR/vf8qcAiXEeM84EsQP0yZX7FemtiKA1BsJSguqP4KsdmoP149h4lIGbe9yebkhKpKndGSJ3GL+CtDVfbTBo16xHz1pximxeuHnF6nSm1RBYVTkglVsNeKvhzb2imnYmDIqArxtC5CQrFKdt93oMWSAenEZIqxB+sae7ADc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760540994; c=relaxed/simple;
	bh=OdB+s+tXI9FQap9scL77rX8Z3Dj3PKrLFr7aXunV3KE=;
	h=To:Subject:From:Message-Id:Date; b=F1KfxbUsg9yETDTSG+DZ5o+jbsRULaFdZ70dEneZ+O4sZQvP01QMSKROpSYHk4U1uWjGhksxYeNGOI703E8KZZbIHds7GdVr3npuYIQBg8pIEjHfum/lO50hgGcy6XKpyGMPUVRRIsF52E3ynw6inz58wZ3aRVaoiPc8CgzgpOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYxkZEYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYxkZEYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A260EC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760540993;
	bh=OdB+s+tXI9FQap9scL77rX8Z3Dj3PKrLFr7aXunV3KE=;
	h=To:Subject:From:Date:From;
	b=KYxkZEYif+mXEdTgF2eqYtGDWwLJIuTNhrUgGkMVdXLgMoVmVFyf/qUrStkjxIcMc
	 vEx9uykWDwOWz2NRzmgRTxEmgfyiCEskBkMJMXHb601cdBklSgxiyFgT9jURb0Qx02
	 hBvf1uRChXChere0yNOPnPel10P/0+VeJlg/jwSbLZDM/cwuozrpmcLL3whZZdl18m
	 sOaxvjuj0IL9bO3JKSFxdA2pizFJGC0NQNjda//dYLkuLloI78ZDv10BCR7/Rxdx0P
	 dGm1YrZ7XDMPt2MJUOaMAhUm3trM93Iq3EiELi8rAblLjRffHaV0m+MFtqp91htTde
	 hzdZW4T5M40Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE7DCCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054099358.20299.421609499698531915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235f9da92b9dc4bff42359a2890605296fe60eb0ef8977eb0159fc50b4307996
Date: Wed, 15 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760540993
