Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43952185AB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747962593; cv=none; b=Us7pFGKmBTJ8aPUc0jTCy4tmMlBD4e1upxhtZg2/cynqQn+dryyLNmMwKZQD3TT7FvFrI9htz45mja2AYzN3OrQrN8lVjCfnT2SoEkpZORXag4ohhBC3CsVRP3C529VjJkdLYkwOLhYqerWfFZeQZGFuvXWEpnkRzVR0JaOUF74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747962593; c=relaxed/simple;
	bh=pW1X5XdFI2GIkMO/gE2DCSUr8XNdhv2a3jLDxy5AOhQ=;
	h=To:Subject:From:Message-Id:Date; b=PGNsZliKpIadwKeq3mfTcwGMEQhvCvUHvlTzTKDYK74xI4MXuRt4/ybisdEx9SByyb+gd5EOvjjmOwjPJNJTkYMsYL+85sRtAPBNhBFH747GuaKJ7NnW0z+547mKehXbo3JS0Wy7riaZ8B7NMlHS1/vCA8KUiLOxA9rwv/rkbbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXlToS2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXlToS2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8467C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747962593;
	bh=pW1X5XdFI2GIkMO/gE2DCSUr8XNdhv2a3jLDxy5AOhQ=;
	h=To:Subject:From:Date:From;
	b=sXlToS2wWm+lqr1Iie9FICNqjX8zHuohquTQZiapgbfWveiefeXs0Jw7/3LTKBQ/W
	 Mq3vy8G8tzQ4XDR7zM+lcGsRjrtQzvmOdk/A+YVfFZMWLhtrQ+OaKXLx9lwo7vClU0
	 PCwkNGi6MoPx9le9By5mhenOSdb9fnGAIBBhyYqiK1YJIaa/HUHwMRrlLDGoc3pRUD
	 m/m3kTHi2DCn7mKKNcGpcUHot/gq1AEG985qNqH5QSCm9rkJpwPN1s7aCEg7CO7LzR
	 imqtKV9A2/YWUrNFOZDc7q5AdBr7ZPIp1utPNsQ1SYw3KrFIcLSv7E3AeqpoiTAy78
	 T53/V5Z18h9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923DFC54E65
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796259357.12559.5525005298814335094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc045b64ab56ef85a7894dafaee6e1d82efca8ecad013edbe473b36e7308c2a1
Date: Fri, 23 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747962593
