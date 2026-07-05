Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D75C433E71
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783242514; cv=none; b=Fullly8VFsOlkhzJezkJTmSiu5lmabgTdxRNYbGlPs1HGzbKrzj4pDyhGsi39YqUHFnKzoDCY2syttyp11PQr4fjvcTA4BGJovcuEpW4I70tN+4Px2R2XhqzrlOerBPZd7CW3UR8K1/jcBctBHhEd13W3iK97QHswhOPioz0QiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783242514; c=relaxed/simple;
	bh=zYUT53KXzALnjeE1UW/pGBW99Gi4sQ+Ry5PF8Y9RjqQ=;
	h=To:Subject:From:Message-Id:Date; b=OMIlC6ms46Nh2xW4Ba4BEQhz9iNo6K3PYN+BUdbGGjKfmNy3RZ36lqRVbaRnC7G+fMr+X+Ay3i5hPPimmslUD0DeoqxT255chfb6+Wmb1hlZXiLxCpYD3aimuGcJ/fyWx1tBAcLofAmINn4QZi6q+hQW7N4LstZXUt6N3OhuSis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu7OnaOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu7OnaOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBA4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783242513;
	bh=zYUT53KXzALnjeE1UW/pGBW99Gi4sQ+Ry5PF8Y9RjqQ=;
	h=To:Subject:From:Date:From;
	b=Iu7OnaOVtcmcMXM2SLiNKKgodFqbcCz+J1sl1cn3Q9g1maEttqAz21/43/kgecRfd
	 7bDxSlqoV+o6rE5vxkNP5vkaxnoLoj6graiCHlH0sQeuUtNQ2E41+REACc01+oX+J1
	 a6Z6uCNtkWnBDnEm78zs5xZTXJvfC2usR63Rv3Lejg55pDKiJzNbyE7HGszjzaAftN
	 hY3w1g2qDU5W2P8a+O/IWDPxSydHEdfok35GBzAk1kAJbiyVbKOP6p2R0EGVeXVN7X
	 KBcpZadNUYIPc1LzTvxClIjPG2BI5552uK+IfmVVC82uXtw3MnDkdNPyxq92oduCag
	 kaRyGLSs0TORA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF7BC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324251368.29213.8106463992050997877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d961127669a1ea1a0fcc6866a4d5007a3977a428229cf5a3baa83d458d8223d6
Date: Sun, 05 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783242513
