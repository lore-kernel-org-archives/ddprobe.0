Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B278171CC
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707908897; cv=none; b=F5JpiwaIFfkGmksc6ZxdpJ/lwvc7qV1fxRDKPLeML24x3Xt7P+saDTuxYVow20/G3jwgtobgY2+HMeP7ZKJgp6tI4KTNxUA1iytCkZa0hbE/EZGCGhLTsGF0ZLsQQfkahn1TR0yqnqETJESPXpMGxvAHWw+CY0Nb8fqAPHA97tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707908897; c=relaxed/simple;
	bh=g5zw0+IWD4PnZ3x6SIkZWSfqH55NsRAeMfZORww/J2I=;
	h=To:Subject:From:Message-Id:Date; b=NmrxnIo7ditmsQtdFhEuhNkGd1w1Gxmk5DtDnc3LKGrEkGPgKtBKhAfSzS/FOah4/DUopT2BIjLUWLib/2uMQ/FqSTIavjfyGcDwkR5wMwU87Iw63H4JyU795CzGjVTziujUtjLvUxHDZqIMHcvufuqUPvGoGmE//ExWWLn9mCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2Jt5uH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2Jt5uH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C385C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707908896;
	bh=g5zw0+IWD4PnZ3x6SIkZWSfqH55NsRAeMfZORww/J2I=;
	h=To:Subject:From:Date:From;
	b=N2Jt5uH3O8aS7odEzT+kLOamHpT/2Yx0ByuSs5/l6TV+kN4u+dCCbY3cVsnXB8u+y
	 M/nMBVd5sYM73jE1mJi94GME37xzmUkDxLExioyccWWxLEPXI9PjpeXTjbfmgJgSre
	 X6pK5uYFnjP6ztpeG1F0+apdeo7QaEEr6AcptF0esDx3GCna5a8HzunwyZEBXfO5sC
	 GsFIRSHKjIVYp99CCEBYMxLEN4AxhI6WZe19DhbItf1XENr/7IZEqg0bMJbQuqJ/7+
	 8QZBIP/Xg7u1gWdvt4kKzVcN/IXU+AgDCq2uu5JL6y1t22mRHR4szK2nkM+MCr9Kg5
	 JHlgjYnBM7Cqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C1AC48BC4
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170790889639.6329.14470049107826662224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1306a13f67d34b09e2bb3ba46082b4324954df8ac6b8bc9b76f83e7eb61448d1
Date: Wed, 14 Feb 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707908896
