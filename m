Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A70B1DF261
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777060054; cv=none; b=Bd8DuW0Y7wOnNOMxK4ySe7z2veoG6ahQaA7Ygl4kAgIxPY+iQ9gXaN5/KtSAP/skpV+fyH5TFvqxUtMxjY5IGJrS10DesP+EjioCVo2PtfwYSbqn8XKTVCCrj2IghyVoNZEXjBWcoJ33Dao7VoA3dkLbGlBBDJ4M1U2ERJAOP5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777060054; c=relaxed/simple;
	bh=TPW/38AHuSD19FiekntkFFQBov0aH/UCCjyJMYlSQD8=;
	h=To:Subject:From:Message-Id:Date; b=S7S1SMiR5zDgOZhoFatjGmxW6uUaZCk3qm6nl2WoFJc5mEWH6BKTMtsxJhNfFUb4wsMOItwbmYBY2PFjNC3CL8EW+Q6jRhAQENgXE/wAKUtQ7TbQ/jz+TpdfSkiIoVdHd3keJWpzETN01e8tbkIaZ3/YSrci/fxykjTn8cb+/70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM/Z9NA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM/Z9NA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C9AC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777060053;
	bh=TPW/38AHuSD19FiekntkFFQBov0aH/UCCjyJMYlSQD8=;
	h=To:Subject:From:Date:From;
	b=sM/Z9NA468JSijh+y7SKATFWD+1WfPhM6kmhpZpdETT7Hjf1Y6TDUTnXqsHa9e8rV
	 ut9Bjpgi0b21BaFSofIjGl6txxQC20BNDwd2vIW5o4VdBXRp16ev4A15ERPrRawrO2
	 lBWN3bjCrfeDDUgoQXSqd1207TkeHLhjDkJ9W9KTnPy80dTJHD4N8Q7acM5A7yk5qW
	 Hdi6aRf+/8amaK85mxfRmMiTOLQsANG+QlrA43T+N8YgiFprZ2SJ0fQzu5yfPDbKFt
	 dd1y2oiW5fgKIfFh9i2Q6Ne4WER8Ko/RuLarsYkiR1pv2wUFXihtBoljty4veXBW7C
	 ykas3CYXxBxDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9656FED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706005368.26433.331511867059256516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8718d758b3c89e31fa1007649c21b69a482ed6c9ff5365e48c605b927e4d40c6
Date: Fri, 24 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777060053
