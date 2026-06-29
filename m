Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420A740D568
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782698314; cv=none; b=s4XKczPRGAiXRV4WIEB7NN/p5fAzmTUJNnpLrTIjlmUb38mxM3ElyBps4noep3ACqqtXPNZ93N4pYbYdWBG6n6YvPecuk7LTexsbtFm9SaY/22IkNnYBqLn0PigDLQhEWvyVPx7CxvmnJ/px1FG4coRs75QnzWxt0VMR0fOEh9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782698314; c=relaxed/simple;
	bh=wsFJeWdyDLizZ2GEIIaTDPQH1BPRSYk84s6ZaCmsqy4=;
	h=To:Subject:From:Message-Id:Date; b=tDAIeKbSgFlsXDa1wS/1lWZbNUysIYHL3X8BrbUzm76w5LYLm7XE9OcC0U+D0mQj34GhZGcJWto9JzM4fW4/30ItHhcAFupG0pJbirP0vztsrZ2gNT0AM88sNY0fvMiIP2VvqPr6Y6yQUimuRZejK4jpX7Uyh42bQjAZZrLXraM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJl2IxF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJl2IxF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE345C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782698313;
	bh=wsFJeWdyDLizZ2GEIIaTDPQH1BPRSYk84s6ZaCmsqy4=;
	h=To:Subject:From:Date:From;
	b=SJl2IxF9JapaDlrftDS7qzDQIBSd0EO2Fubnb0IuUK07TnfF1rRTODxvYSx+cdyr7
	 +68WQyJFxRTa3iIix6xOos96N/aP+2XimGrJCwJean6k1vpxghOcni2VROYMlePkvu
	 AE2kz6b05zWojE6f9w5HG/Epe308nwzN/y6wjbrmzpaJc5m73rFktxutwVRoxx5do1
	 0fdk35+9VknE8uzq/oeJqmSFOt3V0cV2GYuhKM3SOPZwwlsHsTVjQ9l5TR+SzFyNEi
	 heIliYVC/9b2hNdfJBVkraafCZFDdiBWUmlDe3qgQj6CLAkd4t4bweNy7XOTnATkYf
	 4zKVPGudZKPPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD644C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269831369.19015.13442406424225525658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64421cb2120c092b34c0f253170669bbfbdcaf485ebbb85dee1c2e2fd964a899
Date: Mon, 29 Jun 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782698313
