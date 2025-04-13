Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425B42EAE6
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744543194; cv=none; b=n+dAXHaZjwzCMRFGcoe9oiRjb0LwGmm8Rid44+Jm0kLJhGKLdL4xMAZhPYWc79s7S4j731scm5gb8kqEJjWcwylaQ8P/Xdl4z55mPdAnkUe66W+SKKdf9ceenIbSxWwYp0OaZKUlS9PSYMCgE2QSHOv/hUoxlNsVcL10QY8XM38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744543194; c=relaxed/simple;
	bh=+HB2Yrkez29Av8yka2odzLbn0E8AWpc0DwBBiZ2jD4E=;
	h=To:Subject:From:Message-Id:Date; b=Zog6Ho8sW8kTNNeXli8Rotv3rgN+GHbez0eOY8Mkj4Ei5+ElDTBW9wgH2E0F2LYiCqndiY5+EyxCUdvbzpZES1W1ME3VSxKrneIi9CG33DqcWYeMEvJA1Vtc3Cl7b6SfTH7HPfpucM5XehhvP+Av5y4zL/MQGWqjCKpCbwuXnng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMbc+hwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMbc+hwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA986C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744543193;
	bh=+HB2Yrkez29Av8yka2odzLbn0E8AWpc0DwBBiZ2jD4E=;
	h=To:Subject:From:Date:From;
	b=gMbc+hwlJ1hcRQe694Afa8/kV5ft9noFwCnF+nY8UJXbwqlRbaehtLZ/0UHYFBdbE
	 +Z6JkvKcdMNl9Y9R+Ccjlo4hm/TKQ3uyiaUIdNHbJv0T3uwDAOGmYg7gqCXzkccDnX
	 iKpbhZ5sE5/4jjHaJczLP2Kd7up1qlBk5lFVhMv0nxZ/UQ6uboqf9OcsfWKzRBZwRH
	 DZqpiYrsxyC+s79DnlmmPrP3G8ulpc+LJN9wyOoRLwlAXYy5sN7Y4/LAsh4LT/QEaQ
	 5tsRecobxKynLbpUoKG6brPO6yRRjU81wF6SzbfT7bXH90qbAZBHh3RkuMRvgxHmCF
	 qpEAVyIZp4G6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1D5C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454319358.30109.9322678414016655711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1e6fc38c253323a2b37d1ee5809725385694c9ec3124e531d35c5ccfd5b5f8
Date: Sun, 13 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744543193
