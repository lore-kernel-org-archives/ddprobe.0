Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A57A25B31C
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761854994; cv=none; b=JPi+4OGVjDOIyTCn40Hz0HXPiC29YtufjEHsFdgPTn9XQMSxhEv0qu+VupWHTXoTR6RzUrE9htfUfLsvh07uyFgvtCctRENTPI+qGhEdpcIXh/3LMUMT9vl5miuA5iwdoDLNkyqU8o4lvk4eRtoh60t2mdHBXT+2E2AAuQbtV90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761854994; c=relaxed/simple;
	bh=NlxSDrRjCYwrgF02hOljV3zsravNR+oJM6ppaB7cuuA=;
	h=To:Subject:From:Message-Id:Date; b=U0PIrvaoyAqbFMgbH1zrApxnX6gxotHpQHwc8KCVTgZcOioFzGiLGpOQNszN54z+kJPwI6L77n2TJKLO40MX8JvVbbVIEV7EujkNp75apWi1ZVrmxusaNEBtQe/Ji3nSTLxtnQM3NL1Ag3+tPcODFOxcjLQWZrwki+ZUb5Qk6Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/3Bkj1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/3Bkj1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3627C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761854993;
	bh=NlxSDrRjCYwrgF02hOljV3zsravNR+oJM6ppaB7cuuA=;
	h=To:Subject:From:Date:From;
	b=P/3Bkj1/JXd3Er2JErX1lNDxqFqpuO8xCLfSbCKOHNXBOGshIRNUgBZBjZyrmqsnB
	 olEASVieEe0bidbcu1TYvgSgnayTwdHiOfMEa1kKE5zeiW2c7nJOy3BYVf6HdOuxcE
	 5YfKRgR5CwmL4mm1imQOmIP2Pb+R2ZDmz5pcV453ioLzKQnr62AJ9wMYi2jtWul+7N
	 0Y7nBFaRXAfBrwgEUnrvBnlGwuRt01ggysVN8y8ite8P1aM+cvqtDUNiariox/4Wlc
	 MfpkVTZ56nt3SAODFX7uScOy58yb7RsHFxrKWnjym/edDIgnm57Y5uVHpfxThZciEK
	 q/JqxYX+kwB2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E2CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185499360.12983.10288552632647239412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d299413b660a556977d61c0c8bea7536cb6975e4d532122428f31b7bcab95a
Date: Thu, 30 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761854993
