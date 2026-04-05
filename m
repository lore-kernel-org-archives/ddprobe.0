Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B252745E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775351734; cv=none; b=TR+5GECN/EMX1L81GF0btPBPwQtMsU3euFqCvHEBQHnx41kb12A66fT+vmrL1844ALFXLslwUmSRh03qqxNGYDj+fvCBPFpBvbOmvKOh9kQG3PO5pVytG4q7AV/VT9kHjrG0cEykjO5swJ6fPc2ldC6Fdxk9MqCuchu5hLRFi2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775351734; c=relaxed/simple;
	bh=fseCpA5gOuvdL5ze+mcqIHZRnLqX6vsMWec4RJ6UKZM=;
	h=To:Subject:From:Message-Id:Date; b=mkJ8COncBoSqCzqL7ttWh75gmnRQvAilYXhjSm0D0xSI3gcSLVPl7CQbAzMKp4KkpiUKLqbasSPBK1SumhYRV+wjuCM7IcQ6nla7fn82bqYm76jO1xfz9LkiibG/xxAIFuMdw2Bh76GqS4LMsCibM2uOALbeLZ4qjKTnJbAfQbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNE1EWru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNE1EWru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD5EC19423
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775351733;
	bh=fseCpA5gOuvdL5ze+mcqIHZRnLqX6vsMWec4RJ6UKZM=;
	h=To:Subject:From:Date:From;
	b=PNE1EWruIdspB2sBYxdKLsMazFBmz6rr1+LAA+u9jfjaVR1kj6PLnXpcv87mXagRq
	 0MXT5jNQDTPAdID7W8J1u5UEHGeAKKFQnLNY/tyLM13N5e6C5Bwh3rWHMulaGgF2Hp
	 Pm3FK83qBc7nOjAodJsOpJm43Y5LNOmWbpWtsf5rwiwHwtflO0QV0DUfnOkoZy3+Iz
	 t/Hv86bdk6LyNaikMezrkzcoRH3z1d4tlfMo9aQNXFtbETEzPKJyO4MwE6/gDltgc4
	 qtua6BUS2vvQRu6wh9DbxuCswA9lUjSONdAUeSU7fExAN3CJAGYBNxA7H4w2oT3XUt
	 MshWW7GUOVEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DEDE63FF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535173370.26531.345167402596718777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8c1082907f648271b027b39f2d5690218cf40f5aba3e705d6247c7decc8d28
Date: Sun, 05 Apr 2026 01:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775351733
