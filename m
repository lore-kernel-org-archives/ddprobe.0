Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55F938F92F
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777159053; cv=none; b=STprW9QzpHpmc+Af60JNtVvtGbpgzDUX6ePzOYsXtNNLvkXQj9d6XzN9GmOcIGd0oe1n8yPnD6pqPInXalIMckozWuV+QNz8lxmlStzlP04clc6gXsP9YKTtEp9+9Cs/i7HlDO50gHCceNPI5D0Ye+2uqoMosrdMox/wLeKBXSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777159053; c=relaxed/simple;
	bh=TmGBWBgH6EEdvfhi6guDKq12FDONpJ4oYLr1phhCGvA=;
	h=To:Subject:From:Message-Id:Date; b=b416Z2IDviRWpx7ctT5Deu8Jl3ohIwnCXExrmsHKT+UP8pongEZjd/q44pGjTuUOdEbC5VfbKOoJT5Txlx421EiMq67GSnnUQe8TIrTqU8Fv9hqNA//NswyHzW3u+3d1xWiVjaZ1bTMiS3ABnwyMY1HmkLSSSYa8ibJmnsWcyrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3Cp6XT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3Cp6XT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93FDC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777159053;
	bh=TmGBWBgH6EEdvfhi6guDKq12FDONpJ4oYLr1phhCGvA=;
	h=To:Subject:From:Date:From;
	b=C3Cp6XT4OVgN7DuSaK7VBuwm3n14W00fYTqChzJNl8d1jVZXABjHhsRGZ59dHnHc3
	 GoKe9/yLz7Ca3QN1MEuG/GMZDczyyLBdDeoNelZ23W+I7itWwR850ggJrCYPgg1mwI
	 Jrjp6tEUoKdNJaH+rzKTAr7uxPK383a9KB9AmOLT40mX4h1t/+Ug5nb5nb+UVzVu47
	 uQm/x/5hZvSqMPAczmhV9lT/vMg+lRoKbJjyZXoaN9OhgOdxcW2NXGLZYsbRpPFwC6
	 waKo/RxcU7iX1bl+sPHGH1lRaLYSZZsLLBwID3MoWD1B99TWEtRr1KFz4Voh1Fdgni
	 5ClAzX0eupWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AAEFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715905368.4275.4323582404390951066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6363271c52b1bc39bcba4da10b2ebee9b1032db93f65af98b2e193c9c37f24e3
Date: Sat, 25 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777159053
