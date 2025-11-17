Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2557427AC57
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763380914; cv=none; b=kChwPzdEGRmAwr1W6dLp/b+kY4HXXjLGUoruiU1smVDRmvWlx3vK2q17bVCpO/XD7YyWwo9hckckXGVHZyJn5YqYpd3CXawAhgQP+SEoA4ZxzjKY/y2TYMf80/tmjryFvawX/DkdbQ7p1RKfRAooh86wnkUBxLu7pX0gpEHC2sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763380914; c=relaxed/simple;
	bh=6Xpz6ls6eeMya9EVRtEj8pULQNdBfzyh15Rh57wNpT4=;
	h=To:Subject:From:Message-Id:Date; b=krI3myyqTYhV9RtbsOEv1MjZxv+BbO2OEubSvcMd1DmKjudV3SvrYgWzdlKz6XsFDlk8JEFsOHmTTCq/NoTJ4DoGRYsl/iSm08tn4mULv65c5reyoCMf/I4oDZHcIfSSmraXCHzQ2SHskTOWGn5evQQ5r8EnTH8RUSgDLH1ImrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3TQiirH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3TQiirH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA49FC19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763380913;
	bh=6Xpz6ls6eeMya9EVRtEj8pULQNdBfzyh15Rh57wNpT4=;
	h=To:Subject:From:Date:From;
	b=W3TQiirHlJqn3wvHM50zR19eaAcZ+oo0XJ9iIW4nqo3HdstQdA/zD+yJmfOsEYn6D
	 2GJdhcYbLTtA1bRy5NYg7ZSqC4bQhiCBFCvtdP6mCrTeWh3XX/iN7CjoMAV8DJr0IZ
	 QeAm8vIE1ijzPaEKXd0dCohE64WYaqyWJixTN5ZuzbEJi06NdNJv9Q8fsMtXUxl7ox
	 A37mv9Y2gGeFuMSJT4AVkbs3XS2jj0PjlrucB1+Y8nizZt5I28xnG3feH6jtiLQM0h
	 wnXTQu5ml+zGJfJVrXlppz7wpHd3rXttmeNp8HUyNaHBNXqXuNQGBgdSyxiztY6Boz
	 gEuf69r9RsjSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EA4CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338091361.8644.1861889990838066323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8736568a79473a9ef34ba734732194ed4b2c2913ed0f73246f52bbd0000f547f
Date: Mon, 17 Nov 2025 12:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763380913
