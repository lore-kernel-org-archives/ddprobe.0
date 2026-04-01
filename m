Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CD52FD1AA
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775066134; cv=none; b=sOljM/L/LVTqwGvecM3oUU+sTEndV4KIV9J+I7jGSo35cmBCuKNwr+4Vjz+zPmG4VuvnpJuzeNy3dz5fTGZ4KsmfPznIfrxjvKPf+DH91m7GK/8Q4fdEM8yOyAH633pX9zdEy+kFijdnkavXFSSMIEKhcuEBcNFniMJAPloQ7N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775066134; c=relaxed/simple;
	bh=u6mdD84xEW6p6Wsg9pKvGO+TxW+fGnKw65l2LFwI6ls=;
	h=To:Subject:From:Message-Id:Date; b=Xj/w7ec21GIBjWJQ67u/TmKQ0yy0qgRiXMuwe52dfJ4YlJtg9OJr5gCJBcTh/oRd9kCYm8UM9crZ1P3d5dvDs354gvvPOwNd1WiLr64opnSC2ljRNJeeyEC7wiQg7ZBeUxx7tHgb0onMNoVcWND0L35jVH1Osvt3vlticSV1UmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWmjeRPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWmjeRPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7284C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775066133;
	bh=u6mdD84xEW6p6Wsg9pKvGO+TxW+fGnKw65l2LFwI6ls=;
	h=To:Subject:From:Date:From;
	b=uWmjeRPSP550d4H5ZjwCgcLx2SMsg+5/8liow4r0to14B5aReCNXAm29e+2ziE1yO
	 F7rggdKmplzx9sf8G6kCi5gD5H8RG87KjCxa5o4bYrNxUBrVqlJNj37W1gbL9Z9tnh
	 MyujplrKwbxKPJRot93PU6PO4CINVqWbkGn56WNd9YgfsaC+iOu3z1u5X4YInZ8ntF
	 kaVUe2uWsiqwQdIKsmCAKV9nRgcSpy3lTw48OCBgS92lpoU9Sin36bN/quujHOC5+5
	 zs4m7BZC9Z9i3gu+7PFntFSHnn3JJW/GNjr4OLnQKSIZM4ZSReJA5MSEo/w+Gyshic
	 0opGVvH4sEcfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDFF107638D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506613369.10995.12190075223987088656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725d1fa9d0d458d2c85ec0787e7b26fd659a8ab903476bbbdfc0b85d71c154d8
Date: Wed, 01 Apr 2026 17:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775066133
