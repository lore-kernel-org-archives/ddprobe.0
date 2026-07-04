Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532E226CE39
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783195714; cv=none; b=tJ/aR9LoqB284yCy4pO5TgzVh5kyremh6X0SAbJo9MXqvlof9rdl4wfCw+M2JkhRy8qpzqqx/JHmBhLHiISGwqDrQfMVgLlgkj/18CSxhuGiaF68VWCpgKp6dFQO+RpcdTM29xZnXx3hQ5WNNPeer1ypGW8pZtlSDkI2iyUtO4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783195714; c=relaxed/simple;
	bh=0vmE8w/Wx/rWsGotA3qJTmXs77Dp43wWpjIQSA2dB9s=;
	h=To:Subject:From:Message-Id:Date; b=BYyE43Zu+x7vfb2X2O2g1noYUHFVLPMXcZPUJxmxe0Hjb7+2e4OHITSu+cO9VPyRI/UJvzZjK7enbqJNWZ8AyrDhip83zeolFZD2Erx+Fe3nAzXcrKu9qQSp0F/14bA11uuKRpCnr6Yj98X0QB7YLrCM+Z5d21oVzeGFgikyXeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFVDIvGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFVDIvGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D08C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783195713;
	bh=0vmE8w/Wx/rWsGotA3qJTmXs77Dp43wWpjIQSA2dB9s=;
	h=To:Subject:From:Date:From;
	b=iFVDIvGpkcfOJATza8BFoMwrtG/PeB3eZBa1Nyznbm40OlMbHlBOlZLgM7Jh4ds7r
	 2/TijmSGuSr7Cjb6dsDeD9qt0QpBaoo6v4koZknIe3AuZiXXv5GxOAXFkVqHkMuSgY
	 bYOY1M8Ykt3fWQ46DSqDErh0pLFBffYro66uRwaskf9bzGzbdfVNcEGkLa3nxS5qsE
	 +75EUBzFicW5a5VP6e6hs8MNijGvIpzriQY2HqMQawn8ycJ9eIALqhBFzBzC3lJwP8
	 HGumd9nlNGt3A+9BT52O28L6kRyYpzLrADcGi/4Lk8fvsdqK6sWavlTjujH7Wi68kY
	 xprSQWHAAVEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF6C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319571369.23831.10827742457930628072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4beee8bf8d349f0798ad71410a4542ccc54d0952c081cb35009f153e8c59bd24
Date: Sat, 04 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783195713
