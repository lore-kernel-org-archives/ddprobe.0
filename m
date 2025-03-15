Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F25A32
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742009334; cv=none; b=ePBzDi24FSt+Fbk7RQjR9tQd1mjsRvXMAVCnUFw01rTS30/TCYreecazIRm7sOhER+1tVKYFpZgh9O3LQYXFF6mZBzGZTKTG/WW/gSPSHsn/NsR3XQK8F+SsAWgQbKY32TV1ModTPeCDhK19JN9zGfY1qj+vskVUOiXkV9IYIWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742009334; c=relaxed/simple;
	bh=V3Ksnsc3AC2a5PV0mEvcR4Esf9FbiaJnJgTOO+g3gdQ=;
	h=To:Subject:From:Message-Id:Date; b=ZofRO2EdoxqUkvwjJROOVhqUxaLfQZIpNLNONFsqVgtEWE1lmfP7XO4TzdBE7eigxee2yUfvjCEqyTKy07b6LVfOGJUicfcEFxyWGFnE5tj31oF3V/fvfGIkKr3KI1hIB5/x2Icu+I+X3JdHIDmVs01veYJHgJctAo+TgHqkCMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwfBOTkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwfBOTkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00A5C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742009333;
	bh=V3Ksnsc3AC2a5PV0mEvcR4Esf9FbiaJnJgTOO+g3gdQ=;
	h=To:Subject:From:Date:From;
	b=qwfBOTkCkUGckuu5wGS37178+bGHENgArAp7kK1f1+mP6g00KOObbriEJNjjrDVLL
	 Rbz1LIdY3CiReRKwC1GD/3YiGfgFQXXPNt/NDO9kzmTNBiEi258N9LuFlKBxwcZdmz
	 ChHwYDtm7n+EBmjUoklPzgCoQOQVhHZZ8zj7vs9Qg7L88FSXqRgsMeYznS6JWZTdR+
	 KwOezRH5tL8oXpHCRGS65ev7PQKj1/h0Ga21Cmwu4rlYTjZayLZiLkUHSlbFTd0Yhd
	 1QbMcKTNLJg63aGhPCBrRNqwj2wo01xUCqHACq4QxVBE7GkpqmAGdVU6ZPt9wcjdYM
	 5nSVEZ91yoQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0886C282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200933362.17513.9215335062188420850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a89bf0b6b2985c25b82f420446bbb185d7dd99377466d650a302fc94c24878b4
Date: Sat, 15 Mar 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742009333
