Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A92B442393
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787839834; cv=none; b=hQTZojkuRYjE/ZaW42RgvP7WLGTwn+2FHXhhp56d4wbXc7GjkWSIziH/LPusBPuj8zHMJIxPp3d63eJelgAsYZI/iHDwysRlqRPE5w3hwLBf7c6UTxAMJDGOj/RbSfQvZs1sDstr++UQ+hy6Cs0Qmz/eR/U4ON0RYlX6LUSYaBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787839834; c=relaxed/simple;
	bh=008hKrqNgOz/ect4oFADpNainEbGQKct2b6vyBHZ3P4=;
	h=To:Subject:From:Message-Id:Date; b=StI9KkypEOsW1vZ2pl9HxTAqXyUHGM/UOuF5efyR8vhLPoX2hoiCZYbtQUex5m2xpd1ygnh23pio3c2aImHLdybPTjP/oFdMeKXoPIqG6bG439xHMjA8amY1vlhHLpDJiu76ZjZDclH6UV7FAhYCMeWgLKqB+isHT5Pq2UGKvn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saHAihz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saHAihz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E9AC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787839833;
	bh=008hKrqNgOz/ect4oFADpNainEbGQKct2b6vyBHZ3P4=;
	h=To:Subject:From:Date:From;
	b=saHAihz219gB3yXVRAErFfZhULfx3u6binI+J8/FNWW7DiM5ZmcvaGh+Qtu+GJJ/P
	 FZNCHBweYjf0gfm2Wf1e4pd3f3Jok4prlTJgdEYdsFfO5goyLvs9wrHQnR+/BbJxFu
	 BvkQ3pBS1tsnoLvsqn46U1Mn2P/ZBTPZ5+4CGrBZ1JXAsDSzlfD2F3sJj+xkPtNmq7
	 NfSEKSxjK9WV21rzSOPormCM0PJbGYF5OH6HcKeSxIGOIcqE4Xvw6xlRWFoi2K771H
	 HTGQu9Y6T1TXJ7rep4oQB01UeXPljycSrGYY7rNZRQYjPAjLH71fZXBJ9qkxGUu4GN
	 6S/Ok+Bm5Pigw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED2FC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783983370.17737.888180035119085597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5d87175a8485b63cd782c10db9119da8ed012cde0f6d4980c0224afa79c758
Date: Thu, 27 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787839833
