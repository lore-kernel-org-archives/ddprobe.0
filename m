Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A09621CA0D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749500994; cv=none; b=HdArieWZ9cTq0xRnamLJOiuAd2XuD6xX3rJA2IysvB15NbQJp+2kTwt3BEI2qqKDiNDcSSCIXIhiegS2wKpF1JLbXd7MSJeM4maXBaWiAg3sHyzGaBso3+U1iqfFxq5ldP/lOcj2B6ojRjps6DoaEZ/TNkcoD+WDG6SBA+NDdKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749500994; c=relaxed/simple;
	bh=R+WlUA9x7YI/P9zrapwMe9nyo7GZ8wTcWuxDv6cyYtE=;
	h=To:Subject:From:Message-Id:Date; b=rjYAS2fdKBxFxiHMTtdKQR7MoeLvJhCAGcmq18RNfhMo+EYMqiVQFW/bUMBTm+rflnPDuHqdvM9Zg4RSXz8ijwFJQj7aViP08rUXwPqCVQ5G0KSfbOG0ZJfIJzSWlkQdH8atVLCrcWpxjLq5IfjjYTDDSAACFyC93t6ATFm2Jts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4QNFboJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4QNFboJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3A0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749500993;
	bh=R+WlUA9x7YI/P9zrapwMe9nyo7GZ8wTcWuxDv6cyYtE=;
	h=To:Subject:From:Date:From;
	b=m4QNFboJjZ6ka5R63ns6eIKFNb/rm18f+x5Ar0+o+amG1JxreIaou06oRTUzpRErM
	 zd78wy4EYZqmCQXcVC+eBRduphdHSxPHGF92A/zV5CYb4q4c85xg72vPkWlI4peHaQ
	 9o9dpAJeg54pjPZ0OsV6liHJX1h1KcTvPge2YGH1AMY9KqylWO0Dak9oYojNvxOQKb
	 FSL9N63XqDIyBEghQRxrTl8hpEsIC9wXVE79tpqnWY6E3KoEgiZ3zRG6MhBCB64E1v
	 cGG0fKTAmXgriz2d1AMxSIBBF5JifYg0gs+n3EXXBEYs01j3Kb5xysT6Nn5nquiOuy
	 uVVvvGk4a1raA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1BFC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950099362.17742.4949610036465957654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c5f0ee9fa2d4ac3697f05383a6e9728799be121ceeb187ceca18e4b521ab1c
Date: Mon, 09 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749500993
