Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B361172A
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747743594; cv=none; b=G6Ib+/slPklOvJsXrj8O+3BT1v5u6ZmZ5H/vLjJ2FdPnXjxRMG26gzPHn/z7iHuV0pDy9Idkcn7r/Cp6pQvShHaByd53Y67y/eZLFJyvg7IMmHuefrtQSFDrbj9MlWUjZZQ1ciLJS0nmcbCTifyKtPiFAB4g5fQrW6GFGChM23A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747743594; c=relaxed/simple;
	bh=850HYnVj/2Tr/h4ub8sv1lRIwZjMfEBnZTapjIoNqTc=;
	h=To:Subject:From:Message-Id:Date; b=HmRkFzCiyn/7jJCLsBaSxZ2mUj4g3XIhUV5GZlQB6DE3gTggyl18Aq9GKsAQk7hU8B46aHr8IziQ0ypc0omyuJ/XTzMXmVfrHYvRN8GFC1WYcIuwVmUJRpsqrz2ONPYUi9YOUNOkDnwdCU1YHQUWmtMqTc/5wefCfCIyhhfZ/nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMc9MPx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMc9MPx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E75FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747743593;
	bh=850HYnVj/2Tr/h4ub8sv1lRIwZjMfEBnZTapjIoNqTc=;
	h=To:Subject:From:Date:From;
	b=nMc9MPx3fCcZcOu4hijbqeHv9jBl7Ieikh1dkzMfNP1mMIPeLUuCS4v4ihj3R2zfZ
	 kU98bijJiQFlYJ/qk3cfLRNUrHGL8a5AQsdRjA5KxyiW22bZp9x2pO9NGQQG2oTPcV
	 odVZ85JrJAiey5I4TEjSy32ISi2lRtt5S61Xd4mrVnNZpJvSltcWReoaxar4ysiPex
	 wsh3lZ9r7RcoG3vcN7Cn1weDKtznKWBZRux4OmTxVgUjjTa6VZHJkFSrtkdZbcW/g1
	 yHgjH1NHnPk1QQkM2CEF5OPBs23T0DkmOYJX6rayp8gluiEp7uFaonM5iCL4H3cNZv
	 5tWpgF7n+t1Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEEC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774359357.22145.15125739023921075082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8af7da2116c5cedb214fd50af71a8e2cad6b1677dc1599899d3f6449b3216cf
Date: Tue, 20 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747743593
