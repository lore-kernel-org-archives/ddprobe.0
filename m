Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F762882A1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017994; cv=none; b=bPZesjmlCv8q/aBfrBgS4SnNhUef5gS7j/adX5TyEybvYjbutrhQa8bNx7YpN+WWgNrb0gX1upa9aJFvDd7ZcAiwXc2rj0kNdaT7GfLhAZ5OyKI1cpG45zrqqiBOts60iUAF2Jo78wu3ndN9X0SDbbgM4uOVU8aYlevxfGrwW20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017994; c=relaxed/simple;
	bh=7KDIl+OM5mbiKwyUhcgAu4ZKMV3A8BwcteH3soFsHSQ=;
	h=To:Subject:From:Message-Id:Date; b=giZ3Ep6+QqtbhxvxoRzlPMzt6sirAL0m2iEV/UzVJlfYvf/YB2XAQmXOJZ1fM6Tdt5sHnrvfgJx5jhX6bqk8WdcmLQX4D+QsnJ0Cdn0R049p7jBnFqNhGj7wEQUbyeZ+K9kIIikMdHZLszP9JHBuUMXA5wNnJD8tBdiq1Yj6QN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6vTAzG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6vTAzG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E35FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758017993;
	bh=7KDIl+OM5mbiKwyUhcgAu4ZKMV3A8BwcteH3soFsHSQ=;
	h=To:Subject:From:Date:From;
	b=W6vTAzG8hY00PJ3mltNM76pzRykDjaoNnyGDnge7hVmEaNQeeAIQWUCzOoT3BLQwp
	 v73xFlPj170aLPEMQqS3/YZy7sOaUNBC6Cm/rjB8tj+AG3kTQrWOEJrlSIeWVg7a8R
	 d020uxRENoOKJdHfLm4X4miDbsTvv/qFUDQpUET+yLNVQbRStTMWxdq/j8bVCvZnn9
	 VGBhGehSIb0sWy3gC4EkUrF1KgG6RuH7bwBuQaMWhcc/TuxwU2k9wL418yBYGB/UAk
	 0RRZ1QzW3BiFXzyD15G3zVJsz60WqU8+aS+329QpEK0qVISuozZMrerF3FGwFsSNlY
	 lNfIbervKwEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA7CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801799357.7693.14992119259551549667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1eb9e89f23de7e62557f8ac76503d553457c4bd8e5bbc3892b14425585be926
Date: Tue, 16 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758017993
