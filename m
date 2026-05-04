Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7BD39B963
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777907854; cv=none; b=UL3JN4g7GX1KWD6nVZ8MJrWO1JWKcdlzNOSv4V11l1ZqcmqzlQuL3oQy8HpvhJ9mLsh19U4wzv+tPHhwb2mQulWrO3P3D3jg/P6NgHGBceGgJJAi4DgylD0Jxiu4lQSFPdWqWp5IgzQe5VYMtExKCYKhfk+NaNPCRfMUzhdeJ2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777907854; c=relaxed/simple;
	bh=OC6XwR1DnThzs0pl4qjJSqHjaLvlFp1bllM5C3eW7KQ=;
	h=To:Subject:From:Message-Id:Date; b=MYt41A6yTPT1Ov1d8WMrlV2gOXokmLg/Lpbp8kmxUp2eTuTnAePhWFiCK1OxeQ8wo7tjsIFA8YkbfSBLIh9ZAROFfxZsmvRSMFKSy4bqenuZ6MTs0H0VzFD/FFMjPbFgkE7MUwS3WMFuzxiOWcon8G7+ES5+y+mCMKp2EgLfIp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9GX9XgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9GX9XgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB70FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777907853;
	bh=OC6XwR1DnThzs0pl4qjJSqHjaLvlFp1bllM5C3eW7KQ=;
	h=To:Subject:From:Date:From;
	b=i9GX9XgTTYZKZddlJOdbfHh392NNTmr9z7NXLz+sNVLKLYrBAFEqIcxjc31pG6ALV
	 8rjBd0f+Ug081ojWqx/A25EO9ecBuUmX0EAhJNnvxsDzC1vHJ5B/Gwh2DFE2YYO55O
	 SKgRYVzsHIE7GzB4ifODistmCGMF46wh+3wbpoScKoY7WgpYHA8Rp4UFM7iA7wvY28
	 kbwj3Kg1D+P9MqkqYqxcgXqqOZEQUWpnc6cOM7BsBnUoX8n/OU+ysQMpydDXWWIogU
	 zISf9AsqXSqRNbniCyBd3bxS5oPoQMWIFxuzofdgdsDchBbk3P8vltxcdnHOUF9M/f
	 6fb5oPgW/pAmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA93FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790785369.994.7324781851384808632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d64247d64ff5ce285d429c83cb44dbb9f5eaf666ecdd1062e968ae01f25c6e1
Date: Mon, 04 May 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777907853
