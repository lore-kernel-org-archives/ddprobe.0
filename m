Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3955E1F7575
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781738194; cv=none; b=U2YkE61YOos6y18RltYivTfiaiC+c1LB3iICVKFyRbLQJpmUWBt/4Qooha1bQ60LN39eXs+4RkhY9NJk/kC/9LjH01sdqvyh4ST/jYMOYEiQjmfS6/aAtAS7WLuNp2myMcmvxI9dPbh31UnC1/CP8k0R2bqENc+c/RIu+hotoQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781738194; c=relaxed/simple;
	bh=1voj7qL59P4jYTHU+GlTonK8aMi6selTc71UzmvOggQ=;
	h=To:Subject:From:Message-Id:Date; b=mmbfz9ett/6/e35U8V/uHwqoqmPzZDNJGzFU/hZ4S8a5PXax6HhA+vxMszdsrWfO3pa1Wn8kdfV9uSW8P9Y/5qi8NKdB8+v/Cyb76nDAY4zITXuwj/DtazrGhu2I7Bmh0xHB7R9uLYa/W/r+QJ04oyLryN5svqjlMiwpWlMLL64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lD700Y80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lD700Y80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C405EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781738193;
	bh=1voj7qL59P4jYTHU+GlTonK8aMi6selTc71UzmvOggQ=;
	h=To:Subject:From:Date:From;
	b=lD700Y80Gd2TDoVB7nv2WQsyC+znZb8FtqVZswqOR4p8mvtYBRNMpoSxrO37hUSbt
	 2gtYGFuCbmty3KtpoeS2kzAIdRytCOM3QfhSC8GKcxr4affEYEonydxwSNkP25xVWu
	 pVEUI5Ipy6s6JVBmtVLZQGVn0s8uCc91NvUwucmkkicKjx0b4sDv60muM30OiRmQWH
	 jF1OZNQIe3uIsWmHQJ4uwpONWRx6JgGEzHFRprRReIamFp87g2Sx9g9wRzGcPiikIp
	 WARwjMC/GljJ2xYoFUxFiayUe4O/K+6tXTYapO3zg84kH2SffShK40b864X4sjoAKb
	 fF/2baG8e4K1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA639CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173819368.14812.7566495531723104773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d4bf021eb8b7af256f49aa7b1bbbea48189c8b8099c20560eed49f9c228b94
Date: Wed, 17 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781738193
