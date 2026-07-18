Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EAD38C40C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784389717; cv=none; b=g2d4veX45iN7uZKW3cxcj/j4+B1AggLA4Hk9YnUg4hgBckh3ErsuWjiKiYk1PlW9azxlxbz2H9ikWmIf+QuADKr1fKSOd6bwqxwE6IF0whhfcZgDZcQh/OvkN4e9FkkxAzaLCSDWR4j/k7XweaCbcu1GWhrgnIadJnjngQSpUno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784389717; c=relaxed/simple;
	bh=uEZ2257peWmz8p6EQ8ccPosIg8++nn8JJjSf73z1Da4=;
	h=To:Subject:From:Message-Id:Date; b=N7X6bpwAtgqbrZklhbJ/FN2VfD0zmljIvlPUucD7cFyHhWMluRFGoZ+VMSNulyRfUf5sC0ZMk4L+VoyzzwHdQerEaHRBCk3Dj++5w20ldIPOCIhP12iydzRdVYbNAW2cqOaY/0lNBsFLr3J3+unR+r1rbTnqJZWrFD346nVVFEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhvqNEER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhvqNEER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA952C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784389713;
	bh=uEZ2257peWmz8p6EQ8ccPosIg8++nn8JJjSf73z1Da4=;
	h=To:Subject:From:Date:From;
	b=GhvqNEERODv4xnR+YPgEGxA1SLnZaSRLvrxiLYhQVTLBk4owEAf+8QkiE9Ezugdck
	 KwLGKO0Gvk6RHFUVX9ePJat7VYv+amJbH0szf4aB5hRnfMkonunOE9X6E4mkUW+07s
	 Lydq7Ed/Lb9gacXkjEGiGFM8OnwRuM+j0AAS5ZmzFROmSg7klU5m3WjF78nxFMiIDS
	 V5yfC33zxv+pu1DX84uBIXuY6GeeEdZ58Mq8arsTPmQYO2hyNz3hze0DAtyzHpD23k
	 UfH12e/60Wn9PkSztFfTqpGoIq1ABx0uoI/RHpvvqBbTYh0+2HK6/z4DK3bTV6uPTJ
	 H4VujVDQMKddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A878BC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438971368.14503.16827391656173163879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a12957eac2e0205bd214e3df0dd6837596d23b551cac25925a91e5b67734b88
Date: Sat, 18 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784389713
