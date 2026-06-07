Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191BD26AE5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780875274; cv=none; b=KtISzdF3kHU6nACa0ohXcwz17T+pBXH0Agf5yGHof778jaOGLdFDj1+9b8o0KaDG41X13Jc8bPRg8NPvTBnxvdbKB7QYbR0O7mEKTDHktOt2ll/om3L9ePiYu9qlqfOwiUNMRxbRMudc3B4vFo5kvg7WDRcAy+n4evGaqF9AZgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780875274; c=relaxed/simple;
	bh=jrJKkWhZyID6KEL6lUaB1ENOGUycg08VwbPaIWpb8S0=;
	h=To:Subject:From:Message-Id:Date; b=E3Yt0Mhjuz0NWetyyQiHqsNNrSdzEuxqmkAL7COnNItixNvfqd2AVB5jwlyRKIIY+RgwHBu3x61a5iB7r3NmGZ4lXfRJmUCWvUfKCgyVeegpyaFsG9/vIeiF5wdswI/6n5GNhw0HBm5/OtWBhQ/khb6VfVCbZinh0CZOt0VsAUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c44uJyY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c44uJyY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FDBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780875273;
	bh=jrJKkWhZyID6KEL6lUaB1ENOGUycg08VwbPaIWpb8S0=;
	h=To:Subject:From:Date:From;
	b=c44uJyY10g7EBzoOeEm7sekDXY4Z2YbA7GXzYd5P+DrTv/Gy3urM0SBnoR9XuBhJi
	 /wW7nPmCduOtEkNvv563UBdmAD5w10P1MbbAxy/Q3bFMmIDqfi3VsyfyEJxqOwUtHm
	 8mk+9r7cZCkvZ/BwCb+bKbiHnB0E3vnjLjL3U7NN6cX/vFkKtrUBIxo1r5Xn2P+UAG
	 dwzAc9FWhF3vMHuBsm3McV8uon2Oq3vuGjw3GWdoTLBkp6rF8FCexnuAM5sIUha2lM
	 5Gad4VbxiJoLftXucDWVsAYtDUun7t1ykCYDmNe1tgqEuiIbsdLUaUtsxZGBK+BuAD
	 bI4JbDUNUr1ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA242CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087527368.18649.4447947464895066243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498edb1b796152ad92c929a9ba9b01a43d3f66b9f9e5451b1c96a6b5eb91b56b
Date: Sun, 07 Jun 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780875273
