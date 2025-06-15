Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AF11A2C3A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750024194; cv=none; b=d+dr+mKOkrobQ/JrSlNOI19QpirGohaOOjI7zgdeP/bAOPwFxSlwjmQNToLJAV5nDZPGbZrcoiXVwJj/boFQmFgYxXl1yxafPU61RZP5A7Faf8+evsA6UZwldwUCa6M7EyflRUbXwqtSlylZe3ElQQQ26JwemzSJ8ED/e+lNEMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750024194; c=relaxed/simple;
	bh=HcBpGPiuxDETPmansJpeT6LusaQuZcutsQjasC1no48=;
	h=To:Subject:From:Message-Id:Date; b=kTsszKccYsR3w4WbMeGQTwnJMc/FfwvpHstQjXpub+OqbbKjp8V9F67gjjYWqoIYVqPRxE0jvzzFhXzraF2Kl8I7woyEdmWoGPjGQNAfC9NIgPwcL1KpTFpxsMvX91HvljaWpo/08zQ8WxZQAbrQlKuKNAhXDl7AZ6WPa6ubOvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDwAhTT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDwAhTT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC12FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750024193;
	bh=HcBpGPiuxDETPmansJpeT6LusaQuZcutsQjasC1no48=;
	h=To:Subject:From:Date:From;
	b=LDwAhTT3N14k01BMzPj4Vt1P/hJnZljkM62jcyRqM3xm8iN3KiEfghOqbFQevJhsd
	 ov2LK6bzMdKdOZWOWeYOICwip4z2o0WQtWOUZM3tzF8YFsac0bZvcbHOrzm9D97S9V
	 KGIb7wN5+gQFk/b+h/Iw0ibVpRDpa0A2k38bJQJQIvErPERtx+BlOz8snYnB9iqmeI
	 qpM09hpkJJpwO28ifcAuNSBv7K5lyJi+lN9+KiWwPF4rIQJ2NNvjmfiVOsnXqIj+IH
	 m0r/Yqk+PMIlr3kjw2PjXuMVUuI7IBcjGygzzy2cUrDetc/mJxPfwgt8iuQA70gkqY
	 FZKyeFDenOdjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E5C7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002419358.19784.15584975358998134404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9c557729994e62edd6efc14a004e5d58465d3ff759358f0279d30fa0740eaa
Date: Sun, 15 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750024193
