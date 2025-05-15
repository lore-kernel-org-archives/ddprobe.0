Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F881DF990
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747330194; cv=none; b=frsfWmEbkgun0PtNNBqw9zDRV716VF6uSlSKUrHwEx1BHE6Erhup4lxrUVMQQnS2ftxhsGYHWta6qEtRBVvkq1wz/bl40pGCl7XNDV6kmwvawxupVq2NiU3kBTOXmiLrSiE6GYc54aagqLKaA5kkiyCnKmPL4Mjd8r+JP42S9k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747330194; c=relaxed/simple;
	bh=XF3Lt+9oYXGfDu4FmapvSKN6+4pVje+axz2PdW38Td4=;
	h=To:Subject:From:Message-Id:Date; b=hkpEdp0fHgCj4aiM73WqdsfcOUHtfbggrLt+rX4bgOMlLFemeKms7nYavi7cWtuPEvsPTVKTA4iTvNmbcCkcGvduYu4zWVH56PPxW/b9DtdpG71CGlY/b/jAqrXgPYwDVLzsdQH3PheZsYo5asUn1dgms3+ebt4eUiHUzqWTgyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYeiik+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYeiik+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C6AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747330193;
	bh=XF3Lt+9oYXGfDu4FmapvSKN6+4pVje+axz2PdW38Td4=;
	h=To:Subject:From:Date:From;
	b=gYeiik+SJy4j4dK/FyfVhLkrfMnXpv39kJkOJ6vloqBbXa9M8PVfXtAXXmQVMi7tD
	 sqq0m2nNdO2r/A5IuNw10oVav8DTSqJTavBBmJyi2UvBTl0BJgSp3p9h8LOW+gfTLp
	 uNLAc7sx/GYbHBute2DuDPRIYgVgyyH/wBOiLBkpgW8KJ6D712SEv9L8f7n6vL8vgf
	 dP9mAVPjtuUH/47F7Sul1xr8Ep9tqh4hp8W8dZ0vgta+WvtOeiV4wTkUHOjDp2oI2X
	 2XmOblARvg0jGVyfwp02LjF4AwcDXSapUys03JYiKf4gMfNSmT8oIEcSEvKJgdwNkc
	 QcvY1Bwhw6qnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002FC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733019358.3856.10167888870217441520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b75f5c73c586498af30fa2a9801fe1ae4ef003c2389d70bbf402f049363ab6
Date: Thu, 15 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747330193
