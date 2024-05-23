Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FCC2746F
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 11:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716463403; cv=none; b=G+hMTmN73DzhnAljdMwjxm3YDMIXx+UySasrkbnco0/xf2PGC3G90VflFwSS2lpxEx2iKgY1LX4FFAYjpurqibtFfVxWxakYEPCe7cfd/iZG9V/fyr3WHWJ2jRjoWRwrB40/Q2R0LmS9y+iffMt5ExXmN9eC6XtEyTCdJ0iq86I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716463403; c=relaxed/simple;
	bh=aQ/3oLs2gK0KZ02nwLZa7DM2zJvzA4kau/tcDQSs2nM=;
	h=To:Subject:From:Message-Id:Date; b=sXLIjjX3aIi7dhOX29sQr/g6fahcSHReVqcmdNrHPiJ3rI1giG3sGEzQW/lS3qgEHbUizC6AEU/GGp2zZcYW810h2+LJtVluRjheSlrftBnk/BHIYe0BCOfW5Ky3FFakWgqsFBAWzI2dyhR5s2lo2mJzw6QgvsdWkxvQ9fKsPgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxiYvFyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxiYvFyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B0EC3277B
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 11:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716463402;
	bh=aQ/3oLs2gK0KZ02nwLZa7DM2zJvzA4kau/tcDQSs2nM=;
	h=To:Subject:From:Date:From;
	b=OxiYvFydpdFJk1mM4EjbFxgdqd/7eVnw6p8QZm+KmCmQZtnwO4wXWKb5A5PstBDJU
	 AzGrZeM+ofWj8j4Qxau0qg5x0BEUpbed9vcG2VH4CrGS333/Pacbp5vhx5BLR4BlQS
	 L73hNawf34DPH8dA17xEWZ89ThJ3uOievH45pJ4xf+//Nd8kuIebidtvhypAek8L37
	 HNAcLofF1ngVs57yZlc0IbCQYKDBYU7s/e7MLrCIa5in6snGEiGCkrfi1GcS/nj20u
	 lMmZHR5lM74MY4f1UOxSfRiYsYKFc3sV02EeemR7BiOozE5doA2sMxP+yMHsXaiZ9P
	 ARNFNRBqCzy+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48A7C25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 11:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171646340279.31495.6970308897308072569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f03f52ef253b1feeb650dd9c2ea0fd72daa5171b97cd487a71b3eaf44f53d3
Date: Thu, 23 May 2024 11:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716463402
