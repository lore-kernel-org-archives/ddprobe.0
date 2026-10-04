Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFFE42050
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791112234; cv=none; b=dg6+cRGHCYIHjLDD2F0iV1c0Bl0RaAMFdgs8FilcTV/4kziqgHOjrOEutMkyQ3h+AQvJY4+jf2ifvOgylCw6VB31NWWj7Gppee/LBv+cdAt58eSdj+M8t/L7MF429pGP258309onJCzkbEn3ucvQD45DkYiB6U5CVd4hyXJkJRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791112234; c=relaxed/simple;
	bh=QS0yOCxg9AyZlnbK5yT0z6KJ6UO3bI8R3AGBlG2Xkk4=;
	h=To:Subject:From:Message-Id:Date; b=oNp2uuTf7Q2OWYugboBiIAiF0FJSW2N+mVOVJEVSljd2B0IOb7HwYeYTg++oArEj+9O99D63O5dXi7o1ovnQ9WyQZMm0ghYTrbqGLw8XjOpvsJffbxOetuo41o4VxjuB24foo+WbJo1td98wHDd+lVR0aV4EgJl74P4hw/3DVJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F48esa0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F48esa0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ADFC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791112233;
	bh=QS0yOCxg9AyZlnbK5yT0z6KJ6UO3bI8R3AGBlG2Xkk4=;
	h=To:Subject:From:Date:From;
	b=F48esa0yaBpQu2wcUqW7wLa+CbDAnN4avRz06s107Hitx5knzdQ6A0zBGXrIa1nRw
	 B7ZisPLlxeU929/wcKY6s0lK5sGmMyQk78+Ez0YnPIBL2LWFZkRJGntu/W1nixdSQl
	 K37oPnR29k6Axdyhr94bGg/94ceaUhIa2L8+Fg2LT6irkm7LQzCYTwm0qs1IJAL2vY
	 zIRC2fkxg1Z5H1Cw+sSuHxEI4V7ud7cncy+PzcdsLno16ekOqNb7/t7AF/XDyXvwLG
	 ydDCWj5OizCrMVq7ZycJRfy7a5M+Fe9FiGPgNO6p8tPI1MJcpZnHxPNKVsxmgb2H7l
	 hNM3op14an8FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF10BCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111223368.19230.11782308148996467729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4df3a95f5bd66172573710462f124b7b5fa8273109fb180f51906e56a18466
Date: Sun, 04 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791112233
