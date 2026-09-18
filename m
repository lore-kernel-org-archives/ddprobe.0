Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385B14B4864
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789742434; cv=none; b=V+S0hU3kWLPDyG62MRYyULPI0j7PhsNayNQoUB1efMou1T4/EnEl0uJIYDk33bhCNoZKMP+irLPVR5o7WI0sLVMwDQWWg/xZUmjwgxtQNpFzDk10LtwoRMfwDAnKjwKWRhk9F/9LtdNebZGjlQqxsA4M1m7YpVQKErzTt5QGX6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789742434; c=relaxed/simple;
	bh=GHA0aVfEfm4bMrKgOGH/ACUJ+4DqJBmNSXLlzkRxyoc=;
	h=To:Subject:From:Message-Id:Date; b=fmq+jRI7KRH53EMoKd0YEYDZF/6taph0StRoyD7dRxuWZR4vnYpcFK7PRhVCIAAMvSooIYSmXbii4UFpY6lJkhNOvoOCynmFJC75eVaq5qYf4NuQVCP0WBOd7tiTDqQ+305yATVbwUYc4ouP+6A3D8rxzfczITlkfnV+SH0JLP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw7uAJJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw7uAJJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D163BC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789742433;
	bh=GHA0aVfEfm4bMrKgOGH/ACUJ+4DqJBmNSXLlzkRxyoc=;
	h=To:Subject:From:Date:From;
	b=aw7uAJJ9Im80sMHEUKFBKciuNy9bOLS/rn5bDkSPqfo8PwCp68KDRfL52h4R510U6
	 rFxXcxrPn4x13f19CF7o9W2aemS7jaO/zyWziiDmPa233b6NcOUOlKbVWR+ZmzSDVl
	 Av7tbtlYBYiSocuAOnKqJRukIRYeHF2JKSwAqz08MdjjAk9lXx5RWSUcafpclbZGUI
	 SKcXxTw8ttosK0SgIUbjgICnGCTrVr919GHbRcWZU1jszlEGOWRXswK4sUBrkmXRwh
	 OwI7Exa85T2ofHGhIUp2QVKVJ9J1uLIJC2g3fS8g4ZNja/Pda8rQ7fnDg25dpX8sKl
	 mSMl1S6dwv4og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9B5C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974243370.29797.13790124419154900587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d593775a5fbe28e8d0716a9c6e40b244e0fa93e76fbdeee85ae55d6565262bd8
Date: Fri, 18 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789742433
