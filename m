Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BA7881E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749412194; cv=none; b=YeS8q50eHlu5MQMNi/TgqMisbf2ySHuda5o7RJepFpkPNztgKuauHwfGrGztbii23OwxaLr6eonBHRuPHToolXwecgaMBfsYJdLvBuQjgDHPZIeokppXI0VNlgDadVTqUoa8E6RkpNr/YDFTZbDof0+RghIad8rvqv9EttmdA9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749412194; c=relaxed/simple;
	bh=NRTsrZtJliFg3wdyEsz9Up2YICbJWWazykJ6+Te4ptg=;
	h=To:Subject:From:Message-Id:Date; b=U62Wc4b3x61vfyLxdI2lnodj0mJJ6L7fPaXWSsNglaAdv7uk1XyPmLUG+7xhmvA0JZArNPfCWMEiSEZ9ltmlVJd43U6Tf+kL7VYegIiHadrFUBXgJ45zXuh4obqQWpLgqdeqcrCcFM+e3X/tZ9qQ0xrLd0A6tGsqVk6dNVjIhqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbFEVWZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbFEVWZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A810FC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749412193;
	bh=NRTsrZtJliFg3wdyEsz9Up2YICbJWWazykJ6+Te4ptg=;
	h=To:Subject:From:Date:From;
	b=TbFEVWZYu6gg3F9UPlWdGMpAQwrIG1gV48CClXAUF9NuL8fqyj+4NrtHgsmTZp8PI
	 mynWfUbwe4pGbpjghzrz+TeyBEx+SOQF+EVo6QMdUAuMIIYQBQ77fhB+u8ChMJ+ATc
	 49MONx1kpR8Ik9CyRD6SpadmHZ6BkLNiKae/bR2zPA7YqisWfSghZLzHakqjlej3uF
	 rcprToLRwn9LJ/05xR18aOedI5/9UNU/cVyHLcSi+VpWA4rPHVqHkMlaJgKxoR9K6H
	 S40/0IyQgfiyt0yDYFi3Y4ahEX6+ipPSNGODK2W6J5hJl9v+oUprDKeLxR40Jq5EnG
	 e2/FnR2b6pxBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9232DC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941219358.25502.5539110806743163742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f282570d75bb9a35965f63d7bb8be13019192496ac59377c7614620466905f62
Date: Sun, 08 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749412193
