Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED09555E76
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709246897; cv=none; b=vESrpwIB7Pj54BwI6BeVcbJiRm6oW3KeouU8RUp1U6PpT7sgU4qMXsOP3RA+1UqZLT3Rg9LdaDjvulNcuMPyUXkumLRAIThblb8svCPmzQoRCDND+T1KrKEJpn5QSyQVlDfB6hTfpTWjYXnXEOKG36uIlPBkJEHEJRIyG0BT2V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709246897; c=relaxed/simple;
	bh=u6rzrQbkeqik0CtLmUBje9K78oyerViy4MscRZImDD4=;
	h=To:Subject:From:Message-Id:Date; b=m/BuCh84tMvm/C9O7fmrs1xq3zkHudzTbjREnoZjrxaNEQHE/Mzgn8FPXHmlhqIoAGQBIlax3B5dI9g5tUgRPObwAPyTjIivBT1Ad5xzlA0MIsdPeyuw3HsDNBHzw8JOvKF4QH6Qv6CZNZlGeUFhlSgn6G90xVNT0YaKvS7aZsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtM0Lp1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtM0Lp1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788B4C433F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709246896;
	bh=u6rzrQbkeqik0CtLmUBje9K78oyerViy4MscRZImDD4=;
	h=To:Subject:From:Date:From;
	b=qtM0Lp1dG/aXEf533GOtRcR8SLGoqn6DtiDQC4Weuuqk1+qZdhqTaSni/qAPIloIi
	 Z8o5QohQO1opFbYYaDG24tDPp/QOPd8ZOvHjWNUJztQ7dhC4VCBcpCUVVt7Br+hYCy
	 juwQul+SqS5isbYx+LIke1JDkQQ9L/aKbuYNmIRwcapQQ21Sjo+0THk2KogQr6WLI8
	 kYdMMSDARgYpbWZDawUAJJ3eZTIyReejfBopAtbgdWtmGJ4dZ1OG/9MbfMuUnjYxxy
	 l8fqQRFhX8VisrOjci9p54fUupBH9I+ijfefj2t4cbRZyqdx7TIROVTevZ+btSC/Q2
	 AZwwcgcju88xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFEDC48BF6
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170924689637.20706.1916666424048106396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e1ef53430a2f78f02f178b96b5b6f17c939cae2f2917b389eb9985f9579584
Date: Thu, 29 Feb 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709246896
