Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3133117BA6
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758725394; cv=none; b=B1pDdBulbhUskXkpeBGY8Iwz4/dmIk5hbeUTzptX5GKjYEGT5ZQq4pcPiDRTXZEd68QxdwHIDOEbZ/qyb9PBDuhjrZVb0uGHvfvTAoiqb6fsMPnMQLnK61KMj40fxHR0hRSI0oPymagKCg5/OGPrHIbEx024gH3PlCMfgM/FxFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758725394; c=relaxed/simple;
	bh=O7udHMcRhDKO71PLWpLyNMW9u02m0pxPYCepirWYzvY=;
	h=To:Subject:From:Message-Id:Date; b=IL4Kq/0o8bkmHlC6b1VfGx7LX04IzvAO6IaQd3voEnG6o6CIbexgotgqOp7g87YyljgI7p6Jtri3vQ4847vtcmegPJdPTiI1zUKf4LrQsRxhCE8mr+qJDpsZv2FjdP3F1xREs8oQ1Mndw7jeJwfWKQQCQY4cHO7sm4iY6B1v6EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiQY6gSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiQY6gSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B851DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758725393;
	bh=O7udHMcRhDKO71PLWpLyNMW9u02m0pxPYCepirWYzvY=;
	h=To:Subject:From:Date:From;
	b=KiQY6gSebl/Kj6xRQAub99ae/0PnxXL/XYdndA1sqKHJJqfLtXxbDxuYotl7puGNG
	 TdljQ+itwz1l4RGwitFqTG6rJq/zRSFSsIfiv+ZdG4ldagICyv7GX3sWrifm1SlV2J
	 QwEXwDsMkP1xxjKZ/85rcyGAoNarfyxHBeY36/5Uf3z2ilf7OJjMJgToHY5fx+6p69
	 XQvcqNO3ZwioKYngabDfFwQjRl91E68tfRB31Z2Ka5dmb6ZE7kSAcmRLDa5/SZctl0
	 uhdWm1TOCkAW1FBYsR4TJtxsl3E7JFvf7jo4POHl44nXP5Fa6zNG7HKiQmjtnLmZpj
	 DH0ZapZ0VfMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AA6CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872539359.11629.10866841367409026160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b7207953304c2e757b0a93755046592d1e06726df3e4bd056f57234cc3a289
Date: Wed, 24 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758725393
