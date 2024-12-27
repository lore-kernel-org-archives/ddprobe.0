Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3B81C2BD
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735325754; cv=none; b=O2U8ZlOprWBZUa8Yc0JmoOIM4ZtWBRCclJOYksQ7V3DMPzlriR/A4bUqKuBUyY5a+nYLu6S9IsEYSmA4gszaL23RoWUlAnXfp2i7KNSqrBLEfBCDaEOxMwM9J00bIlH9Sf9QHh/pbmEj8PjUuLy40sD3TK6dpkuxShAjppwZ+mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735325754; c=relaxed/simple;
	bh=BnW5pyEsRUyTNTOYgAnUvVs4nMEnHeFtgwOmcNW1TB4=;
	h=To:Subject:From:Message-Id:Date; b=oFlYHq02FNnottr1FV+Zsf9Fzkz8xYPVaia0D9oyg/N5DBQdccrMq72F86loAVZRx8P2fkFBRp2TZKFSR9+pNFr+TpCwQV9/we4jrV/8QiHy+/zQHEa5cTLHC5tIKVrSCA/FBCXDJby8lBJuKCoBcxJX8aQIBC1+98odHcHMm2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCMS0no8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCMS0no8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE598C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735325753;
	bh=BnW5pyEsRUyTNTOYgAnUvVs4nMEnHeFtgwOmcNW1TB4=;
	h=To:Subject:From:Date:From;
	b=jCMS0no82szBs+oCfxoy5uEm/S5psopy85nEfa8vAx5US8dSyu8QVQlEreP1q+ACD
	 5RYqlN1rFAlKx3IJ8XJv0QQ8P7dU9ESxsAYhPVhrXx2qrYrzCryzKRTxDbKLLooODn
	 88+ouOZnTrDrZlYumRNEvjPIxkx0v+jXdzz2g0G8THY6wOVWXa7DNLLbfP2f+nxkpZ
	 w1i/HcYd1JAYpXtjp08ovPHTclKCadofiwb/MUUKshrgMnnuB/2guevCPDjKK0DY+V
	 d5ydub8U0cxeTJhW3ft8xZDtKoFvhqugapNDXeaYOqo7CrpFaEWDtCIDnJGcyAnKU5
	 Vp/GHdCDWONig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96736E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532575359.28963.3915998785044258997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e03624c9f2807a9a0375a57dcace7fd2c1903da2f8b5175410ef5691961042e
Date: Fri, 27 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735325753
