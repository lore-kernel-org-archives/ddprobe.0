Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF3623ABB0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752668394; cv=none; b=FrWCQNG0zS35E+BxiY1EJ8AYOj9Pow1v75Lcn4SWU0XrvIkGUnqRnkRjG8aDk3Nzu0kU4aA4Xs4ZvjdaSvo2TGBOnKY02lyHH2yVH/VjLN0+MPEyIpTKgJ9me/vXtsIEHAZkQ23bZcObyUPlPcYBxABJtP4KjKEVc9ojSSr2gDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752668394; c=relaxed/simple;
	bh=j2uP1omXT0p9CzAMhOPy5rdZN9aMTqaAwOdfAOgtKYE=;
	h=To:Subject:From:Message-Id:Date; b=TdDf17bwog6Nf/qf1lGAKuCTeCEnWFD/sJ14hKRKnaCdrQ59QfZh5+5B8jrWXA79a2Yr6ayvlibH/f5qLcV1of0JtE5XjgRQJBgA0YEXZUjFOM1e53H21oJmDmkR0WOhhQS95blktwVmkK34ZYYyLmPlXteiX+L5ThDKSkR6uZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq8BavDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq8BavDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EEDC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752668393;
	bh=j2uP1omXT0p9CzAMhOPy5rdZN9aMTqaAwOdfAOgtKYE=;
	h=To:Subject:From:Date:From;
	b=Tq8BavDgqlz9qHRv9jj6lX/ygkuWPD3VCIsM2w87qepiyzYM2z04CsvH2eqZDdJkK
	 RVrFzyMoLRNfW6ZeTm/0m++7KWHCpbygVFmQZxhoCCDPQAk5RdWIZDVdjYnnQU6I61
	 djnfa2qKBEmvoXzAF9AnelWQAJhJ1YwxH49Ry+CRIYVGiv5XBVJ7lVCzRoIf7tpkT0
	 cL8FworjLSjnKWRjjpbg2ULAHIxd4hBM2dl8tlBY2A4Xak//z2RfqgNo72oMcA4TIc
	 iVla09FAvSCyf6dKMpsTR8ZRmce8ztcsVTl32XvXYkeRqU6SQmPrsNumKq13lsTmf6
	 kbmTW1D64Lrvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B14C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266839357.13563.10004421174431015479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b68f0df0d4a6f834e8e542f27971c0d3fd5ab04f51bb4d0212cfdef17f2a23
Date: Wed, 16 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752668393
