Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453E122540B
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749622194; cv=none; b=gfll0FpJ2Foq1TD+EuInODMXp/4YG46fkgXMYLm01KKAZ44fF8ZEOzKAvFJAj1hWjxNiyvlK7AdczNxc8AwrRozLtyI5V0xwzWKNLYVwr850yv2gtL4MW9Cen+e1l8NFQekPDxa6Q5gfqC85+l1dmHFVWjeWC6DmYf2/DJcvlBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749622194; c=relaxed/simple;
	bh=ByMtDwvINLmuPuTwGLhzGIHYQQfSDSzP8Vueq4JvkIA=;
	h=To:Subject:From:Message-Id:Date; b=O9lZhz0suLOi8SJO3oKvn1vNx16eh+NGa/16752MITSZTtlekA/eSpZdWfZpjldFd831X3EyzXiq3FtX+tjZlZ3OL9RM61w4J13lLb9Bpf2T1KMspTlyDKPyxpIf2nyt4OP1eYM824qdgCSRCsUvpFU4H89Jkbe8vvRJiKoT/q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARNnz8G/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARNnz8G/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4F5C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749622193;
	bh=ByMtDwvINLmuPuTwGLhzGIHYQQfSDSzP8Vueq4JvkIA=;
	h=To:Subject:From:Date:From;
	b=ARNnz8G/ritu2Jwue1dtbv9xoK1HNU2dIWflYBcLkU0iJZEGwkvxH3BfHMPnypz0N
	 mchw4Zd09PSx6oRouKQu2gIfw+x8aWoKoMH02c/tItOOEE1dyWf7G2uX62G4I0Xmi8
	 WJyyYDk0euVWsqqqv2F9rMvszw+tgg59CYrl9we5wG9WGL/cPlElEFzrACD2UvOoEf
	 PKGsItSqMg+3GuVXU3w0K1Ep634NYoJux/Q+ZzNXrz6rt+2RiaaEcERe08Ucy5f1jz
	 11393GaenT7wfAAYpEJlfSogODeWOkPApWgiiws8Xnc8gDFmgfgTAZQjbWSq94fQlj
	 xqtTeL4xnx7Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FAEC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962219358.7296.10101455067154580794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34740516eee4dc6a063af87c8cc486c7e0ec3bfbb536e6809763543e675c6df
Date: Wed, 11 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749622193
