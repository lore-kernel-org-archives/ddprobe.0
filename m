Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAED0224AFB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761458393; cv=none; b=s0Xbje82kJz7xjyAVT1GxhVDpZok7y/1HsiTEzR7lDzvZPHqvZWfLpZHAxBPZX6zGdZInIKIuEgYxsyNm7LedLq7QsRJOLUCun4Q77bhRFGoUz0QcHNsGiO4GbTYh50jfOfS6Wu0CMgrdivlfUokCWowdNOqDLeF22uoHhz/FOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761458393; c=relaxed/simple;
	bh=ro7tKfKnL2Wpe2KOaUzZ9EIylYbeCKyiylms3NuU5Ew=;
	h=To:Subject:From:Message-Id:Date; b=EmbQNaN2zzaeChf2cpe/txgDClPpYwTW7DnTcKed5MhSS+x6p+DuVt0o32BNS2kWcB+CHKpbb7D+3wo71r8Wyaru/1qtCt+VJ8LlWc1xnHgakYu6xXQHZL6r+CtG98NwrfewOQpt50o0n99VJmhTphtNEpras2rM/M4An4SY7ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl0O4KOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl0O4KOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F92CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761458393;
	bh=ro7tKfKnL2Wpe2KOaUzZ9EIylYbeCKyiylms3NuU5Ew=;
	h=To:Subject:From:Date:From;
	b=dl0O4KOgp60AmkSZ/p4Rk2owiTnK2CVSDLu2dbuzgta5lzPI8D63TiLuByS3wcHvN
	 VhW2IuYqgleWfi16iJdZ1wTuWyVEvWTAVvsMCiPloiFJs2wQaic0cNg+agQgnLbIbH
	 G5kR39CVOjNpnP1uHQKXfu9vIWpfoF6vay7Saqpk6B7uH4UZHpnmhD+gk41lJPYJhC
	 wqz6jydeFytHtq5ydE5uasy1GAzHB5sblWTfk0gjJXZqidQHCTaCVKhH1G8SsngHQq
	 oUpy3R44QCzDfsItt2ZsYGtGSAISYYENQInyIaJbmCD1N5Hlwi6hf5D8C0ScuJ8fY7
	 exflBFLt2JxAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C9CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145839357.6747.5727382695646327155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ca8d2245dd08737f4bb581e25c9e3e8374d9b0a308c0e1ea0ac6279166015b
Date: Sun, 26 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761458393
