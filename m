Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21079288D6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772538294; cv=none; b=AYT85MXqwRJ8k9RAEQuplucOn4B6/4kEMDySvLcFPffzieuhrou3O/8rxqL/KFhQ+HrGLodG9CxPBn1eaQY1erZ3Pveoq7+CtZlKGGNNndZTWR0JRa+HE/bMNq2YZff95CoQwHTEqU2OwIDyvMmh50v421i0s263MgL7yPonzLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772538294; c=relaxed/simple;
	bh=kfPTl69bWQCGsz10I5qLRrAhZAs2LxqrY78MGBYfhuU=;
	h=To:Subject:From:Message-Id:Date; b=uJq7IQvTrYiWCdSxKXD0q3Eh4X/hLKyUKQBbdpSBAQFKEJH32Cm/wfWGMBBVIb9bBqMOjkel6Wl/PUs44k7V+vxHjFWQrBuCGXfgLe1l4JpwAOprbSJWNdyiVQfpK9HXIJngzMd36K5RBY/IXdBePkbO/kO/2r6nSKxxVk2G+jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOG2IzlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOG2IzlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B148BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772538293;
	bh=kfPTl69bWQCGsz10I5qLRrAhZAs2LxqrY78MGBYfhuU=;
	h=To:Subject:From:Date:From;
	b=kOG2IzlO6XL838fUV6i5zRdYkNF6w1u5QpzQ2YEGHLTcZv85TPoV/pfjyKTpD2x6O
	 Gy9PKVvz2nlnbgqyXQRNDZlmBo5h2+LNU8QaVPu2eDku7r6NBhsnAuj6osxCn5solL
	 gYEXDwCfj/xiet8/4fncxHU8FwdKSWQlYGjzXrfyNZjR8Id4dm8CKIVIo6UXkwY8XA
	 zHmKL6ZvgqstCgJtfm+G5pWlPPCeHLaEtgDAwSWNHFIyZRLE3dvyfOAGV/oxXAaIIm
	 cOzUAikAmpBsfuDi/y9dlr/6NXh7RfQiJtmD50MyTOnZ+EhQ1uM5aaNTPc/Vuty6L8
	 Xt1FKsRUDOfwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C66EC1431
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253829360.30575.18235907251042151161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1541f32e13e8b1e840e5f014df3a854f3b70b67e5fefe0de977fd206841d4b9
Date: Tue, 03 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772538293
