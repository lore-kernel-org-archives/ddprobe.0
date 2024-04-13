Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54ED11758B
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713043163; cv=none; b=KOUt9m6q9GFz1DVHu9hyPiAU9Ysd906TNUzMdRoD9TTWivmeSDcoxpov5yqrISJqJ0jA6VY5lwGR0pWTKLns6VK87snVl7o2k6fja/CcDKgFpjAC7f2/38t6yPmas0u3K8esaawyz7f3qOprsaHtVUGBvISRJpAQOiC+Cip6EKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713043163; c=relaxed/simple;
	bh=nPvYkS+2A2D54YpKfUbRq2PaES8tOA8j6744wHUxKo0=;
	h=To:Subject:From:Message-Id:Date; b=TqT7C0xbsZJcgZxhn4cyvFpIa+Mi9M89YGf6X/1jq2z2E4bggPlO8CY88PiDonS8XvS6V1iqy4x1VlSnn8DDs6VGv4B6/sEyGcpOvrayS6QKsEh+ce2U5Vo3rF7RwcxUv0ZGiOvXWJoImpeFoaQ+sDLxCtf5aetQ2F3p8bNKOvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xf+YGFt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xf+YGFt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEEEC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713043162;
	bh=nPvYkS+2A2D54YpKfUbRq2PaES8tOA8j6744wHUxKo0=;
	h=To:Subject:From:Date:From;
	b=Xf+YGFt0M8B/WPHK8jdruRg8D32bDDqjqZkuViwIAc8ubHeZBqzc2W+s0KOZSWm3M
	 sorWdB/k8zVHDNcWib7corDVJMhR6K0TxVx1pcwr84Vo+sE5ZZz42+oAQ7N7kX9FRC
	 SNECefr7PXRPSJNlE573GAMgNl+WKT/gfic8fcSNEh24cPEkUtlyujb4opfra3GX7u
	 5Eh7IQ1FmGZHOIgrvEpPos0hfJTmo7xl9f/urQR8Jm3uF06FjFU38A1VO1C2szfb/P
	 8nl7zNALLPKSsXgJ3ce7HEm1MrXUacBO7t3G0Ls05SXUmcRVBh7gBa/FCj7YGA+mOK
	 47eaq7P9Qz27A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BCAC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171304316279.14842.6106742291419964878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915b3ed553fe31747557c651f6b6573f816a878dba582dcff00cf318e106c5a4
Date: Sat, 13 Apr 2024 21:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713043162
