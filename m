Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4014D46C4AF
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787927434; cv=none; b=lZYwLAq7c7LgbTdm67bzIQKCGlfXqTzBWfjyMa62RiNPk7rDJfyXMhc1qx2goyd36HWMKZI8QcJZy81o7F7VdrA1G+fagKBh+StDbD4jo6VPtF/FPjCLVE1pTHNcZJEz0xWo6XZBxAcJq0CjF4jN7fQgFN8rIXh4yywf/F+x9Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787927434; c=relaxed/simple;
	bh=40+duFwFNMQq9uRn77L8rz9BVu+OfFPsQeYfdMZ9nCA=;
	h=To:Subject:From:Message-Id:Date; b=dJrfffMkp8j3WeUddrOfWwjF4q9EYAnzhRLuazA4mKq3wwLvexmNxdidMePvWapQqwkQEsq5U8wPKGXrHcSc23zvbkRU4SXM7dTcpsMunfC08fUArcXTiMgX8mcPN7zlNe/IoFCQHVZXJsOifYIjNYSSMDoGYCOQ6db6TlApYW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd3tSh1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd3tSh1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0B2C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787927433;
	bh=40+duFwFNMQq9uRn77L8rz9BVu+OfFPsQeYfdMZ9nCA=;
	h=To:Subject:From:Date:From;
	b=Fd3tSh1P7wU8sGx8+NDVj3p7cxW8EMO8TEe3OF7oLAVMFoE34T8yCQt4t9oiKeFNw
	 JrMWdDQeeGxBMnt7Yy/eBCDrqBW4wOJhq8InhpwDAXaIciawCQOO5ayZIV+njsCVB0
	 hNOiI29uYYflOHW0pKqwcsVh46NUlfzf8woxpX1PH9Q0BDVGNgdW1m8PAweneobnyJ
	 MdpVrj7JrLAFJKcSBSJ6Fm6lB/IoVh/lttWMDh7c7ueJD06KiGyYnYOD050hfUD2Dg
	 58gqTyvXa9o8MOmuOY6FPzFFTcAlnpCDr+XY+iOtugC3aQIf9KYv68vcwZ7MXf1qYi
	 rkw10AMFFE9ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1ABC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792743368.16062.10530132145037491251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648aaebb627942969c601a3f07bf89c4ddd08b21b878ba3cfcbefb0c38a88247
Date: Fri, 28 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787927433
