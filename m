Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F2820C023
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770527634; cv=none; b=h2ZBeGQoaCIvNLavlhFJIzrDBWYFvVqM+9tsHdz2uzksAsVoZtID1RV/U+/5IzqQXwHqS/5swOk7IJx/t7E5jlrIOYZEEH8QmgaJSkdtjDJA8Y/qdbc/d+SG777eIIGh50eIdBTMNvoP2ARRSK5CwHiL+YxJjMNPS5rfdQOy0BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770527634; c=relaxed/simple;
	bh=jvwFDVSXcx+uTqtTWELXk8OUR8AcCriObvufnjcfy+g=;
	h=To:Subject:From:Message-Id:Date; b=U0oh7jPGk4NO7jON9HfYzjwIh1fvEtvCdacnYgD8jgO6igy4v59A7CBsDP9uudQRu2YX0PLSbBgkv0UlpbYE8IXT/NXQx2JTsc/VAXEDjYCTqpyFl0CrGj59UInQnsz/PMIJi4iPIE04GrIMzznADgmd5HlpaH3tKJ5V9BatbiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qttWgsfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qttWgsfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF18DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770527633;
	bh=jvwFDVSXcx+uTqtTWELXk8OUR8AcCriObvufnjcfy+g=;
	h=To:Subject:From:Date:From;
	b=qttWgsfSOZ2Tt8LhLXIKWlDWzgWFgiLHdM9kbcXNvNZ08dTBeRnzmTTDPiF4Nq0SI
	 besI95Dzq1NmyfgdbnEHTAu6AKGtHt5yR4QzYfDARe6gMNE5AybMeivlPv7W0FTHhI
	 HLOFcviUxv8wXnWxfXtGt8FtYmLpbQAvX6/i0+CNgP41yWsZ7RQvyx4naX2eaOKW6k
	 0YI8mrjsVVd9DTdvfdOX0tSzfUu25bSo5Hg9PIqqTRtvGM/HcySv2xj1mqhevQOrlK
	 ye/Bz2ugfhlbAk31gTybggI/c26oUFg1JYpU9T3wIq92nJPMVvI59swE7+U9RcX5yz
	 lSJaOWrux5uuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF30EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052763358.24307.18027785928420448649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba56c09ff57731ecb57d386c8d68dda8dd57f426ea77e1d7f4c0063ed22a69c
Date: Sun, 08 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770527633
