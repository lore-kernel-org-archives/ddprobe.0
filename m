Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B5D214220
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736541354; cv=none; b=e9fnRyTZISdijW9epVX8p/2kRyuZV8Sov+mpNwTTvyyBA9lTvrEXAPAcmI2A/j+DF2AGZA1iRfGLkh50eDgmj6myvU58LH7R/BBwI+Xk+IzGZH9tabx8sTJFLZ/45z4N+DGNbTy2FfTi9rqjLIRwkcwF3tE1SaGhfBMiXMZpk5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736541354; c=relaxed/simple;
	bh=Eml9HBPdyYAItFmYTzBcCjvEkdWdePkgHyJdecJv5qA=;
	h=To:Subject:From:Message-Id:Date; b=C7evZGO7siQISaMl3d+cnqH9OXbVHwca3a9EmHy/MRnhb3PJDhGu1DPPSDjiN2XugcSCaZNhOgCnEVxtj+gfrvgqv7aTIcoHdEEsOQaUycQx/7n5iK2vxmnMr0HBrOtCPPkG6jOdNpxojZ+iuaCIIysL416/wKmdY/QDyIVlH3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9+18fg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9+18fg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5BEC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736541353;
	bh=Eml9HBPdyYAItFmYTzBcCjvEkdWdePkgHyJdecJv5qA=;
	h=To:Subject:From:Date:From;
	b=h9+18fg5lCD/zHI2LqwTA9CTDFbeghywuuXS88heHM39ERQKv3Gm0YZl1KmAmtJ9X
	 lKSSSuNZdjRPknoA40XzSpF+l7fxczpAcvmyprTGeanyqCRZTXSO/0jh+v+TXlFiQK
	 ZEUyGUpE8kCo79DDD2kS8VJXbD6H4FtdwebAW9V7jz5SDeBqgIryusNsQ7IFdeKEzZ
	 yxKf2mlphowYdR9EfSk4jnaPwpigbMSBgIITvFWy0ieBPwHVMowJ65hYzHSN0C6Zc9
	 aMEgPZgkepQvwxQ3+X9LRATjPIv7vhFFot5Shw/HmXuNCvWFInsFgunyy0EBZcxXi0
	 QVIY8xFyDj9Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944EDE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654135359.5781.5995702546714431303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4798938dec8f59057e482e14b1b7b969a1e8bfa94428eade285c331a7ccd57
Date: Fri, 10 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736541353
