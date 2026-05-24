Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBD83438B5
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779656554; cv=none; b=rNSIxKmBdtJWwahLewEVH8jazg7/cBDqtDKL7EoEb+E+uDimzNSHyCNS44TR5q1x6KylT6nvvV2PEKeT2a+P+tZf5dI3pExIg6NCPvQcxgKmBWycgIjJ04ijPjzS14FFeAnTNNhtf1Tn0H5dQcf5kt0UL6gKJr4g1p4r1ocwBMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779656554; c=relaxed/simple;
	bh=NSu7PYmYbS8hutSq3nUDPKlocrZxYEqfohGJiT+Y+G4=;
	h=To:Subject:From:Message-Id:Date; b=DZKdIB8oy1nUWThoGl7i8HT/JJ+eckh+KTwp2Feay4EwuAnFJeP8oeofNvdYo04NQ2Y0KDUSXWoB+ZxDR0Ww3dMn/C5J3D+2hhhRV9zYqR9n3CUdwvwFMLuiCHT83J0X3n/qfWbx4LcGOqMSdb+lEssMEdveKlwUcRAtgfhunj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsysadSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsysadSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA566C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779656553;
	bh=NSu7PYmYbS8hutSq3nUDPKlocrZxYEqfohGJiT+Y+G4=;
	h=To:Subject:From:Date:From;
	b=rsysadSheKRevxfHvS/36HXsikqykSHOkTK0Vzye/gjIjpvFQnmkvnLMIY1pdGGp+
	 zAv9Oi80HpMzPK3lI++f9JHT2JeYbHh60TMWZLLGTAHT/Rjx+l1sRpozb9RT6KIuR4
	 anq1iB1sbLoCPkTDsgYTi4YbRMkHTJKdBvQBxbh6AVJtKkj+WslDngTsk8vkYSARPz
	 EXF3i3ASKs+JLrtByMiNcuRMiCLA1OyegaplQh14o3vWeW+6unhJ/n1ZgbZLH0gmXK
	 uol2Xr88t9WtzlfCi6a0zxuZlL7eH3QMqufAE/vL30rH37pLtpMRBaXCQnVU76omlX
	 eyBJ2ztTCC2hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F1CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965655368.7883.9932813109750873121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4803f56da16ec6742b78ba6ea5b49498e0b2072dd637cd69acc5a097ad94933
Date: Sun, 24 May 2026 21:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779656553
