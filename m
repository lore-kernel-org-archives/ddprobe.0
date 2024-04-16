Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4912312E48
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713236963; cv=none; b=Seu/2iQ0n6UeL8OSQy3vkbHPzgyAGin0cFykqGzHrmqfhJVtbXTPMQze8u/Nls1BPQ++oDrl0p187Sluajfxjb2Z0guJ+jstV4p5kzvTkSvhHz4j8fxnAdeGrTJsDB/2ftUHqgnFb4G5EFelqwCx+s3b6N8qYlqJspXUHW4fzto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713236963; c=relaxed/simple;
	bh=hZeFKml8yEUvFHpnOiHzmunb5Slx3FRRl2cV7IK62zE=;
	h=To:Subject:From:Message-Id:Date; b=qpF/UpsmbTU6MhS8QiU0hPLXEPd5J3QFwKdDUwtrWo0U9Aqk5vsRqJ4FpoiSDKGL/cTv1J8olqGRxFBL6Hu29qM7A4UbclU98cTqp9T32AoQm1LBGkMatgMhYiMlw0PNsdyjz3F8wLY38EA4Mxhs8HdLdJNj/McAoRfyrt4l0dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoeFETa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoeFETa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD54FC113CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713236962;
	bh=hZeFKml8yEUvFHpnOiHzmunb5Slx3FRRl2cV7IK62zE=;
	h=To:Subject:From:Date:From;
	b=RoeFETa8fSVuwlxbJqP1eizg+COi83ZSkec3MnUTG6YI8NZDWSevYEi9QNMCqt3ls
	 AW2ZUDi8V+pQaIXr6+JcEgLWp/fbz5qLwENgoRV2K9rmN7M6XrxN9IUVdYw7otH+eL
	 783gCVgYJoeuymXI+T6MQWApxla7B7K0DqQmcBCHbPxAaeGKkAU5u5PegAjHoT8347
	 I5xfHaUiBXDdxKoxUtXTr0Q5PPxfxRyGZGfgvu5Ev12xKuH1mt3uLIw55EOHP8ohyF
	 WJiE65mXeQGil3/cBAa1KGMFaXshwL6tkaA85O7HNeJKlNpxZ6GKaFnXESUN9r5Ez8
	 gW9oc9+hZOQeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF80C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171323696276.15009.15515246717006640331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ebee1088b57b2876c75699eac634f9b1da55df4e315f4ad62cfe1bd54fff67
Date: Tue, 16 Apr 2024 03:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713236962
