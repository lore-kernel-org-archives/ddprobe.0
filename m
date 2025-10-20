Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE27324B14
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760970594; cv=none; b=YhiOSRr5j5MClihdaaA5KnMjiFHqObJ50u6uLTYaX17XSIyEi2fisYqQMVQoxzAYS9WLmgWXCQnQIMbM2WZdKL4ceNFvj7C3Q7ncgL+tfSblp/hj6jmld/L9QZZcZWH0sq4IYYMecYC7nxItW8n7mfIYRXs3MzOkH2LMLLeafsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760970594; c=relaxed/simple;
	bh=WcOVzzKstxofJpSbl0Qzhi2hhVl7EpETBQMHSo1sk/w=;
	h=To:Subject:From:Message-Id:Date; b=IsUa6G9JwE2PHyiBuTixvcY+sB+gd1wVTp003TB1KVYjB3Xnwvs+FPfeJ3XYu0zKAUMiXmjlVSUEp+hK42Jla9uXCwWggPUJHfry6M8r2aSobUZWrr7geOQPG6Q9Q46YB2NoZPdao/9oRNJA3vA5wdiBGnkaTex8HMy13sGSmzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lW/1yWmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lW/1yWmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57ABC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760970593;
	bh=WcOVzzKstxofJpSbl0Qzhi2hhVl7EpETBQMHSo1sk/w=;
	h=To:Subject:From:Date:From;
	b=lW/1yWmBZ2uyZmAQBbbYrLZywKx90I/WZnFHCUCsQnAcjVxZqxt+a4Ee7t+R8V/s9
	 qhn4u2y5xSttoYSlxIxSa2ptD2/4K8DXkoEdZNn8e17rSFdyxs84DTZxf2X42piFfl
	 6pxwKTYFCnete3Y+3ePjKF9soJZfADCsr8hHrD9i2P8dKVUcVrpAerfSK69ywH0n26
	 Ba+oLbHn7EET9Ws/LC7ZPfHsalpQnU0rU7At1JXz84vm6dbGmFLCVeIAxkz/Y3Vx47
	 ir52pr1pgfu3PYijDv0b+EQL7maIh5Z1YVQYkBfg/QLsFiJeDmaiWS2H68U+xzqd1D
	 jyVPidP631sYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F49CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097059358.30385.10638902070333321585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2b7e085b395ada17832fc61660260bea993a8570ebefdc98aa3d775ec66caf
Date: Mon, 20 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760970593
