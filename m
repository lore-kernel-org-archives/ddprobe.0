Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1E13BBED
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719654863; cv=none; b=iGB3OyEXUjWifflKo+AwUZ5a6x0lbT7K7/71LgCiTKZOtVqdA8r++5XucFp4uiwIV3SxjxrK7XS364DuzPbqrNaiiqCC1mmg1caG3/FHCxDWGN9GZaXxx2nz2nuO/b6DRRJP+SH+/1Tl1RsBmP+6A8gATBBe+R8EXzy1fgRenk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719654863; c=relaxed/simple;
	bh=moXbaz+kS2zXRtEseuMVZpoA5UZsgquDv4X4p/gZSPE=;
	h=To:Subject:From:Message-Id:Date; b=VlqKzMXYUXJti60ERdeAHQ3n5TDg9TXf8aqcTMbMhz1A0QbgqNfruzx06AijZNPqG/SldYdvlIVW1U/t5kWw+K24url1uzSgzIbUCTv9miLx3s4tbJmZbcUgv3bxkeIBkUrHt832FGjsLygMd06AjzTCorZYQGhuxRL3GT/eY/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+4F4Opu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+4F4Opu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51DFC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719654862;
	bh=moXbaz+kS2zXRtEseuMVZpoA5UZsgquDv4X4p/gZSPE=;
	h=To:Subject:From:Date:From;
	b=j+4F4OpubqkaaT7XXyEKHzpgBeevcUwvJbREUmpozs/Cf8BBJlPFO2wmwdGzT4zhg
	 7C5PAFlMZlmFU0WVdTRZZ9nCJucldAfq5t3aVeB9IPvDtKmFMG93tDEPH2n0lyPh8c
	 4M9AYcYz1dj3NwdeYgqvdRLw/izwmn0dqo8TJnEBb+pBDD0kfUtY/iXUBJOwo3cuJv
	 EWgCJNMFDhsQEnIY7hALly90dnpaUBwseK4BAkpx486j/++jTh9nRmdpTmDs3Mr90P
	 SZwH+DRUwUfrXQJua9KAexC3yLd5bzYbh7wYVi0hTv4eTZ25jZLnrwrgoirGsvcvGc
	 T1LSZUYDIqsVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6318C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965486276.17937.8408870909989698506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31584299afe9a5459f419c39624b23df34c70b6dfd7cef979f7cffefb4a02697
Date: Sat, 29 Jun 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719654862
