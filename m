Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5A52943F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738032954; cv=none; b=AeJaJ0NKI3Hkn3Xo+PToxYzr0dyoYT05G3ThWbo94cDzTJ292V65boKKas4yGK7wMY2wZnaSGwLjVizU27Xw3Prc2QvJ+Czhg+1Xrjb7a3OIYAI/X2NMtWllSdm28w5TiHKhnl+e49nPi11p8RvGZpjjP8LKZ5iMSA21A7KKS60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738032954; c=relaxed/simple;
	bh=p+frrTaVOeh3GmEQk/oh5ud0mak73j6oeam9v68qu2A=;
	h=To:Subject:From:Message-Id:Date; b=c2d69wID0gcR6kSYg6owBRFJyW0Xs1iYqIid05U/ktYi0CofPvBz703ezkJQS5KetIaFJUxttoCYoOnE8Z6pN0Qut2hWzMaIAEmADUABOe8Lw5MPwQvCclfxj0l0Oh2btgJ5QSAFbU/8im9j6RuNFwcX2grL7W5vTxVIqXOIJgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZZdVZxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZZdVZxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B40C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738032953;
	bh=p+frrTaVOeh3GmEQk/oh5ud0mak73j6oeam9v68qu2A=;
	h=To:Subject:From:Date:From;
	b=AZZdVZxnuvLvWLnUdLH9F2jmD+AzNyKdsKxeO2dhE/Kssf63BCX3kEslilMkhffpE
	 mFEHcsSaaaxe+4FRg53y3NJJcOK4sFFB3QLOwOvlC7W1ucBBneW1O7UewlBpi9z/O6
	 iw5BDQBeW1Gmq62hIaMolgCSxzKky69bi1B2e1yRtbez0oNVZMDGtljB6jo6MhWmJd
	 PxCWoTut33PqxLss1OIoDIalhvLGSbyi0AlMSunLJoXkftJKypP7FvkTywTmpMuTba
	 lxGhSP3PSCJCAZOIw4ypvcFbanZHMcX74dMKifKdh03RRIuNZZqbWIhHDYJn9BFDmu
	 ddexLCCfrM18g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94971C0218F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803295357.24372.10489211354495407283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b629b46ea8df6e00227d9046dfe67cfd887fdeb02dc718898f6e2668c962b6
Date: Tue, 28 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738032953
