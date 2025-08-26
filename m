Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F1626F2BB
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756175394; cv=none; b=aKX2VThzOdOC5aJx9s/KkUJ/2sDQWwnEQcmVPpDMJled0FRgoXwgwvA1+AqSS4vj+2z9jzcHzAHn4Wvrbo8FEittxWffnT7HE435CiypRlKzWzyWQOzIc9SAzVwdc1ARLYUuAO8BcOdO0bzi+WWXskh4zTbbDel5t+yE8kGJd0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756175394; c=relaxed/simple;
	bh=KSI9w8SWE1zC+8etOZADZblLuvMFJU+l49p4dC7A0wM=;
	h=To:Subject:From:Message-Id:Date; b=YPLeIkXoG9HEBFI6rMp1RhhCfSW9MxyYeXbPkn9C+Lam8EQTjllQrH4BEMbF2b9Qxn9kldBisOYQzpokz5iMZ0gMK2AnfNTjBgw6tAzezOJIu6qLssOUMZGKfsPqYS23/HWGkByEQOiaoC9puU/cAqWX8E1mOwPY+seJJE0OImk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZvJMfft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZvJMfft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD802C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756175393;
	bh=KSI9w8SWE1zC+8etOZADZblLuvMFJU+l49p4dC7A0wM=;
	h=To:Subject:From:Date:From;
	b=jZvJMfftpkT56loD9o76gHDm4lyYjtlBxzbtEqxve8TcsLzB1sQa0gXzcE2ZHpBxP
	 /K/355vj0HLloDcz0mZhvwjfv1vgkIF+aByZysXHaPO9c1Eq+YqjPJNnojpPoXnTAV
	 E1UeHaoutste8kSOvkgQNjtZGSVPHGPjUQAHy1trgjvgAAbmKqeHuJks/R13Taziw3
	 1hbsXKi8Iihs4XXg2NLtJ2nKOVsB0FSffYHx84tyhDWTkFXe7qvdMnL3iVzvFV35Dt
	 xWRKeZQiRHX5+3oPOn2XxJgATSUpjoXwG5jkDkSSJyvxSdYVrUmtzJA6pR8BosNoml
	 rvJWBFwOKEnVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99950CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617539362.13663.7577244765244283492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257c47c9ac22bbd4eccc9cd2855888c05b83552370befecb27d390c55ccb32fe
Date: Tue, 26 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756175393
