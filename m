Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA9E1F4C89
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743631193; cv=none; b=dF3HJjfOvNjD1aXebOHKdkQWgpYAnBYGQ8vxScHfxEYCgSTai/3hFLfDFLk5HkhxUrPIUUa9sOYznmv/qVp3LLuZZKgRxVs5P/XvPnPiMIb0e/eFPKwJ0YNeblZII2727lyA1zgd//5m6tenCgBLpJbR1NdZfFV+GDMU1ui76Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743631193; c=relaxed/simple;
	bh=EdPAcZOIsJFYX+wjNyZJfcbtA7lvVjOy2XfsECSAI74=;
	h=To:Subject:From:Message-Id:Date; b=P0v9b00bCGewvyNrzcusytwvTNvs+gwHWMVjIn6R/g6q5nfBBG8HLD2XYPtz8k9bn29XLRfSnyfa9/AZcO9ispuYxNArr0NdJq2MkuGMMdp+4iBvld2OIt9p9AEFMnbpvt6qRmBT60wXowBmwiLzPq2W/Wrb9kUFZJmECb75F0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlLFSN+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlLFSN+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB27EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743631193;
	bh=EdPAcZOIsJFYX+wjNyZJfcbtA7lvVjOy2XfsECSAI74=;
	h=To:Subject:From:Date:From;
	b=OlLFSN+wc7NWxkaj/lq+XqmNPE5cPIBNQxgyz1qdPLh7ylMHCahhDNFwAL6DRo5jF
	 f94sviRKyd+cb8pIdh1UhXbmn97tulTciFKqXvc+qdtX2bTI2VpR/APzST4Vy7sD8m
	 P1hEWaK9KBoODJTdT/ZO6qUsA0FyQz2uDulsBCX2NJkxkTwLH4veBP+Rx9F+kdotVw
	 CoRlamdIG00Lrk1470EONAKCudirVHhgv77HdHf1myD8fd+VTKK92UJzM2JYXsqB2f
	 tRer+YmxW638mYW4zBj5rfH5ayWzxFUrQp8BTKCFWkmM8DGvyLn01XN5YXkcSPNJ4F
	 IjX30iBoNMdIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B5C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363119361.16744.5738539518610887600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb4727a2208ee15ec52db49e5034e38cdcbeef2f2a403d71b14a61000cc4f34
Date: Wed, 02 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743631193
