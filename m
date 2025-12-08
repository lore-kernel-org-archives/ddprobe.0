Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262AE221D96
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765167174; cv=none; b=N/Q72WKwohd2JsXmvBXENORpc8du4vlcFEmlpez+hjxTtuKbMccPZLS+/uBQVmAv+ENoCoeu+w3+4+VA8XqWD7ErCHBuofCCmG7ORVdcikyQIaTrBs5EL8PjNvRdHjqPS1zVhw49FsyuE+g49UgJIDDl/u88fB6FJ5mUFj6e540=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765167174; c=relaxed/simple;
	bh=7qQGIweLtEDQAt27b/SnOoXJa7cuOat1ucb/h26qcwM=;
	h=To:Subject:From:Message-Id:Date; b=mYOt+1yT30aPuBnd9J4PVU6FrIpldiIlOXLD6R8hWrtauHyLhxGZMdf/H4I9UgWDH2Jt7oyx4fICj/g7qJcDN1iP++Rv852hNdCmT0eTt4OotSGnrlHjVF544DbnFNAmMSvIxMy3nXZ/lgdjIfAKVbf7Blo/XScxxvQ+1dDzW0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bonihNd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bonihNd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76B7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765167173;
	bh=7qQGIweLtEDQAt27b/SnOoXJa7cuOat1ucb/h26qcwM=;
	h=To:Subject:From:Date:From;
	b=bonihNd5kSHuXi9Rn+ePDKE2rFnc/8H54VHKjdVZTwajdVzIG43zLWOmuP+R3HC/l
	 pQBNbXqKP4Y6g7M+opaxQR+bzyOwHt+4WVODLxoeLb6UjLn0c4PqJjlWuUl0MOB2ii
	 nH0oGDIAnLCtPLAspJnx4gdQXMwyhq2M2jJuFXgbso+v1LyJdWwwgrLRH5r28tOxUa
	 a9jQO9hw8SEI9D9GMoezlmq9pn9CqIjPmdduKBjCxF1uHDCbdjJfTHdCjXceP3XtuY
	 qKmtGChphpOH/Ng2DPz8qhnT4d1pviuu6dR9nvaXznlmVqpdWZOdo3JUuz1lIyXnXd
	 /JfYz6d7/AiJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926EBCEBF88
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516717358.31853.8021590265247288857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a92e976d2dbc8c10709a65506a67ed1e7d395b8230beaac801003f7f29492e
Date: Mon, 08 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765167173
