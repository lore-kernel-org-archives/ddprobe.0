Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF131F2388
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748261394; cv=none; b=gMMIUk642t689VAhtC3Zhr81ZLWQvsCHervdPj/PK1XaGe/Pxr+ntKnHXcLMtJG6e6luYXiQbv1VYHzO4I0EiC9QzArZ4sfaMX4ERbNwN2VBSm9MWPBJfqyKBNz4Pjz/b2rxWWglp7hl6l+XV7kfRRe6fLHAip6ePqedSK22mNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748261394; c=relaxed/simple;
	bh=MLVrgxCZOgQ93CmBnkkikUKDIOhojrB1dLIBm+IOF6Q=;
	h=To:Subject:From:Message-Id:Date; b=g2UkTlnYHGJ7bczdK6M5xvQfS9BwGR/5JQR+YeQfRwJlrzSyEckexVXaquR7omTVfxP4+uUeOxZBA95xOoTC0ZbGWNW7fYStkMlCNbVxq/AC8sXwM/SujXDizmhgWpYVr8anGK/VVbEwE02XFHLfZvBUxGhwIPSqac4EB5AN4OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbkbvyC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbkbvyC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748261393;
	bh=MLVrgxCZOgQ93CmBnkkikUKDIOhojrB1dLIBm+IOF6Q=;
	h=To:Subject:From:Date:From;
	b=mbkbvyC7Xzcg4fKzo+TrrmSDedJn3zlXGKWcQy39EMAy8HdwYI8mCsjvtanvfaQ2X
	 q3+wLn6PCRXCAP+3c9oMM6iNrf0rTrlgEStNL1kFmfvmrRtotxDzDMWsn5nZINTu94
	 Givy0F/fjyw0rOESPpe55dYk0TgzT5Tgg3hA75S163gHejr+zQIQW/FwJVFR3shPCo
	 xxrdwsLPqIURaJ5Huv8vkKvs/bIbMx6MBm7g0DtGTwOed8qrTK00VyQtqaDavI5g54
	 0xlpNY+tbrRea29sN/5W30WEDy/E+uytL9JPALvjGKSyBNHLquk6sW1QMhxnpjlalj
	 33CbTViTEBkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954DFC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826139357.3581.16471922703241360373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f66a7619b52e9866e69f211efc27f3902be46126c8832c23de8e2daa70b2ff
Date: Mon, 26 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748261393
