Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173944A02
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768082634; cv=none; b=U29ZvcULfwukv5nmv35RZzIM2jwz+ymleQZSmW9DuMLSZqd0mR1kTarGOoU40pOky/ktuWkU2cc1ORWxOvSX0AllpGSoLYh1fYRSnm1TkNyDwhVtaokK6ZWwkndg2EvHQhREcKCuIz8bU27ZbjA9BHK6jVemvpMWdDsRp8QH2Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768082634; c=relaxed/simple;
	bh=TebKrRDjoc21M497NxdAr4uqkLthGsXPZapaJB+5240=;
	h=To:Subject:From:Message-Id:Date; b=AkjU0WicPVFRZcbSFDEv/xjh5//wc2nqDkI1LxRBrARwI5XjqneuxDy1HAqM/DaEMrMtu5r+xDwYw+yoqhe8ANsBPdmCqYIgeysTrqjf+dmco0omgfqnBNDz3HNaQm4ALwuDEWU7ge0D1H0/pKXkHWhi5nSGP7Gvv2GMHdSnOt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBKc3ZnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBKc3ZnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BBAC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768082633;
	bh=TebKrRDjoc21M497NxdAr4uqkLthGsXPZapaJB+5240=;
	h=To:Subject:From:Date:From;
	b=JBKc3ZnR7kUsPcAf+yLwTjZoGKxsRk/GwfCtL6wxxt71cndESXZ9GkBJVYdxVkLmU
	 6Hc+aPj6OaQimsAJXwAh64qqIplBH5ZPc6SkhulSM2vwGGsF5Pp10g1l14m3Y6rKIf
	 ZoOTWEFPPx4kYjqpCMFLcXIerZbeLW50Um7Nl9Az6GgFyJkIOx0NnyQ4EdNsSPbZM5
	 yU5UYej9zruQ+jMaruVZZHR8bpU6q1mFABkI+7GjqUGaTx3jHY66oRp33444yne/5O
	 USQwP1tqS+VwI24M5efvXa5oLE4BO0llp86fGPBRbuHlsTQBliSfJjJNpcuZmYHCyW
	 xjClNiCxEcvgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E22DD25026
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808263360.22100.11621270132287533448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496a43d358e9921b206b3ebef91038c098de656962a9e997ac06393cf27bd4a6
Date: Sat, 10 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768082633
