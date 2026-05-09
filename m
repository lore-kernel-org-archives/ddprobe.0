Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F93D3BB48
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778299054; cv=none; b=I0HBcMmFGbQGU7nq5BEpdH4VNQ7r2HroQM2SvwVd3VZbKm7wfmdn5VlYfu8vSmz5zuXRjaJZZXjTphT8QEZG1PiIAk9ZU7OI/KieU0hTlDipa4kFGhihLmpI1HCaggM9s14IzUi/I1U3rXWUXZ5ZmhiNwb1GUZbUjRc+vcFclJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778299054; c=relaxed/simple;
	bh=pv5KBESIlUAOixIQtBPLUMTyfbKAK2CFd0Ohwgh71mI=;
	h=To:Subject:From:Message-Id:Date; b=JRueaRchZXgqVcgRQutJR5gYWtiHVPvtdJmDPcCmD5NLBiBOFJQ11p1e/WNOQ3hV1bix/MtRMl1fePwAQ6cfKHbSBsmG0dbSklB70/4DLknaz0DMiMsbeEgcV8Qf8htfgo4zEbrvW5xFGDmREV+bMmGOv33PyAFqGXH9RXggKxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyI5YwEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyI5YwEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD43EC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778299053;
	bh=pv5KBESIlUAOixIQtBPLUMTyfbKAK2CFd0Ohwgh71mI=;
	h=To:Subject:From:Date:From;
	b=JyI5YwEu+zGLReOTQmr53qMxvwUQQoCccvL/9RGc+u1wfSLjFoFfrL/WjC2tR2gZe
	 TOqiTSm+OhDv2R/w8XJv0C0HZGR+69sNf0dQCvT8B7SaGHwhhQs0VtHKi1+c6eNvuT
	 ShUsiLKHVtAxHGXsha2ZSxCRynYRtfPGVp6oy+QCEk9JIBdN32k/cSu/VYuhPTgmPT
	 yHqo8FLOKKAPH7+bho7e0QJiiFK/xE6Bh3ogBhWWeSfJB9xHV5024wzjSF4NUAW1/E
	 eZvEmsXKW+yWNf89sUWlyK6t/E3CBQASqxLcWkuzfJ/tufQWDcoa5kk+IBz/8tU6b0
	 /+oG1DRveEngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA7CCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829905368.24765.1736757289585716239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d32ac4de58bb533c7e586255157c2b34cf3ce879fcb27c498079b0f645ed1d2
Date: Sat, 09 May 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778299053
