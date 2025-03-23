Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7CB3D561
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742768394; cv=none; b=DS07ijEITW6vG6fURLC+2YF+ZJEkU+I2bLepXC9bmSiEGtWyxuMHX6SANaCBPvRfMy+OMfFA9D12ObBgO27ynqbAxmDS8gUmPxJXmd9bVxHeBd2XaedqFzjJG7vYM131jpnuoXqlgCXV+ekLka/tRGWgh++hSCaKzKVoQg0ze+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742768394; c=relaxed/simple;
	bh=1+kMc68rYM5NslSaNPAYHfSonZpCILBsR5inABXZ82A=;
	h=To:Subject:From:Message-Id:Date; b=nhIn1qKgBRA9isTIN6hrP2fULURL6cvEMPrdd7ZNrqJgblTtg31yjjQuAAM7DZkE8pQtwfpILdlj2CUPlT6Y71zCDyrXKmi8yfqs40Spx4VSJKEp2VpXvSwj5fgbhm78/fYYnxcYu6FBt3HBavVvCQPaASQB+3A2kxBRh+Rxecw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xd4uA/V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xd4uA/V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA344C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742768393;
	bh=1+kMc68rYM5NslSaNPAYHfSonZpCILBsR5inABXZ82A=;
	h=To:Subject:From:Date:From;
	b=Xd4uA/V2e1Gceme20wS4ykRpG1oVfgluqmWX9I3DMVfSXM5DBu0+vS2T9K0SBA4R6
	 JnqsV0EDD8MYSM9i4Ce10U2+eoVA7GM2qcX0CQm+9bBzo7zHMUcNWnt5pQZCJ/5od7
	 UDWEMdR93HiUY5eYFeunqkQzviReoAcI/I2WNO8+dj849poZUiXwpj8WqaLcDIhR5c
	 UYtZTNd6JupJbASS08B5AtcPqXsYmv82LVmYalxFb61N4BqCtqDqtzPAUKqV+MkLJ+
	 n3C3LSltLqdXaZ60mRTKNODY+2jax1TU37Fvlqfor7Dd5735/dQ5mrVEAbrKKWeK6P
	 tcfvMNh08RylQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68B3C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276839365.18557.6451825390878803815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8516b914cf48cd94823c2883fc8cd0c4da767d1cf58e27deeece1fbc486f746
Date: Sun, 23 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742768393
