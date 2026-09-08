Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC92320A14
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788895834; cv=none; b=W8fHrAa9ZqDUK+DTKfU4o6oMaO8y+HXjn5wngPZ7IrDZIDa6NtrP3apQKwxUCyObbPQuzqLbJMBDZ/NiRbiDG+uFX3ievAloZrruvkJIQ3mNH1LKCd/R++dIaWGTjILjZs/lhcoMYizVJem+vmvG6j9SwqyJuCGwRTK1VENfOZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788895834; c=relaxed/simple;
	bh=ogBXJQF7UROgaSbPek32UJz1EGXSoWjm6x6l6IO6pNs=;
	h=To:Subject:From:Message-Id:Date; b=u4QXH3n9A10Qm0vz8Bru9HxplMfa0QtaIkFUQg0ZP0vF5J+zXC1dGXfTV2Ily7pABZMsaYUvPxkb18EXrUwbqCu5Om06/S54PqsQ10hVn65OnY6ev2VTeRp6oLm9k/9zlfTX6hne04vro+IoOI1ytJllfPbHprX4Q51y+Ooi0e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B439kUKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B439kUKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D899EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788895833;
	bh=ogBXJQF7UROgaSbPek32UJz1EGXSoWjm6x6l6IO6pNs=;
	h=To:Subject:From:Date:From;
	b=B439kUKmIh/x8hpzSMvWuXD2V2XWdK1HZBp5y0DWyf5kIVraSgS+MiyO2MF66MFLd
	 lnhJ7upYLe+yq7HPWo4a3Juu2z1jIqbRK8YJUrzqN70mNdqWJcNs9FsbhyUFy9c79T
	 acTi0DZ/pl34e6KCOj/JnI8ony4YEfe8U32RPZH/SXEwKvoYc1g3vx9DrEWzDEUF0O
	 Lk8h7tgmbVvecM5YMYlvaFlvR58rF/bLvrIB958/RX4l0uYbhg94Y/wjLXN4S81D/1
	 4pTW24SBG992GB0oZlOkzqhIqbm0jbljvv8zvOjUccVu6BfgSMMi5sDki5Dg2dtZGv
	 ZP61rcPz6Z18w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EE4C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889583371.9115.10274157241817701485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6ef88398bace6df8cde922df989d4b1488eb2f3f399bf72c6195ff963dbd4a
Date: Tue, 08 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788895833
