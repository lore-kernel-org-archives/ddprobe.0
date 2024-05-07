Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EBA7828B
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715078543; cv=none; b=VowWMrRMmUlkMhM9fgM7s2nxKAx4ULUNDOi1GRl3IienOVYixGshY85Rqz508kxpzg9f7VDSh1Y+IVtJQtx3DZ3aLDNoz7bnHin9dSabAgyHZ3MnhKaPUxq78zWB0zxk8gv/yqJEFC2Xaut04UQVCjBvHuuIkhTHpHSeF0pXR1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715078543; c=relaxed/simple;
	bh=xeI3ftrkMfBNpVlwua9JH71lW6dC1W2BaSzKtdU4cpw=;
	h=To:Subject:From:Message-Id:Date; b=W4RKISZUSwByyKxN89y3Kqc9MT8/AUYMjTDsbc8XZrGjcgxNNnnu8QuN3F4v89tE90EBQJ2U89YeAPdp7YleyGXbOvodoIOGZhTU0Aypf91pSCzwfhEZJFTTdOeUBllhWmM+C3F/alsCDUGWB2Se6UWMhdMWK7+GzivX34kOXxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fe5dfU8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fe5dfU8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C2CC3277B
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715078542;
	bh=xeI3ftrkMfBNpVlwua9JH71lW6dC1W2BaSzKtdU4cpw=;
	h=To:Subject:From:Date:From;
	b=fe5dfU8buunBmnifLhXF/G9I0vZ/tYwhTpOPhJc+4wbObUbyAOnKKfUkhR502LiXd
	 wZTjstlL23ifyhteLzllOf/yqt3eR5LSmD5yiElfbdDc31lLQCFWKJmWSHoVUf3CQu
	 bb+hgGdDTMwFNLC/PIv9vTiptan2MDLhqneUYJZLKZcbdJt65+6XRV2fUtsZpkEgBw
	 8azinZr1IfKmmzRYwUB23kRydIKfeCkmsH79KlO+AfeI0gLk7EZmbTp3lVcliaWUX1
	 EFqW9Ydod/SH126x0/suZSFa18CccE/sSJUz7APi0V65OM94iu8PBXmhwab+8DFxFn
	 Wte8J1mDrnmlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE146C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507854282.918.6291186722370541467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da0ffc8c3c1e7de4d943d422cefe249801a9f31d1818bfc448bd2ed81fc7f9d
Date: Tue, 07 May 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715078542
