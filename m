Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426603630A5
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784237314; cv=none; b=tjw534voq+4X0DKdlvwdqeWoiueZgm0zKVbS5paO3ylaOGRARdiG0BK+XUzS6yxKYz8FRW0h+2X9jQzADkv2VSXKStLJcdp6lnXauRs1kTkjv6SNcHwLt1xE1uWCGgvLqttrgBmTVNO3rijkyqqglhEbapvVDjBl6BLZab+E/xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784237314; c=relaxed/simple;
	bh=Aug7HFDxbs5wDLKDRtGo8dY67cUD/L+S21Uo2LBRGS0=;
	h=To:Subject:From:Message-Id:Date; b=pTCBDuUjt3D2rcr/z+NlkNP6ZNAK4n+4DTcICk+uAdQuorgj4SMEjNNxn4YRaiLvdCc7eG7w1ioTz3ox8zfauvXpRYMyP/5rV6V95CtNV4aLTW1/2vO8t+f1xS0jcJg/+aapI23ShgbcyCLTNna5S1a4BW6Z9g/qTJWFMrwasjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHcaw08e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHcaw08e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1C3C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784237313;
	bh=Aug7HFDxbs5wDLKDRtGo8dY67cUD/L+S21Uo2LBRGS0=;
	h=To:Subject:From:Date:From;
	b=LHcaw08exlclsAjvc/297cWaoorPh5mD4bXaLhmND5lDdmqHKsfI3VDn3juYXcvoO
	 3h9lQPKIIhw8g6U9roWnE4Pe27+p1F+c5Dam2fw9KLoj3uV8GOV988fVeOSEUQp8FC
	 dGvZSOLmQNdgNNnmxrw/or9OzaOnl1/3fXuNeU6+GgbLQuXPQ3oL9MVeIMJ5GncH1v
	 Lj3go071q8EGhJT9+fpIArSeyGATohyHFQ6BOWy5riht51k/6wKcbWrGd4j9I6NrI8
	 mogM6aCQ0Uag2m6SuVes1CR7YKIXKqOvMqb1uxuAIOUCUyVpdlJBskME+6ycEJpzGm
	 BENBW/0LbNWuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DD5C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423731367.14158.3803904515544487113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee0588e40d1e470de7cdb1a718dfe29db49bd0066bec2c38f0117beb35eeac1
Date: Thu, 16 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784237313
