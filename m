Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5469D15696D
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713938423; cv=none; b=DOSHNxj/CLq2X3Ilnv8vlH5MVZ+XvJ4s5P9AddJ1SZc/Yi9Kk64NAiV7W1iroO70NNqW/o6XK3pZUg29csS0jM2J2sVU7mXWU+mBJoa6DoJq5Op1n+IIG/BfIAM4KMpHZVznm/N9/quf9cccAuTtfxgD8ySAdpHrRrVl2mFLjZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713938423; c=relaxed/simple;
	bh=0sJQ1IbENn1NiVxzMh6l9U5E3yuxaS9EhxY1KGZiGk4=;
	h=To:Subject:From:Message-Id:Date; b=t9326MFcbH8R3QWnq7eKIiNB1hrFeCeANZMxx/y/lAK9vOt2NuDgo1K3/Bo6f5rq1EGF8Nny9DUdcvFjKiWAktzt+qitiS7I6zmcW3UeK78Z/QJkzI+O9ZpLbOqZOWkaPHUcpB1p9+gHixKsS++CaX2+9GzVqQ4FkPwwTU2B62Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDFjNnyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDFjNnyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0B5C3277B
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713938422;
	bh=0sJQ1IbENn1NiVxzMh6l9U5E3yuxaS9EhxY1KGZiGk4=;
	h=To:Subject:From:Date:From;
	b=FDFjNnyGgNreJLvpbHH9/3vl9qMSnOZGkqNMjeeRxPeZrOfV+dlxTFat2VMJJ36Im
	 J7gdtR+4J3WAHsEvp+DBasNIjHPpk/jEJcJQdrchhtn2k80+heQw6E0DEZrtmiwe4D
	 Ku1oQaj12VBgX3RFwRM2YI+1kWuawpKnXsCK1lPIOWXu5POBA4Wp5JxfbZpBO5TERI
	 8SDq/EpisujXtNepXPaG1B4psrUo5MuifqBUBODULaYHbJgDw7hn5CAESUq6PRY7xd
	 SqFneOMxb5IwR8gKPruqfs5deXWyul1y+lKY+gFptRe/3UqkxP5lpGpSc1l9Hz/QXX
	 weVAGjHUcOs0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ACBC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171393842280.29566.13585266165427691999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fbae549457ec3c4e0f39b5e31090601337d90d7658477671d7804d8bb88d28
Date: Wed, 24 Apr 2024 06:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713938422
