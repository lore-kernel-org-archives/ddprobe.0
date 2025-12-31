Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2236F5B1EB
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767157434; cv=none; b=brF7qUJJ2PWTUv06v2PjzXN8rQ+BlGI7aIL1DXpdr+Aks1RDCwPVMhYJrXq6XxdVYZgpRuTGXVzuLokI66t1HXo0pEOmv1UXlAk8UtrYOE1DcgSmNfAcq5DKBISl9GH/NJlENVa2fVCt3o+DjJWtVSvkjVnXq8m4TF0fDYxmP0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767157434; c=relaxed/simple;
	bh=wn90xzOzxIROb+89hBUT2WsGv+kiw0RAAD8v4hbZ7Mg=;
	h=To:Subject:From:Message-Id:Date; b=FfKx0CH8OtmYteyUKXVkVVU1RSv4efLtp64lOG6GVC45Kl1Bv2Dpmdu3HanwFJEMXoszHKityBDBaeNtPXw9PPjJ5Yec+hrxveW71u1ArotG9FZOMDSUV0jIv7qEDktpnk0hojqpzAZalkhqhAwiEn3d7Oh7EkdZPSc6GtOIpDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXXqfJY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXXqfJY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F8C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767157433;
	bh=wn90xzOzxIROb+89hBUT2WsGv+kiw0RAAD8v4hbZ7Mg=;
	h=To:Subject:From:Date:From;
	b=cXXqfJY0Kc2i3lLVkBGnOVJKkhBntq84v1Cp+mJ1nkKSQMBMh6B8yzkitIMKT5RMl
	 Hx8ILLjsF2ydZVxkvrc0Fe7yqttcrIF7i7YEu7t1JwPOSXqTPNGV2+lUVcTSZcWZJp
	 n7+D+Qtl6B2f9c3mXKBX6Dz23EVTtv+xC/hnAmfq170RmebR2Fqq9v88XtDv8PYpaG
	 RtI4C4iORFAWk6mr/BGmflIYwbXmatvQiVUGhX/iK8coOq/4fFySWPOlBvk5SWnIdN
	 PDzjfTE5W7SojvOGebzGhuw+wdnHa+u85OpO8DH0E3znTzSG2pVjJ2NLk61ROn7hJX
	 BMy1owZWMmBRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF2BEE49BD
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715743357.24637.816757060490546361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6accf9d9f7875197aaaf3d8230a91cc59e8f418dae3eb7bd1d1a27fe7fd50bef
Date: Wed, 31 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767157433
