Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE003090C9
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760366993; cv=none; b=NenIMavFdZBGqb7STpGhxZ8fumWK9j3T1IjUqaxxN+c1u14nISrG6X4dOf4DIaN8bKS49UlUY2akmsBF8ACzac1zop/o/Zbzraat9TeXPGMYLst57NPeZGHFqFB7lQ+21XpwA7DVisvIuED7u4pKLwTdYDzf5girmjsvPf5rrm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760366993; c=relaxed/simple;
	bh=arZzP/j7TVboPtg0/lUyxRefZlHGoV7WdiBUeo2OeRk=;
	h=To:Subject:From:Message-Id:Date; b=WZJ+2oszlo+2DyFfR/Z7Vg53CEe6fu3UAJ043/JA6Im8ocPxN8/54/fsY2qxpqTtcnv4FC1i8sIPbgPsnNCTr1PLrYopEGCEeRJdx7T/n7CCyaIFoP2IA3JFxEn1uNkR6/PsAyf8t2+745mnRcxRMxp2kJdWV8GHLAGM28masO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHxOXo+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHxOXo+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD90C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760366993;
	bh=arZzP/j7TVboPtg0/lUyxRefZlHGoV7WdiBUeo2OeRk=;
	h=To:Subject:From:Date:From;
	b=dHxOXo+JRNSaXfTV6Kcu6fAax5mw8DM+StJL/jZKtdawiv0lt4VLfnbEoOwD5tbfi
	 EqtxbXYX11OMv4K+alPtr3QyrTYzLMJx8J8fqT2or7UFn4NEOxfFPSV0C7VVrkBCnv
	 ieDuQXEAOBClNJ0rDxUmZgHskl17inyO3pRhUBlZKFSsHUiE5f3T1AEFDLkUGt84ve
	 CM9CKlazvHSbqE+HZFLWvSErJw3SXs/u0VRLHP4XvCzESO/ExaP4l+QsVs2pNbJmr0
	 MF7ddDBFG8JWo0V+NSaGv1moZjBs4F2AbQZz0Vp2QfY155i2F8qX0vqYTIAfVKbrYU
	 m7SjdgwDCG14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D7CCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036699358.12351.439030742585033695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610ed645547254f48522357323e894b0fe56e22d99867584e7de3d892065586b
Date: Mon, 13 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760366993
