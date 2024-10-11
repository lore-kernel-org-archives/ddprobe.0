Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB0B1FAC52
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728612954; cv=none; b=QHUgmtdfScZ+ZlB1yrO6LHsZpa+cRy5tdttiJSNV2eYgRDjYwCTwpz9yEdos68AnF/HfxgGZxir9Hep0qf/Aa/PLRrky3M0sI5/lTTf+3hvQlBJ3cp6L4sBXcwhwpoZBhAabzctnebBR43+UVqbyAvk9tYLgjuyxwXlTEdJejH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728612954; c=relaxed/simple;
	bh=BXUqmIzE+rNtEe+qdPpfSANuSbmm/2PRYMegZdBtkLY=;
	h=To:Subject:From:Message-Id:Date; b=fYVxVqLA/buo/x1jt9QpnvjSJypkEs6QX1Nazbu6DHtvlPE592x/ZOzgTWB/BnlA3mu7uOpCF9yLqkRfcsbcTC9T7AzO2EwJr6AIE9qxPCskLwF0sFOXqgRya1Txz7oFDoHFouyHSoQDWhA/MI9aX8h0NHnrc3kBo2cTzv6Px24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5kOC5gk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5kOC5gk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FBEC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728612953;
	bh=BXUqmIzE+rNtEe+qdPpfSANuSbmm/2PRYMegZdBtkLY=;
	h=To:Subject:From:Date:From;
	b=e5kOC5gkfJvEHicfEUqafYau5I2aUCJpiP2b0gtq5v650cDXVxk2GWC+R3IT1xS/P
	 V1G2973ORVja0pDAg/5ZRukWoE5iXgaj2m83N0nyw/1UnUrnob3d43bPlVFQpKNpIY
	 dx/DdkgoWD8ruQgwA1Ky2PSaHy1cxD8/vUwp6SLET0olnGDK7dS21bagxdHTL8ccft
	 Vk2EdvcHmkMh1VsG6zi9L8omsnlqx1We01Ro4MeTTOiIMp4YUhFHLhVp7Aw3X67FyL
	 y6uiMwLyeP5NIpLaL7giriOmOPfCKsUjmgFoH1QAoFi6uHDx89e//PKnDaddOzlsxz
	 PAEfXqeutTUtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F844D24463
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861295364.12518.6125701475902607853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3a7ccd369db5738ae1642b924ee4fe6659523afad96353073053bd8025e5f1
Date: Fri, 11 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728612953
