Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729263CB557
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789745434; cv=none; b=HbsVcMwk4ZEI+dTo/dU4lxHuYZSqSW2p43vIZA0oCt8z2v8Nvn0FUTl43CU0mL/D8EUAHkgo2sFFgBwf5sNpub0YzQe0SiCBwCRL3OW2rLsSkrOGlpNo6GNd82k6NXQO8fZRQi//8ELtV+N/0SgnW1WjUAVlhI9f2n1QSlrIfok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789745434; c=relaxed/simple;
	bh=MIiDRgGRumMkIK2PToQ6uR0RPrqUa0HX0VpDmwJNfZw=;
	h=To:Subject:From:Message-Id:Date; b=PX2dAYgNWcZXIaZfF7Xpwr25tIUqwd28gArq4wJ8VetLuLS/9hoZQZrAzVkjTBSDu3HgxNxq8XM8jLLwhi2FrA9/ERNxSs7ZarV51AGSvmi8UY0ulq4VDfW1skicqkw1GB4wLBDlLkr4nSNHUxzADlzFQCpjg/we4CJJnxkLll4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1M+5vMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1M+5vMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA24EC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789745433;
	bh=MIiDRgGRumMkIK2PToQ6uR0RPrqUa0HX0VpDmwJNfZw=;
	h=To:Subject:From:Date:From;
	b=h1M+5vMSVQzHaZW2kKqXdFzHoSMr4tPqXqqWh22RZU1Qlzht4pVkW6ZFhcUWZYfoY
	 IVVyjlzRp+FRT8Wo+qvWHvd9AfQLEbYWTJgj7YfYfQ2Sry6vjS9Gcj/zHVTCZYg9lP
	 7sqDuC/DnAa4aaoW/2t1a9vY5HqbnH4xTpFONhYlNHkr2xzxDTzc7AnDZrSI8Q8sjS
	 4l/kKjFkkBOfkCyoEPaBPJv06K3DL831/7OibQ4tz5BGTpkjf8c/q5xtIQ7wPH/e33
	 6UBCKUtf0hlWgM/7BNgDk5ESgcSGAZOfB75fRMAJ4eUb0JfCRcVZqpgFSHd/gPYeBK
	 XxF6LNM6NrZ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F79C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974543371.6386.2769092748606666434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba56d54fe140211f89965b319696616e93a7b4240784da2e8dd3a2b6d76964ce
Date: Fri, 18 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789745433
