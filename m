Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2502218CBFB
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746026395; cv=none; b=gmTtS0jgiVuuWIMlItTWlOeJzUVujmVprj1vzAaL6TwIEld4H6fZrgneKabtKSzfOwp+sTXSExJV9FBlwOLjTN47XHhOGuy7KT/YGh3IsdnHZcYBSqTzXWJ/c34RT6u9Y5Q1TKIX3Xc/ZgtTkhpGkT0K9ZjU/HkBkOEhuAG7+7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746026395; c=relaxed/simple;
	bh=heUq+jizSh2w1en36+YmDonYJpESnd8y4bTlX0FW0ok=;
	h=To:Subject:From:Message-Id:Date; b=O47yZXARRHr8CbtjPJZY5TAIQJmajAjgI2lsykARjCtA4ojwVA+NMacYH/O2NOwmrFpczFbGy6gL3GgMMClp66XkjtYtdL6I1zaG67AgvoosX9qKnjpRJt8s2raLuF6P54Hi0PwwFX6XbxhqZ8ngV5RrP2VqsCIjyikzcG0Cmr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kj6Zql8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kj6Zql8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2343C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746026394;
	bh=heUq+jizSh2w1en36+YmDonYJpESnd8y4bTlX0FW0ok=;
	h=To:Subject:From:Date:From;
	b=Kj6Zql8rBIqKWX1MdiKHCmas4yOfr/FcnOwXoeqcJYPMo5IvFcENrxoHAnXPXBTVT
	 dIqu540soPdeaEGkyZNYLP/qjKYmQuxFdS1ldoQm+ed5DySk5aHryzQbTOGcba7cjD
	 Iqk2PdcbIzo1OT8WAZQ9kdDsLBvWWIoC/iPOeKsHgzFEWwDIKoxTJ24ZAruyWJ0Kgd
	 ZIddjbJCBh6qgNsZ6AatRy7kJdbF8UPg0rjQPr2LpLnv6EjX2ucUjv4kK54MB6Wr3r
	 d70vchJeqqseS24DE1JWarnsq85B1Pwob0SoX4vf9qZzGA3uySxSE6eT49wYBqu9fD
	 2gPWfsj35Foag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE41C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602639357.27454.716688079011903689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb722562b62d85388b738a66518a883ba1f0fb173e3d3cedd99c2c19b4c4086
Date: Wed, 30 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746026393
