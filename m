Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F838BE71
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719441803; cv=none; b=czj4iBKhyAYa0VzcXrsL3NDW+dzRKS+6lmHKc/Fr7fb4WQqM8zf5gdNSgxLaOFkU6rc3RXaPNLokRzeq0RJDU7Nz+tp5ccUhb3MFUnmCp4+JdhZx/lVRyk161snB4f9LCyDeKh0jitObdGNybeAI1knkPoJlHQYSJugI4Jsfqts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719441803; c=relaxed/simple;
	bh=xz6kNqVg84SJIw25aFrLzoH+nj2+o2GLWZITjNMSbB4=;
	h=To:Subject:From:Message-Id:Date; b=UsL/UHsC8f8JJiMZRwi5IcCyngKD2oMzvSzGop+rk71SWwKcmaQ2h7Mdgrm/pH3orPInykitnlZ3oWzuQXFEcI9/mRxiYx9KgoXES9O14x8JQidIn/SBqh9NILtpD2bUH0HqPffrTP0tBgFEqF1Y/BHrQhgVEPIslWQXBBlQ4bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnWiENSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnWiENSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D941CC4AF07
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719441802;
	bh=xz6kNqVg84SJIw25aFrLzoH+nj2+o2GLWZITjNMSbB4=;
	h=To:Subject:From:Date:From;
	b=JnWiENSLtQz2ZAs/YQjrUXMlezN5ljbjpxtvwXAEX49f88pTDyeQ6c1Rfqs7MsfFU
	 6SJTE5BeyAgNxR5fA4cQ4yqoqP6OiOu4JqAPds3tU657UQ++5UVhRsNnuTBGqP1R1L
	 kY5i5J8AFWK/238eTVmcQYjVWBWfSiJRSctbCQaBetedRLeZNpU0h02y5MjZYkhyKQ
	 JBmedtIW2fnXzsmf0r56cQCC5cmWLzgKpZ2GhO+JipV+E36XfhEzW9dWQnloOXosB0
	 ptlOe2jesojLfBxb8oSq/rexdO8hdilpgZmlgvRTDLyilj+JWgALWKcIcvJxoSHoVZ
	 WoaOh0gGNc3Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F50C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944180281.14595.13635253812551274679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272a7f8f54861e9c3fec532516efdea034bd8bd49476b5d19079316aea884505
Date: Wed, 26 Jun 2024 22:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719441802
