Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB2B275B1A
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756549794; cv=none; b=vBJpfVynTqhaG7bsx77Dl6KZrmjNljwzxXePtM1f75XoLKa+aDAozBMPq+eoVq9WiaX92+9B14z0YYPbKSiVNSzL6GJKVRZfMcyg/eArVO4TrvHP2knXs8VPXXTsMRXn0jD+xo6vzO2/seTSCRCXl09ihDtg1icmOakVoiMWXns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756549794; c=relaxed/simple;
	bh=0zlvhF08UQtxEOuMmPE2joWJRrKb8TciEwqQwQGG268=;
	h=To:Subject:From:Message-Id:Date; b=eLIcPlnxbtu1SkmxRsR+rYpUI+SXrI6OPUOB8LjfpLyyMZGirsA3JWLC7TOGLrPfVoJyksnGoU6HknE4+oJUi5A8uGWzGGJsMT6Wfi9Q96a4PgLTtyTZItILFP7Ox7T1toZmTwM0s16LOyh6Jn7qh8NKjOdPeK9gknaINcP9yIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fT20rjzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fT20rjzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5974C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756549793;
	bh=0zlvhF08UQtxEOuMmPE2joWJRrKb8TciEwqQwQGG268=;
	h=To:Subject:From:Date:From;
	b=fT20rjzLEUUpPWF+uKs/FnzGjcLP/60dZXAzi3CCavca5utQS1uwuFr0sOPAi6eDB
	 lDdnG7MDxoU1iqwFyfurtu8o6sxLn9fa3wrXYjOW83eitpW88LbHsCWFuwIX7sc0US
	 yvyJ6nPCZsh57QLhNdkMAbx6RYhkohjQoGZq0khH8PcBsb8+G5fh/veaZo9EeNp8gs
	 EHnbcPmEQTRc6l8CnxWh+PhIZdILyr7WpQocw/zCVjBVP076KvIQI2uMiyYr2VETHj
	 dXA8bgkxowsOQyq7tA5V7kYjPvoEeaeFvQh82XPdj7qiny+Y0DUk11DcmSM64WTHFH
	 OPc65Pd8YUdDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6BCA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654979357.28893.17720162911314106282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637ba22870950db8fb7b102cca89417fe408e71d1c667e8a846cdf353f4d36b4
Date: Sat, 30 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756549793
