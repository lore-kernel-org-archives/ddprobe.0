Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C43B478849
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778083054; cv=none; b=ARK2WjvyagaDGrHgtRkMpRC5R/s2oLEldzpUmYl93bQevt/qLgvfrBSe7AgXEEdHFFyz6LjN8Zx/CvlgTxinIqsNQg3xGb07ucOwnroXGqPLd1qH/MhABLDoqbUcrNpH/s3k/auxWm+PUmm1KQQz8dVKW6uCCmDMWbkGIukQY1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778083054; c=relaxed/simple;
	bh=S938h1RqcnyUDxxccfnDkjhIb7cwXr1P2w85+BawG6E=;
	h=To:Subject:From:Message-Id:Date; b=P0MGD1aVpeyP30tDO9AiDOdVgsf3jk5d8Vc4OcSgYyOscgipe6Mu9oDbFsAR707V+Oz4h3kuhAJrclq8mS/bSu/naD3i4t6gNJa+aWOwgF5kCIB4y5ZrdKPE1B4prXjH0hD98/7BrQxx2yU6wY7SX+qgn7G3KkgBQrxE9b0QAZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9Q3oZFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9Q3oZFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F4DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778083053;
	bh=S938h1RqcnyUDxxccfnDkjhIb7cwXr1P2w85+BawG6E=;
	h=To:Subject:From:Date:From;
	b=E9Q3oZFB2k/weT3TORAyFlpIHGELQFV+f5WNNRMC4yMOxjwNQL9YPb7HL8HT29NIi
	 DGTcgZGtFpow69PJSLLmFTMGmvgypnw0ST4hbwfW2qQHVDaFHnpl66pVVk03Nr5+30
	 cf2dwEEDt/jGZl8CG5BoXtvk1k+NbSZEizY6p6JkQF2FFUGn5exSSk9noAb+CuPxhn
	 Q5zE+XcqJOrhW9yAPNrr4sqRSQf98WA/77TOtM1QA66++gMSr3yEKmtr2XwqwvjzSY
	 WFSwkXAg1J84iB02nZmnYNZGTyA4g1kFXzTvPAe2Z+ld0ea+lyhco8UrTJmZyvq9zM
	 CRYIWyqlqD8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB31ECD343B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808305369.6251.14596921754467258627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372cbccd00ab7ed4605f95402f1846eaf72627b61e6f1c20322be8c36db35572
Date: Wed, 06 May 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778083053
