Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA88632E6BD
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776082054; cv=none; b=NQ9CegBL6aV1/JDevDY+ruX8e0O4P0ux8kqr8kysL792xwl3g6S1ryksoxKbbizWT6NX5ps7+wRMuiuFa2IVv0pDn6pQV6ejMHn6JWYrmtiiWoD9BF6/gDtzfSWtHl6rcHcOxts2me20jUtoFTOAv8il3Hr23LDkbKdldg/3H1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776082054; c=relaxed/simple;
	bh=Ctu/1iuyMJZZqEXbLOPibrwtG1eCRAQJi6GLBGwL1kQ=;
	h=To:Subject:From:Message-Id:Date; b=G/QAwFhIQ2Eknc5RU3g8eRgKso0oG2byGNb9WqqcRN1TbibizFttiNd+H9sLymrIZjRLdiByec02kpmjI1vw/Mm4PzROYZqsHS+cypFI/nTPD5qOR5KRKj5a9spnb/24QacJRHPN4rxsyDMO8lIB4FcOJe1DTTCnpShM06bqY3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxB6T4WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxB6T4WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0748C19421
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776082053;
	bh=Ctu/1iuyMJZZqEXbLOPibrwtG1eCRAQJi6GLBGwL1kQ=;
	h=To:Subject:From:Date:From;
	b=oxB6T4WS3OptvzDMxnHKI78N06vERnLpPkbPFK1Dvvf6qF+pSeOcIq7OOlkNvq68b
	 Qh/HhBWGiQkMUFtd10t7KBrH7vVCfAIu8JArvTocc6MZufJvCwHiLt537/FWZPK9fA
	 QmA1MjelTwy5Ci99rgi0NUFzrtAU8FIr28lK9LAAOJ2ZCkBIHSzs3ehuY7+BKn7yAb
	 P00HizJYg9DkkiqCTPoJi5WShfbdCl5D88qT41tuqY6I/DeKNj+0Gp+mzJniImlnyS
	 YAYyJ9CmvtZrlNyGOiZeblkQ6d8tONof7uulilq4f4WX4eDcNEGRSVEZ/qXJLWLA7M
	 rt1G2k4m0EgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB33BF34C47
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608205368.13090.2161105304051525529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91543d61f67f3d7d9949e228bd1ec106102d0e6d17e210b09d4f83ce8e16dabf
Date: Mon, 13 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776082053
