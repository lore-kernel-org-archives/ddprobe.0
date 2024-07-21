Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5585610E3
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721520954; cv=none; b=WePkz5gm23MATQgUUCnwMEr5dUEFR3egKmpRXAMPjyteEnelUxXFVBkat/UCkzIL1U0uD191RGXMftocWy6Ys30Q3sSpiI2XBqsT06RTj1a9ip3Mkrp1XHY08eg6hrrZxwBJo4McBRwB29prD+qYjR0QxovN8V71KbKLFrzcM30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721520954; c=relaxed/simple;
	bh=HvA5Rgf5JgoLl3ukhgHGEEn356HmpaBBdriwdFYp5hA=;
	h=To:Subject:From:Message-Id:Date; b=NeKmV0Qyt03n4vbAvIw39UlhTu7PS+OtNu9ldOhVq0fhHRpBaRFGRy9q85+7678Mbks8LQYqbz9/ejKLhqu5bYWOhkAabyMFhzGBtIPleNHln253qsN3AHuRaj6N6Cl/aMlJazJ7sPjoccC9peL3sLVFyXIk/Tcf5WVJXkn76No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0L53Lhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0L53Lhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC97C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721520953;
	bh=HvA5Rgf5JgoLl3ukhgHGEEn356HmpaBBdriwdFYp5hA=;
	h=To:Subject:From:Date:From;
	b=R0L53Lhq+Ti93S5UxMDFqdtQYbO9LVZYcV8s8nQBUckd96M6fK95TCIf8JCHhmt7p
	 OaVxhslubtr2QgCVvf6FMF4AVr0fbQ8IkdGiKQT+gItTN99vfMWzIdET6bAE1T9nO3
	 EG9M6Bo0nw0LB7Dfusn5uK19uUGnm4Au5RAWIxlo9MufwWRy+rCdlZscPKie/hLgyQ
	 xAFU0kMG3mZQ5KBYN+HHrSRboSOnJP9H49sEtAFJ1nX5aJXbwHQY3euvKxdgYDf7ga
	 xj1UivHWg0mO3f7JgqGeEq9D/8xGE3gTR7qSGWzc/LpF2xqdU4ebVUxy3yduZWN9at
	 EewL0nKrrx02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A313EC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152095362.16799.10448655845628970453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39875c2eb62d36ea552794b9587c34d867fd446bfbaa72479ea21137e312646
Date: Sun, 21 Jul 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721520953
