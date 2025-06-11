Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344FA227E90
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749623994; cv=none; b=I1lVhzvTKdjWmoOnIhTM7Zbf8UwGJfnoG68rKwR1f32voxeqPlxv4ZRNpYGD/W87H7lVxsXHe3m4GOIiJcQNsfwfZrmeEhppEO3o+/SPkwmsgoNFrfiRJRyAb7ZZym7gwzdNMOORedZTWXpZm9H+hZyyZKjVAYUthXF45x8OFYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749623994; c=relaxed/simple;
	bh=oIOKvU3addzw+r2VEWovX38WBPSsHApdf5bIlgn7nrY=;
	h=To:Subject:From:Message-Id:Date; b=VgwU39YKFat41bvsNfbN435fKs8uO5CmJkPDQnHDay3MiBb6qT6OydT+3rDATQaxk2PNNMdy/xQOBTGEkgO8G1oOPprw5+UBw3XMoXCBmHXI9CKTyWL30ZBfkFTowjovgP5WK3b/lZx1Wht77WPhGFvoSmFBU40+piOAo232i6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6XyoJQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6XyoJQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB204C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749623993;
	bh=oIOKvU3addzw+r2VEWovX38WBPSsHApdf5bIlgn7nrY=;
	h=To:Subject:From:Date:From;
	b=m6XyoJQbfLlqlh7fj1VOhOMLODAxeuy+GZaf2yQuHZOxP+FdSzKU3KJ+d2aY13Wpd
	 MpDRtp3fTpqYMUSaRYceZeqjzmEMz5kEDRGKCpDqfLCDJhrGSOEvnTKiqV8bUIQIRv
	 odIdhHhdvA60jvHX3A6HdVaCPZjPVpZvbTXaPab7yKh9WOTZ1DjdRUKNsf5vNYkBFy
	 r8Fttp788sXFAyR9KkL3I4kw8GidlqJtkxnJv7ly1XqDtOGGOHoD7Agk2+rjQQ+hlZ
	 MCsOFIqCRIXwsHhn/5ezgOPzkVQ48vcGzAlGaZc7SxpSTxRWhlnSqe1wN/veacFv+P
	 5hGfwFleZU4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9452EC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962399359.4531.16408902232876563365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eee18695aecf5b06aa19885e9fb5c2cec73af70450ec5e277d7fac03a5b6ded
Date: Wed, 11 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749623993
