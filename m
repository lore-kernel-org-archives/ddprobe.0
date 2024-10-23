Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323381C75FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729718154; cv=none; b=pHIj3UC0z16ebwtjDtNyLTFjVI9GwSyd5aaBt7UQ3+jT/hWtZQ7GsB0hl8IvSayyIGny8SaytVjNAsK6DK/8w38EkiX8huRCl9cfb4f6dEc/21rJ3tHux5mMukBvcwni+QPkhOPWZRH1Udq+DN11oXc/TQptRwXqhebeOIY16RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729718154; c=relaxed/simple;
	bh=AdDXWU0G2C/bVRz0UTmKcAOPDsyHMrMQQNmXmurdF7I=;
	h=To:Subject:From:Message-Id:Date; b=FjgKrDAuqdSQfm9ZH0bRKWc0jeDtYkkVrve2ASag7NzIE6+IyCfKBIO1egB/c+A14WvNwE5Eyj060xPaGGo+R3H+DrAvJtVdxOoFsNS7QKEFi/8KHJkQfD0H/MMVgYathAV+g6tRXd9stqMuWeMztH+bfC4WtW/584QHMjeA0b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TY5jDhzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY5jDhzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EC5C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729718153;
	bh=AdDXWU0G2C/bVRz0UTmKcAOPDsyHMrMQQNmXmurdF7I=;
	h=To:Subject:From:Date:From;
	b=TY5jDhzrLEbrXsun91VobbvvSJkGBqO1Y8e7pRNnL+yn2sjOcHhhkf7yLlWAiJ7m+
	 bSVvyaPPr2K9EAgX8vwYmZ92k4O2RNxLocbrNyPwFtRXF9fdM8ZUUDwQ15p/u1I912
	 L5PW81tT+uxlsfzTAfcQqUQhEPk8/WlapVNQ52RzOHG/+RWmBA14ahXeyMzjRIoL/0
	 43bim/qnkBUIh6kK7/ANiqNG1zPqUEjIk5Y3GWEpIHTeGmaoR5abg52s/gPVV0bwl2
	 s8pNMm0QtCmtdS/TMPpanRSDUB+k94XaH1ujxUZSuoKro9FlGQgnM1Z3pAuXZoWLBm
	 0GwkP15DZ5Ksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D47ECFA478
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172971815363.31945.4644028842311473862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebcafb7709a8048d9d9891479db60c30427528a48ca74a6520d1e7424cffda80
Date: Wed, 23 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729718153
