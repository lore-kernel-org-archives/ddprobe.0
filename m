Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB1F1DED4C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767076434; cv=none; b=NhwdO3oEbnSQxfc4LjXYj5NOfr06ThR4did4m1cvDzUAsxQXn2bFjn+BxWe2JUUGYaT5bPT/rrvInn4VPpBWj+nP+EPhvhGFAgdIZGBZd3pcPNlQuFnOrpXGd8rD2Am0zb4/Mm8WAqLG+j5hkwJ0wOLdDTcN5H9R9/b02rEgsLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767076434; c=relaxed/simple;
	bh=Mtny/7sj5agoqZQELUqbMK5hsRrf5klOTVPnB2R8Zbg=;
	h=To:Subject:From:Message-Id:Date; b=Ohs/SiSXwa2Et49Q5fp74O11BtjjXXbTp8bIUs9ztoscbBjDJxB5bGGNtdVyGhvHh8lmsNKTFxljUgid10aQkuWzxYDQ+DBguqwXzWOfImGJW1Q7kaKNX2Qsdhhu5fAXKCr2EPN1A7LeXiB0cT8Bfh261iQg048lVf2jN1do4p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ndl72054; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ndl72054"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5194C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767076433;
	bh=Mtny/7sj5agoqZQELUqbMK5hsRrf5klOTVPnB2R8Zbg=;
	h=To:Subject:From:Date:From;
	b=Ndl72054zTHPR/gxoRnYe+Xvu65AlxqyvXitSA16gdOOVWM67DOk1V6kPpawhXri2
	 vnBHA7sTlUxU1rOlgyytA+NpgEzUUoWR/ix5TngSGOTCnG/PVKa9JmMitrDDFObHg8
	 2fxZjj9/WnMKH3O/z/TyDf2brI+cdtC0gelfgS8F68jaqygj5ADeBmAnuhJI6FVFAc
	 ei+BZoe8u/SmzibMgi/UTb8yzDp6v1grFtNFqCX73yddRcOlgxv+r32PKbo7s6GCvC
	 Cw16nUtiieztuoX51VxtN+OdXO/VQxFKBWN9VYbsGg0daKj/xFSrBmjMOFJG8gHIef
	 VnkD0RAU+zWuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CABE94116
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707643357.17003.6542283476683730264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db5182bb4a8fd2399d85c22ffdd34058e920ff4898790b5076a45a196220bb4
Date: Tue, 30 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767076433
