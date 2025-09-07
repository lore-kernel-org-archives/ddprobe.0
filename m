Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DD119F48D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757210394; cv=none; b=Ei39Xlo5IJCmPKRpyo5kmEiTiMp8gGbhZ3XQguq3/3n7hudzwc9Xke+BkEH7Spwj+K6vmf55HbUSdrTka3P3esd9W8dQgpW3NDUu1nNw1dkU3MA4h2SCV1rraFBOMTwJqNTdE8ylRHU9Z7I8z/cnHT8jsfiDrbR7Jld5uxHrWsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757210394; c=relaxed/simple;
	bh=WWHryCUcX58BNEe2WNQNEsOHtaYT4p+x45LSMens2cI=;
	h=To:Subject:From:Message-Id:Date; b=nSRdpOeama3M/3vRdWrED9xXF8RcUdMdtHx1jglueH9YOohzBnQdzGiY2onjt0GC2XFyoEu7CKzZGfx8Endd/cZMyzYkylb1V5Y67iuvteNkhp2gyP1C6LOtvRZrpgHS8dqp9FHAAMaboKSz1mRWSM9ALx4Jd5/L9iAE8EClYIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eb71bCWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eb71bCWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC93C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757210393;
	bh=WWHryCUcX58BNEe2WNQNEsOHtaYT4p+x45LSMens2cI=;
	h=To:Subject:From:Date:From;
	b=eb71bCWAB1+yw/79Dwn2BXnxxK9Y7qkTj8Jw23zOkvIVwYKP06S1cggZw9edX2z2R
	 KxU/ZHFA1TUsN7Kx7saWXD+dj6lOORTOCr4mxGmQNd4/PQ7CnsYq99PHBrS3bqP/Hd
	 ZM3sjopa37fRwrHcSZdW1s4pN5J+CGm9aE3hxgnf5BgREgpyv0SY3ouvhWUGzGT1o0
	 bx9xZQjr/G7gQYZEtX7IwBRD4+OQqw6qg4U8MxNQ585z2LaJ93JBdXgBYSvK3UCICm
	 K6PjWbftV1auDbXbrglpRpDz0bbeNuNFEYi3X4dZcF402jDp0Tm8Iewfv+vOFqceRY
	 gMxDM7uAtGJLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12CCAC582
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721039357.1195.9157481565764491562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e3ea22c9f4ac8ab9d126ebf87c6fbc293f7068d57a976e3cb1225334ae8dcd
Date: Sun, 07 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757210393
