Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1321DE3C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753279194; cv=none; b=V03ySpM4Z/Ha0yCnzlN0Vvy5EMzmvMrlJf6nXXO5UuFK1gv3Perh/YNO8B5X9coUrRjbLOUDZvjJHZcyGHGHZFoUvOFd4He/x2kf8YHWTclpFkbiBUcgxTaHik1VmBp9cSQsj/elQHcBf3Ry5rvq+ob95KnJ7g98Ednhk/t0/gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753279194; c=relaxed/simple;
	bh=1mLsxvpqOX2y9RBkz+faaYOepVMaR13WPZJN6EpaRrY=;
	h=To:Subject:From:Message-Id:Date; b=WFsU2adsviNN+2xgsYaT3foEXdu085zyWRFeH3kIrITiDxLYfSeelYBbB25LU7dAf2POJPfcmwCNNVp7tTc0YqE7zzwk3s95P7/YGkYPgeAsl3kxF+ik7SQEhFG4Ash8qIrVE+3oh8CBvMdZcsK1Pk8PeL0O1/oqEjXalcFuGCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAeR1cnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAeR1cnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD09C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753279193;
	bh=1mLsxvpqOX2y9RBkz+faaYOepVMaR13WPZJN6EpaRrY=;
	h=To:Subject:From:Date:From;
	b=gAeR1cnpq3Quxkh9VdfU26RMjev5NfoWVb+/sP1PehUY3ygs0h7mYwb2lQyZn5UXz
	 pAMj9Un12mVJvvHvuGqjlQzI72RICu9sN/4gWLRnfMfheCMtVJpLlfjfC020Zf9n6n
	 15TBE/T/XjibOFl85AErlem9o4M7pUPghgEe7rB7lD6h7kk4utNfR4ZfSDvgeHeucx
	 Z/0yU3rZ96qCcgDjnMGIEzgcjW0RTk7TaSn8g6oeeg18q+PypRbV2COBKchjq56qTp
	 /kBvXwbkcRUFFedD4kZWFYu3qE/Oyxl99ME57TNVY5P3vCpF0UUZj2S4xnRQ14o7Fp
	 7dgfIgnbyLDLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90565C83F34
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327919358.10994.7254269769144130731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7a3bbbb5dbf85556eef9bf046aa41fbdaeb6f6300e219ff5da51f4d32ccfb7
Date: Wed, 23 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753279193
