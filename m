Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39988279907
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752422994; cv=none; b=FteJCxdC8DjT0ZM8bC4FPqviaQDw7ISOWHCAoEvBYkgsDgRh5nCTDAlme48ada2XoU1AyagtNQRQRTyuFMbuubEKng2vqXIWEvYSTLjwBuLGzNH82oWhMmrCXpRzKBn/tL0NOYQ99IVnKoET0W3k7twjSS2JngIQY0d5KaxXDWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752422994; c=relaxed/simple;
	bh=Nn8afkSI7zryuXn81/W97a/IJXVD6ZAHCTdjESUQFns=;
	h=To:Subject:From:Message-Id:Date; b=q4ROJvaCRGprBrQfaUmQQiwY7M1zvp3BMIei7w1rvVVzzXdVF9A0rQRPfHNYJsFIkXvNAoWiImM8cTspVvOMciK1gR/IWS6s7mF/htaZQPkmVGDxNAcyncwmavmtRA6oCDZ0gSF5lVXu8pJL0qPrtaRE3vQ6nvm8FaVJr4pLrdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIhSYVXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIhSYVXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752422993;
	bh=Nn8afkSI7zryuXn81/W97a/IJXVD6ZAHCTdjESUQFns=;
	h=To:Subject:From:Date:From;
	b=NIhSYVXJ22vLBnoANaMVEJtSBD8T2JXBCnOQqyRmQHvSZtsmIAi/Poy5B99D+4Qpp
	 Rq4aMcs8qlMiRue6QxvMXvN39KDuIpPaP+yxg6/STmkW/bzkdN7+DAndI2tvu6wLxN
	 oMxkg/TbQJ9FY6+3JNockSUOfnnuIH5INFcMLcABXgL2ebyzKdtX6cO+hGk4fB1Two
	 e+2aRoSLvh0Pwyl9/7nz1/w2AJFAKGOZo5ubIl8fOHZaF34Y9F9M60ByIQxemDugzK
	 E0h4KhK92i7/7/i6I/owoQMgyVZ2bBcHwNAeJfoZegBxaXohUlchEQ0aUDb/8i0SXF
	 J8qGrnW+/avPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B8C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242299357.31283.3263140444895472673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be3ab1c16ea34d7c91ef74933177fef9d10f2b8e81dfff8ea5a58a152d393d3
Date: Sun, 13 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752422993
