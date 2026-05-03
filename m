Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FC035F5E3
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777840054; cv=none; b=gFTMJYLzWBqCYXDXPqs7/SuynA8tYEsRd21qSfyP7nQDN/2ttZNRuWHr20X8TWcvJTS2QOIqnQ1WbwuTIsNBPMbmNhSDQuZ0FkTVwaZ409FI5HYXzCGm/d/1EHFFLXAOrE82hf8vhx+cwXN2anECz7RWZzCwydzYB8PXoUKcLss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777840054; c=relaxed/simple;
	bh=Qs4e754ZfoYkno8MJiPRQx+p5X3GfCFEbc+g8A1vY/4=;
	h=To:Subject:From:Message-Id:Date; b=Pjjwfl9x2z0vbacSLJ7T1A86q8bZg4RjASYAs0IYWNSMp/SukF2rakOD1xJIP/WGyed/PDgf366sPefrU0l3j5wVECDGxq+UsK5RuJUCWa2E0Ij+X11Vl17+wvcE7RDxb0hl7bWac67AA0Wjyu4zPVkeSBZrreFruMN9tj5n5fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PITG/V/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PITG/V/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C208BC2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777840053;
	bh=Qs4e754ZfoYkno8MJiPRQx+p5X3GfCFEbc+g8A1vY/4=;
	h=To:Subject:From:Date:From;
	b=PITG/V/M+6u6nOjWiBYWZPws3kcOoOYWclLnIs8IhSfmTH/jWdR8fXIC5UC9pqfuF
	 uFSveDCrnFbmaBmdhxqjpBWpEJVzwWHHQ1X54hK3kieB0hA74fH/B4vz31tejZXUMS
	 1H6dAsXhfQ1EKkvup/CIjRYy6wOyOuBqMjmJ5gnjf7daEcODB2wVQC2DncAGWnt0Ye
	 JMJYgIV0pVgKSWDKhTEQ4FuTQeghv4mxsvKgCa4RrLlfWOLbYGodinhuAU1Cxqu8vq
	 bYfYSgrjEWjckREmRctCliYyQGOfNdTeMMccblibr8qVvFE4PNi4iHiFZknz39VXEb
	 SWkkcJX4dLbqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC53CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784005368.26744.10433431366775572115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956b4de02d596a3c84a61c3a292524b3389df9e7faca5c59311da325f266c9db
Date: Sun, 03 May 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777840053
