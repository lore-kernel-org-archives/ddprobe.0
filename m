Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681AC2459E1
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787268034; cv=none; b=GYhGSv+l5XcLedHyq+7+Gdl1dVPmd/Sq31MmMp1F3QRn7GBGwsoDuAdNavrpolqhv05ATunBHCKBU4lLMm+7hEemoeHBkjq/LhssDIEcqFvfDutoAFZx8b9cRvCjU9WUGI9imH0Gbr3nHDHDiqcT14j3emE2N7ijLUKL86m2LOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787268034; c=relaxed/simple;
	bh=wax5k8uHjxyR1EfKXxbOCa01zGBvBg5P6axPtCRxOBA=;
	h=To:Subject:From:Message-Id:Date; b=O1VT1tp2WgpW2QPuFvhChyPui/JDJbeZsLX1M3KxN4fIGwccGeeJE2zPlE4RSuVe1EPgGzQOxoKnfq15Cg7g1U2xDR33H4UVQFV0VgCqazebkkvhoxQu2I40gfOU5yU5X6rU450/4dh2P76jjQojN1almf2v5keInmvX1Bg/pYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZ3GLZ4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZ3GLZ4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A5DC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787268033;
	bh=wax5k8uHjxyR1EfKXxbOCa01zGBvBg5P6axPtCRxOBA=;
	h=To:Subject:From:Date:From;
	b=YZ3GLZ4zDdJ7hv5Fe2NAeWuw28dtbYiYABh9gEkOa2LdTfVwSH2tJVk091uY6V9L5
	 FIRLaKInKYp4KbxiMB7gXQ8+M+3yusFsmdevclLWlh5wLG+udzk2ZY2+X3xbwDQIdA
	 TAVx+M/koiEDXF7Sz7ShgrHn2jugrwCxL4ZNdwTFUuo+/prc8M0pBqMHM9c4qeqrXx
	 hYAxJKPBPkTwC7uptwkkHeoRBiCxwZ0AxzbYPds1hl6TflTKYfHz6rhaA9PbQo9BXq
	 wNHgz6244owEBAesaJCaJL4LhpApq6qBXt0joZm+EvDOUQBk3EMsKKqh5LZ2n7eRgw
	 shm4mftFdm8dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB18C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726803374.16016.11093256821622809655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1971b91ef3494a23d00f2b1485b0eef7f4d9e08ff8883835e98ccc4d805091c0
Date: Thu, 20 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787268033
