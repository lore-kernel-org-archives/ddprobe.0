Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C60938D6A2
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787389834; cv=none; b=Z/MvAE1c0oXL+PInZlNEd6RWHM4trAMlEV8XlktueIt4qScxQkTQ79hdH1+50W9q2DkfmrmFvczDrhuC6PJy2g7GHR9tZEPDw5rcfRFd0iy9S7h5kekT5gXoT8QxBwnKNziD6fpZ5WsySdYYJTK4Ptc7x5yVOvsKVBY/t4JEshU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787389834; c=relaxed/simple;
	bh=m6mOaitt+KTlh7Mj3IuUW1OK/F7pBYSrZDaThvOVL1E=;
	h=To:Subject:From:Message-Id:Date; b=TYEGGmeO0O+kKr3oyE4Qe/yuQug6xRFO62MBFzH+LNHBQP/dNOfWkafIIPhr22o0nZCiNyLv+ZJVVrDQIT8A8KcfqCgU20kAuO0rb1PWoJMaXnsSKIc/X/oQ7mFSB4h+StEVtkif0VHyyk7kKJrlSnTx0WBbPjoIlb0HMtTyEqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbLtgu0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbLtgu0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC193C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787389833;
	bh=m6mOaitt+KTlh7Mj3IuUW1OK/F7pBYSrZDaThvOVL1E=;
	h=To:Subject:From:Date:From;
	b=qbLtgu0K2YZCxR1E8jvs/9tEsVTnBkABOhbvHqz3sZQSaD/vovQIVz8m4QwA/TJAt
	 dpjRV4Q1Ct3+kLdAWr3tT1F5tGLQpQ1V+VERUT8V2jg5pCYMguucVksaE5TCPAGnIm
	 4QHUqiIDhIqvP1Km6mQ9NB30AVwMnIHXvXT+7/BFg5j8aIeaS62gyQ3WJd+SBYiVht
	 8wTtUixFjfyjj8Us2wIMzDBkK5wJQUl75U1XDopUuODyTGdO7oD8qGBL1pCO/Oo3Gr
	 I9gNOteKLN8lCZbxmSBaCb0L/BM+vLi06raay4ccMQRgMTZMDcm7tcgm2CAr+dW5ry
	 /RVjfFKjPpvxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57ABC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738983370.23916.10756512973076334158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0d4548b62ac67de7e67e2ad3ecff023665011c0a55b569e9f17adaf9269153
Date: Sat, 22 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787389833
