Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389C313A86C
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759029594; cv=none; b=XpaZBdfZd7Y161YinlTR9VSAp1EJSsW4E2cbFJVgYF4nCN3QWjuwp623uYKG1alR8QyPkH4eliFhE8kkvhE6L4qNV7txbAajm0X0TEgSLAspepmzkmz67lk4FjcHf1Sbl1Iq9zsoWEB9u7VUVRyOVuWXpw9kQanwhmOTM856hns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759029594; c=relaxed/simple;
	bh=9/nqH2j8lKaMWcGaQ3Byl70wz1pEPDT2ln2S0Pxe494=;
	h=To:Subject:From:Message-Id:Date; b=QdDxQB1t6sY+8IypCLrfULO5XqeQXpMVdTk7su6d07AnJvdCEeq7uRq/LmeXxbkqDdhiZQ3JPYCRlaFyAj2BFOSmZTZXxNX5YxcN/HWMw4XtZlobgK0zKvTgAxdKS0M7FeGP2n6pC78s/3Xj5wi3XxN4ziceFl9Otvtgi2SH0Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Le/z7rnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Le/z7rnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A3C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759029593;
	bh=9/nqH2j8lKaMWcGaQ3Byl70wz1pEPDT2ln2S0Pxe494=;
	h=To:Subject:From:Date:From;
	b=Le/z7rnpp0uK+rd3NZ/S5cG1OIYMTNSujCSFk5Eui/UsaWKTba29598MhlCFYazGc
	 3CpBrWpfvRw/okON5L9XmDSUtMzo1Wqyfu+tsDrr9aZEHY+H0D2G6DZgVdaAldTSLA
	 ej9V7Yt5roAy8WNjMzbLdlNOS/NRjXW5kjSsRgRLTkMqf6oTiPL5wU6FgOnmtBhjwT
	 YIHTJNd5vpFqBJs2qX/0IHt7YkuNFGFPRA2r/QRJrYjpSfq+DBC4JPZHdeBD4qHkTv
	 ANowjjHT4CuQk3fPAjoXNlb4OCvHRpHoSyPjFZSjPeZsMABK5bKRj+01LS1w4hwZSN
	 wi/ujTXmIukLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B39CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902959359.30308.3449944919547588966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5adf5423a29648902d0042bef491643b607b4cff922b56e34bb3ea6e346da74
Date: Sun, 28 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759029593
