Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225F82F12C5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764706374; cv=none; b=QvE0E+w7g9JyLqe+aLmHzcfDdkNoIsxv7EyF92/K9WrPjV+AfRnfLBTEpMrxj0Bkk1JcyWKgpGqAADYaTxYU6mfik18P5T1ysVb1KgtSOE7tO9qd/30llwFm1YtpRy+rL7lxdZIaTz5sBzX+sh/4TL9iILtl5slinuKvNSxZQig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764706374; c=relaxed/simple;
	bh=LEfT6BVE38DpWvEwra5lmm4BwkCcUACGVSaoiJ+Te4Y=;
	h=To:Subject:From:Message-Id:Date; b=FV7bW9A1ZL7slP96j4n2pGfSzP4sHLxZkiQyqzX4JKDtcAOjHbRFtqOJX6rZtk+vhGMJUQQDZSxDvWORi89ktxvbbS2VPjHt0O4/1dhNxVztI8Nhi2i+3zf74N/LJmk7D0o30UlfTT4t+27CBZLY4t90Ar6ZO3hkQpk1dxz2CUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNqSu1wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNqSu1wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF63BC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764706373;
	bh=LEfT6BVE38DpWvEwra5lmm4BwkCcUACGVSaoiJ+Te4Y=;
	h=To:Subject:From:Date:From;
	b=HNqSu1woh9ad1FSSLOdq63YDFxka7PLH3dPhbmrHrOfeHz/9lORemh+3d1phIsq3Z
	 J/g9cIgfoniImns9+dagkA5VQQ80OZL4J1hvus3VIcHJi80N46XxaW76JWQBbCW9dK
	 MZBJqvdC/LM4v+GPeHsFtvKuYLIACl1CeSugVvAx2kokVTlcCY9u7RkPX1fgy0SgDH
	 hpJCrZhFEuGImgX5nPOtjj1gOgB4von0nPdWLUqd0PKuI554eOvVUodwc71UdwffO/
	 koBrlfzPd+yVrrGDl4OGn5wkmHMlxiwRasC77hKt/MWSfnoKa5to3re0UVnzujupsE
	 kuk6UlloxylJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BE3D1266A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470637359.8908.8318946411192632609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a74a609a9e295cd4154c6a31312c86836b8041902d1db418af4203fcd82298a
Date: Tue, 02 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764706373
