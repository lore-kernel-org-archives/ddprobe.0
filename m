Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FA115E90
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742725196; cv=none; b=q/GGk7bPjrEFrfjX+nztWniJw8U7JJJeSfDarZoBphAoqdzmZlqVq2zfNISYMixHRlvlgEwnTgo5VZlpRYl7fmmclPF4VsAI0nGfRJyUp64QYO2nJ7pPspi4mhkaI0BJYAAEzUmb2p8RKMryDDauFYJvZ2YQ4yxRnm9N5bB1lkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742725196; c=relaxed/simple;
	bh=PzfngE+7R6lHkzudlh9APZBnTJmk1WdFkX5x2FYkQcU=;
	h=To:Subject:From:Message-Id:Date; b=Z3vRPUBQoEaKb2Eux90WI7wGoSBZ7i/pQOCyDfQRX6aQSfazucVeGlyK2ypWsdP6pffG+vmXAtoRRv9Sh0lQoboxMLypQd+cQ5kyzTX9SGOxPg4AxVYgQWCNXQri2mzOA3BDhwFRBL1BSvz13Pk85lRnj4yvHZ591JN20sBWyQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9SeRRCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9SeRRCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4F7C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742725193;
	bh=PzfngE+7R6lHkzudlh9APZBnTJmk1WdFkX5x2FYkQcU=;
	h=To:Subject:From:Date:From;
	b=l9SeRRCiqi4U59y5mWnmeMnP/b3e6ceKZnGeajYzt1znYeiXZZ7xcD/YyEW6H5x91
	 M0YjefF78s7CNc9q2Wx/1hrIN/rCXWyifYtNMuPUF0MimI/EgN6FHzIGOEjAKnJLza
	 o+j1oCJj+k2FxoR1/hR8Mnco/tB3gTTwNeKKqp8D+SVvInekUbzbVkVGglExmYXrkA
	 ZR7KiZhXnbKyBFDkihbsgaTT8uioih03nMlPNt4wKQHcZpNdFW3fURSHlDRnN3H4v7
	 jnOGIv8RT8CV0tIttS3z3N40TnzX8vMeHueVf1WRmefaIGz7IJKfKJ0pXoE2c1IsqA
	 mlSjjcd/T+9Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56D7C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272519362.5216.14657392902879284553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd6e9141eca9e7b970389d7d63b7fa4390e60a27005eca90cecd91959627260
Date: Sun, 23 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742725193
