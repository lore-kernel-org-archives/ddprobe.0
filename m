Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BFB40DFC6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773984894; cv=none; b=ZyR3IIqvI2Lezx66BYXEVIfihRszFrL/JrFRk1tYgqleduD+RFhX32l9f9jYJlA2jhfj1km50OlOseDsRhglCjj9sYgAAuRm7oZaRGHig1G+BKeqkp4mBnzCFYzl1z8MJzNiIvE9GCq3J/KmEyWsKyKz8teZ74oP4u6ubxKc+8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773984894; c=relaxed/simple;
	bh=yc7m4W6Q37lzzqGgibaDzCun+inP/0EqlVNMQIWs3KA=;
	h=To:Subject:From:Message-Id:Date; b=tfSFWOEZnTq8c9BDPdp35VMNBHWFBM3xXnlOeWe5KgemFtdxM2v4yutZA70xpdFS2GsAspfEv7sNjtDrWTNLUQC6YxePlxOalnHMQ9+K4YsWV7FhDoBo5U2pxEMFq5reLzfn4MkrNJhiedp9g4LwmH6FreaS8Dtm271ofCqWHfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJg2gbZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJg2gbZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88BAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773984893;
	bh=yc7m4W6Q37lzzqGgibaDzCun+inP/0EqlVNMQIWs3KA=;
	h=To:Subject:From:Date:From;
	b=qJg2gbZS7hk9dBpSOE+o3JCjBABSxVU7aa3GSWkeefkW4J0MwTHO99n7L8zwOHM8Z
	 pjlcZyPxCeruS2ypE/znWQsxx3hOoHR1XHQp+XjLF5aNTAnVu6254JYZFO6qJuNdjw
	 b++rWMKNLglQu8t5v0wKZL/mxbPMfF7RK0l84GRHyt8OJhyLn4hnJZavfm27/6A/jc
	 oixYnk1EE4bWjNz22VFf6q1VaojFIQ7jJM+DysJA38qzyBDRbbinnhr9CBfX5ADnMF
	 TUoDaN/fQv3se60Q192zgRAPTgfHx7dy9N7ofuaPuEom7RkNvLKB039NabtRcwmaj6
	 u5XtjCGtltQUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F76109316E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398489358.19796.4853289427428413538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653a410955a5bd995a3e14dc134a052accaaf81baa367291c02b569a58ee18c4
Date: Fri, 20 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773984893
