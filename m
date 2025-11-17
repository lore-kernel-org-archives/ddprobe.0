Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92F22F74D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763345514; cv=none; b=OMj8SuMiWWKiw719etD39NXA5/BTuO8f695t3jtkQM3yda4Qkb+WoQtwkbEM0WMawy/dHvMfPGR+pJ5QnWNWaIH4fSUG1jLCCH8wsIAg/OuJbF2wBOCzkUWYdyWBMP8l5imSlzb1tuK7z7uGhVb69rkAFwnpY/4349Eeo+wXLkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763345514; c=relaxed/simple;
	bh=UItw3YCWR5iGu26liCksH0yalIjpDmqrJa4nrKrGSas=;
	h=To:Subject:From:Message-Id:Date; b=CYjZxVkcy0Ok7UNyfKH+VV/38WvTOrxaJf0oTyv1msYUeE8wOqGwKfgB4G3UyOYISPRBXcWg7LpOn1D0o/SjC6epbyxuEccUH1blgvjW6evrmH6m1TCd4Ovjf6kbLcfXJHjJZX+rhOTcZarZogjIZEUOQW/OLT1eVjgTGL9sFA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTI4RkNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTI4RkNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8371C19423
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763345513;
	bh=UItw3YCWR5iGu26liCksH0yalIjpDmqrJa4nrKrGSas=;
	h=To:Subject:From:Date:From;
	b=rTI4RkNSO4i8NXKbaMRyopxN1E3wlNUodCM+ReEkPTjHdhqzrCTyGi9m2Ha8+SAIE
	 OMC1WpFwJXwPmw6bYl7lAuGG4eJj2vPhU5wyRiZ5YyaTVR54sHNzT1Albb5lL9dpRq
	 hAVXWP7meFy8uyRUK/LkPmwsbylOz1n4FDJfrxIQcegBhKmURmDwWFQv6ouuejEQhp
	 rm5QbJEh51UqbaMeY9QNAPtmDNl3Z9V4iREEJmVvVlE43vLgQEqE4NOJL/3xUuq7g/
	 XmvS3fVwotoxsoIFF5ZyT4c/qxpsxkTDlHH8m7JUNb0JPAok7p7ZWp+esYvWTZPd+N
	 EpsbSIYi86THA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9836DCCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334551360.15205.2575766976259705362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b1b31150121ad46069b2c82c6d11f7a33e7b874b52833c269132a2acac6b78
Date: Mon, 17 Nov 2025 02:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763345513
