Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F800194C75
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746119395; cv=none; b=XoKjrTlY+gAXiNrrZEr3H17Xo/ilgdkUSRBFXBrPG2H+xsvuqRpaEODW71j/gJwJcY3Tr6G+WYTTy2xYQ/qsh1fHWQQCAkj4LLQroZSRZO2ei+btmI2nrnkpmoJ4+AhYNi/HhEAwkwRdnDBAsXE0e6KdpWOqq8XamBlAtgk+iWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746119395; c=relaxed/simple;
	bh=3Uloosj1p4Z5UmXlD4u5boLKAcQLinSdHN55Z5WyK/4=;
	h=To:Subject:From:Message-Id:Date; b=sNagaCJbTeyHIVtCTQP42ZPGH41vXL4ls/5k15Vsgs92+u5rArWOIx2LKnhIkz1LWx3F5C57tp6ZP8A6nhKyvM/gUU+2VEiUlahJtYBee7xcL0yb1y3+JNJUIFcDWzFT9oo7O6l/0efuvavgGPRSwEbLmC6CCoXG4brifpgR+dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IP6w/61K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IP6w/61K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EECC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746119393;
	bh=3Uloosj1p4Z5UmXlD4u5boLKAcQLinSdHN55Z5WyK/4=;
	h=To:Subject:From:Date:From;
	b=IP6w/61KP6OCgXaGxdFIfI9hhtQexjDkVDVXlB6Y/LhrVz4xkYMH/rzRxfR8OzHQw
	 qa3NAzfVHRchnBvFbtXDBYntvnZLgfbCbW2WRs7jmfxbOLIxxZOtc+3Ye00x4g3StW
	 U0fi7v9LZ3YRlVvcQ3AwP8CRnBhLHt+NJO2mcQ7S+jJPmcDF+1YvGBvXRfFRc6yJAl
	 SCUYOtBw4tkaH8YGSuY9SHfo4I8pfzpghu4Sjj4Jzm4uDZf5DmBh0HEAowmyfw1OaT
	 GKGFqgNXVIYst9wf00jKlxthYuncOjfAeZaLEbQZCHb3KBZimsbCA7Tape51Mi0yR2
	 lMuJu+tcuUaJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9363AC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611939357.30500.17639264322225378730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e48bf5d56d066585e17276cb541c3c305d4f130c3b03b6adbb2c34e1633125a
Date: Thu, 01 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746119393
