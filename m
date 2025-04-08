Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F92A1F94A
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744090195; cv=none; b=G5i1b8kAr/nuMOQgtDxilFZKenlU8SIIY30tVirFSulysUCDhYmII6cDbMlxqKbTAJXiUUjxKLrw2mNSOKvP5U1eQoE9ea9eBGgJ/xEu6fC7pNYeeTyyUTp64hFXFx2K8NgRoXwlNHGjBMeFJ9EzneMjyMZXF0AK/ZiRZpcEHVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744090195; c=relaxed/simple;
	bh=yWylVIgQk1xrswuqJANksuXtDdQc8KNdutvq3Q+G1Yo=;
	h=To:Subject:From:Message-Id:Date; b=Rf1OB4V4ciBi6a6JKKvwutKM1+BOT3t61eJZGx6MncZByHOWItK1seqxTJruHOZL4PPyznO+RLsIni+hETOuHKPDTZnTNPcelEN/w/SA0+rfSw3leU4O+AS13EjxNJcGcIJIS8xgamxsTAW1g/g/HhFb4SKP9pmXF04wOsJ8A8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZqH0X5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZqH0X5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5242C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744090193;
	bh=yWylVIgQk1xrswuqJANksuXtDdQc8KNdutvq3Q+G1Yo=;
	h=To:Subject:From:Date:From;
	b=oZqH0X5K8MUPVt8XsxDU+uq2b+3fuT0LLsu7iQqCj9Tco0I9ZwZfZFfl6vttfVMKL
	 6haiGVauLmFRlM+FdEkSFFWtWiRMN2sb6wwyQzwsoeg3ydTiUQXrxgEeN4UQmaAjOu
	 Mxe9VawlIy79lU3yHi8oeBjyCVACNrZJ143fwem0mOe28ovneYTQCo1xwoMWk0KB80
	 ZE3Jk59glGJR+2pV8qpyoE1sYPkvB7Ojb0FJ12vUfyjSOFPoUjQ8bAgGGAbOhVG38E
	 H60z2jC5rpVZU1g8p8NNQZLjHzonSJC1WxkJ76Eh4RxuAJeB4hr7Mkrqp5roak9aA/
	 veNH3zKroRxkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FD0C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409019368.15848.1254686854179783159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed0dff85b819c216ebb6d7796156d8f04f5a4b72c32c725db23b27157f87008
Date: Tue, 08 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744090193
