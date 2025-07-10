Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192F713D539
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752110995; cv=none; b=uhLv2ZdlTOFrcojCMSsCXn7P//re2s3MJM6JX/T9nw5scbRrSAUuR6+OPBDXH/b/dDYWhXQv+krSFWrRIGi2+3GzQuY1Kc8BGz0EkXgzs62S+DlyhRHJr7ZAqGsxqSQqImiJKRLoeb80WlKjv0UjVEpQbrSnFnYGfdJdlPL+iGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752110995; c=relaxed/simple;
	bh=eam/fkedLhoEvJENaIjqzlyn93N8TjcJo1+37c/q/Tk=;
	h=To:Subject:From:Message-Id:Date; b=sJwZY0vSUhgTc3DsQomECyiHUPlePfn2SOsvsEr2j6ZB2ompQ5sK43Z5B30jvvKw4xhCLlCQxd2Ars2KnITAioURJDGN4RIyXOMCz05uj7qgbQGIYTMUYNELcZs9paX9PqYC+o5IW5UBAZKATSj7Zg3m4JmN1TR6YimN40NE5mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyuubn2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyuubn2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A578FC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752110993;
	bh=eam/fkedLhoEvJENaIjqzlyn93N8TjcJo1+37c/q/Tk=;
	h=To:Subject:From:Date:From;
	b=nyuubn2coXeal8vdXDL+zEcNiOhTOCE04bFMgMqPTHEE9OA8L2cEb18cneqSVwHK9
	 sO219hLpsqFRwP7T1JnD1Inl7o0ta/mfTUAhsiOECqgVlw46ISH1XBqpOfmQnwq274
	 OXINS5GUSTQ3tLDsXPZB494YYdQY0q2zkF4rrl2Vn37/xvy5fact3NWflCyspyywf8
	 aOI+/M287PInf1Y2F9eeLDHOMrrpL0Ye3A5MdWe4dy9R8WWA7rZCFpzA3bsVJi3OYi
	 Wqog1uHOfbNEXJw1RNFlP/TCy/veyGE15PvjvRokgSI+aJkczTDtm8BCPfYktHoNM6
	 zH4QEa9vpKSTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A70C83F0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211099358.12868.4449948099356966939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020459fb6723f7544e73888f449f025cd173943c419597cf140be6d65aa98d68
Date: Thu, 10 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752110993
