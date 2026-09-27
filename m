Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B07269D18
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790482834; cv=none; b=DA3YTzGcd+8MHM7YdMqm5LwVK3Th+jf9uFDo+7D31DwCsYv3845n3cvT18q5QVQez5cZTxh6ykRFwpk9B9ZhGsDe62rgWOUwQiDQb9Imy+EAcdRHnL7LL07Vgqb/XfeBAonmk8C+KxWDu6tT97g7YKSkooKU9DV0S0ikvf2us2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790482834; c=relaxed/simple;
	bh=86XdU7nL/zPfJgHYw5kbyrcwqXT0Xn5ZFsegzo5oASE=;
	h=To:Subject:From:Message-Id:Date; b=WRuJhab7q9xxvkKt2tEphkqG7+DJPR/JIR2vYpBV6eucTCAcy6dRGUXYzhcwB9qPS4tzqnns8nF60X89BqbuuVLaHWt/dwq3jGr6BXMO+7qOpadJS9T6ARsLCa0BguggRiFzUvzKCG8mVpZVOKq7vC+G3BTxaLF6mGaw03WXk68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoUyLYog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoUyLYog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ACCC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790482833;
	bh=86XdU7nL/zPfJgHYw5kbyrcwqXT0Xn5ZFsegzo5oASE=;
	h=To:Subject:From:Date:From;
	b=uoUyLYogFdsFgSj7PeOkkITf/iNwPTtWB+KQ7S38ARpgW82u+tFxchI/BhQwOOZWm
	 wetCnE4Z2WgPDaSzVV32X2wtxYoSsmjypKyGyTP83OFse92CFLT362gKb4bZWzL1fL
	 w2Ana+HdDltakNLAvt/cy1kHaq40KbHKJhEw5QziYbCCt4ureL0gn2uzLhAD48MOQr
	 JxLuP0XGk94ZIG5gzF1p0zSPSnP1E/F0Us0xJVTYl8JbKtL4rfvTEmkntBvN2KDsYE
	 z89UnwyKvaMWGo96GeqBrvDBvT5p5rqjDIudE8qYE6qzPc3aLxXDd3EZXnX54B5HOf
	 jL99AnBR+SETg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BBBC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048283371.2040.18332132278839314443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b6f4ee5f2b226013704021fc2614d1cefee95122610fedd64d37961fbdc02d
Date: Sun, 27 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790482833
