Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8AD7E0FB
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706804897; cv=none; b=ZlUVQ/rGt0ieMkVSMVLEnO/Bc6K5cSByb+b8VMYCTnUgVilLVpE42L7yvLl3GvlfOSoYtXodY1Zps6OkVsgRR2MVY/j3UuDlIUciYCIB3a328F0HBDrx5BbbImf+G8x6Yq42YGmK5n81/pnUnC63EzrmJfQnvi+RBZ+SM7XIiUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706804897; c=relaxed/simple;
	bh=DC9YEyCFJgZImod09RniofQOmIPO+FYReX5wcTZq/mM=;
	h=To:Subject:From:Message-Id:Date; b=RUgkEtmpbmwGy9MfTsBBgrWUSO41QvIOla08YJfC4qtW8+tk3Ef9EDrHGGuF8tBxcbGh6xJVQQSEbvAnRWcBSoNp/jsN2QmBs8Q3gX/ILqzIxJKba4lK25iD3FUd/CoK3xZvspiamS+ZTipuYDg385EYPZZC4Qm5pRh4TZvlQL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6Elx6mL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6Elx6mL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CA7C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706804896;
	bh=DC9YEyCFJgZImod09RniofQOmIPO+FYReX5wcTZq/mM=;
	h=To:Subject:From:Date:From;
	b=I6Elx6mL+coA2hbK99Ua5t/bPO/5mdHxhRifKyUBKN9eFpS6cIvZsVFKcUg/X7HJs
	 N6QjAEEBOJYLMj4Uu0v96hSpqZA+0Bk+pvID1ftXQ/vV0S43c69stHzVVTXV1TSA6Y
	 sdmeY/gIWABCxpaOQQsSKmjunlsUouEGyOB16QCexZVRTn4061cRJGiAvSKtaClAmd
	 AsbavGMFbGrfGY0RTXEpoE4TEMRHQz4VQkbicPtr6yzuSFMf7cI7dCVxbxHw4X2eym
	 UDSPRG+P2wQeCFjTg2z0utAN3NH/ILf1f0AJRE/mSF2mtws+FsS8FckNqSZzkOiEnd
	 Nrj5GeQvcJdHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F088C48286
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170680489638.12696.6017770993697565659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f970a33249043131c5cdb571802892c30f917383f12c61ace9097c826991a0a
Date: Thu, 01 Feb 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706804896
