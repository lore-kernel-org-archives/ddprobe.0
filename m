Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5215517E9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717892843; cv=none; b=occxuScyY0VqLvBiWt3mAaEA5rEOPAEn4BWtd4ECzC/6norf5N+BorZzfl0dR2epu8VLnr+1fNDaC2mDGoLyRXY0XGd8aKJXloVEP5KPufk9hNMY9raw6nkKBdVdGuk+VXDzVOTnqSgsyrhVIUF1TcGMEa3zNBA2uUuLeHNDPKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717892843; c=relaxed/simple;
	bh=b8POCv6deijJDOfY7e39hL+5NBY0BGNuqYAnG6Hn2GY=;
	h=To:Subject:From:Message-Id:Date; b=cx2fHyKjo+tMGnqSt2tDTINds1PVqGsNN9nPdIS4aU6tldzvcHEWxTmwlnN3fHbjQoDziHp0BpyvYCL+dFBT/LT1/HAYO4KYUxtsboNSFibRpvrUA7Jwo6uCEv5f5tgtMwCja4QaCDp0Tcs0ue1pGkP0SkCGcNdeZg4Gk6gGDlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV1cncFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV1cncFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99CEC2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717892842;
	bh=b8POCv6deijJDOfY7e39hL+5NBY0BGNuqYAnG6Hn2GY=;
	h=To:Subject:From:Date:From;
	b=QV1cncFb9rjyLz1YqrxG9XxsnP4J2TRsIkmhGkOS2ZNQWxNrHE9yY8obHzgsc/+5H
	 prFag8XbWk4cdWKFcqYLinIrVZW3wcxp713XpWQVWMqDHh9G2NYC+5Ii5pExMURmAs
	 X0dt/JKFUvjOmTBnqRzilEbC3yp2BSBQoF9pC7zkJ78AVzYVMBKx/noxANjM3fwz1I
	 BS6A1oCG0LIaNaISbg2wBntd9TEYx9U5BTEI++Ws/xYC8JZ1HPva3yO8hdz+7dlN2B
	 wSeNh+OF9L0zAihAwnCDFlMPm8g5GUJbrzlLKcLKtJyN5nLkzIPM3Y2oMCyXWHW27T
	 mzx2CjIbFjXXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66CAC25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789284277.6459.12162926931651260517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8081b0c619d2f659afc9d211781c09f496a13fcb350dcbd1449d2b9008812aa8
Date: Sun, 09 Jun 2024 00:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717892842
