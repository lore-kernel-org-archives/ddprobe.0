Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA8C37FF58
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775853454; cv=none; b=XtDLpXfBdl6gmr8d/lO2Nz3dO8zbnCI8LiW1ZtXvsJTdcNYXpAKhZBolqyGwE4jchIzzRzxc3ApVUuLRcqMNxL8BLAZxOfR8Urf6OfEb6HRpUQzWTcVyKftmWG/WyPFlZjCI9DouvqN5BwpHOht/0lvzD5bWGxRXw2tJH2CoRF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775853454; c=relaxed/simple;
	bh=qEG2XD4qel3fCyV6dO8BOGwVcvSjJMHID/zK5K84ooE=;
	h=To:Subject:From:Message-Id:Date; b=sncafd1vPlwEN+xOkbJzesNwygDS+ui0pYFMhcpVrSY7TmGlw1ws1O/XCQz7Zua8qrF15qyVEwCFTwpYeGxEwm+Gf08kG3UwpAoTkuubLrucTxmnph2Yyn7IANPVjxllivoBx/RDV2Vzip30q4jfKq8Jz50fiCVM9sSsTS2dkgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJAGa8O+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJAGa8O+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC5FC19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775853453;
	bh=qEG2XD4qel3fCyV6dO8BOGwVcvSjJMHID/zK5K84ooE=;
	h=To:Subject:From:Date:From;
	b=IJAGa8O+ZiHO2qpRGopPcCTai28CYF6mbfVbFx3031R3tOVOFLF0YZW5lYbpkV6GY
	 QlLJReiFvT+WmMdXqEdJeAgPY7RbyRi+/j94bgqClcWWW4+aIBDf9hyk0UJOjNoRAk
	 7NaGtGwUlfdsUmXqKlTmumorARdYpaHTj/z6UHEt+2wv+64XvH2L/kZgNy6YcRxr3P
	 zGg0H2A68g7JmN8YZ0gq6iLORnRTxJzpaEANjuG6XNf/jKKJRv9pZeo7qzguczfBWx
	 w9wfWHBCtfshxwp59Ot4jO7yxkPSgjB73iRp9g521VSPqxWpF6PpH3IuLV1X7Yq30o
	 4tgvtfm4P8CCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB071F45A0F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585345369.998.14764581150387154414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cf99eabcacfb4bd595b12f3ade291c60fdd812c86ae96e13dd9799a9f94982
Date: Fri, 10 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775853453
