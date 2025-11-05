Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061D1255F22
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762383594; cv=none; b=nNsgNUBnOLmTQTU/2ZapYBAuRkfs+e0DWzHR2qiujyjVGrh/FnVbKxWVJVMM/wrMXY6UTa2LvK89/Ojhs6KooAV2+JhDjG97/WuVX6f6gRGUtwbFMiOT7x3/HdqTSRdignjqFET8aQ/c+O/5oOswv85H4Pi9CuY537eFY0WdbvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762383594; c=relaxed/simple;
	bh=MP0WLawNIxNQiEX0zpy4Vpm2D+wRAmf6dDJ0I0GEWaw=;
	h=To:Subject:From:Message-Id:Date; b=mivjMLstRc2yEvd/F899G9gt0aHBbHQ/hJyQjdY0DjMCGs148dQGcnT/aypCnRdF8hrwcXXBFqP/2ajufh4++qYfSU8vYo+dwgIRvZbiJOPnHZf2RNSkKwp9saEbEJMq3/Mz/f1I4955X/Xk7Mvz60AnwD5kqh275W6OretALqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVx59dMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVx59dMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0643C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762383593;
	bh=MP0WLawNIxNQiEX0zpy4Vpm2D+wRAmf6dDJ0I0GEWaw=;
	h=To:Subject:From:Date:From;
	b=qVx59dMxic9fcF+Sw2SX/u6Vubw6/ihTVWNyIZoEFB21267mtOm2A+iRKzU6rKY/8
	 f917QmORKBhlKBl+QhnP+9WrbauyCylpZNqhlPsZZqh0ZcV7BxIjNIrV6DvRNF8PJ5
	 D1meURDPhlw1HVMJFX+GIN/Gm8dlKk2MzmLyzvtqxPv2gaYkITGMWab5KZvTlekJK7
	 RtyoAqesfDx22DLU/9TySOGQsUut7oR/P7gkSsLXZAV5FNGLWsvo7WWMkJ28gWmjv1
	 d5r3Hbq/ay5aU3PT8gyxB3J9o+UAaKGeUEIcBqHZMO2j6yEq1aXAtzhPBm6DrJt6sP
	 tK0bOZAuaFcTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160FCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238359357.15426.5696732384612321224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a5e045ac539ad174d4cbb0b2bf0d903564986740c930c8aed575c447852599
Date: Wed, 05 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762383593
