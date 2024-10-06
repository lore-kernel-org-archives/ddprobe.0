Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C25EC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728191154; cv=none; b=ct6k6Z1dftguLtPLr67f5Y67JM/Jb70BBY+pynrqqb/oW8y5j26eQwKbGDqkdYqXf7/HnfkkjK1vU6EayRBGdBKdMFpon20/p0zqjJt3sZ9jS9KQD8JSF/FKMPO2NVorKJys1VCHsBbOMiP1IaSgwU9AOklxWJYicuhJMTzK9D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728191154; c=relaxed/simple;
	bh=k7bpt6aj5meMOP9SoggnamTu0TTG8yz0fLKNODCagsk=;
	h=To:Subject:From:Message-Id:Date; b=UyDhSK6Fb/zG409IOBlnJixcC3cbBOhesrbqa0XzkMfLFmv5I4aPUCzKw87daeAXoe54I9LsioBv50Dlh8BVRdziIoOOMIMpUtuW7WRE6wiCdoyJu/kLXTy/7k3kRddTWErToClIJcmolVZiGM5hBip2QFw4lNi6ri6sp22Apgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQ07+MFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQ07+MFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2A0C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728191153;
	bh=k7bpt6aj5meMOP9SoggnamTu0TTG8yz0fLKNODCagsk=;
	h=To:Subject:From:Date:From;
	b=OQ07+MFWJlCUxLripc88C77kWDqsNRMRhbd1aIXa/A62i/4kDgnnSmi1YXjzOn5Jd
	 Ycug5lRRoWZbd8+GQ6aHsZjtoLWY2exzV8A4rJlxW8qnbcvteutJbR5ZH7Xj4X/FH/
	 N4NP/eTO1RbhIzGTDcSFMQeKwIJ9ItHPfPXIeZBw2RIidfJ2pevFSj/y2/vg9OssO2
	 j5lFcGPLvnjR9aacQhJ29mqi6A1Vt0RZRvGpjbX/4oqWkZv8t862r5lakxe1e5HC6u
	 0ZDR6Z1tf0mrwQ0eXWRpYHZS2npIU4LGDBdaXaVuGKxvFoZcZcvTce4uEgAEm5XO/G
	 azrf22zEott7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1733CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819115363.3947.17777970026943598005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33467b9b2bb2522d4143995fe10c369ef10035447354ca792e59e17673b1c14
Date: Sun, 06 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728191153
