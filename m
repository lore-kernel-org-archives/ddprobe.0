Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F74B279DAD
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787509834; cv=none; b=hLCW4pJRozNdsMOHKwdA5hbfIoLJ1M6yfgxtt5yxPzo3BAHUIUQoY0Z4dh/O0hL7up369CwjYwcUMLw2khyDkBuoMb5BSUTynUyfN3CQn7KX9fd2Sfm63OYc1N0sfaa8ShJ4F8hTsNxFb/sCRaxdEI8IOPA0uAtKgAzhO59cEGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787509834; c=relaxed/simple;
	bh=tYdOAIEm1geFQaFNC8oA8xoIXd4VgWivIuvm+GZf13Q=;
	h=To:Subject:From:Message-Id:Date; b=JP/q/TSerqd+ync1tKLrI5Eo4HTENq8V4VW5MmETChBA6w2srhkmhkZpNYMbNl/FXAyAwd2qQtnsB2ZsliU3xjG9n4JNNDwTTp/xbnZkBEg4QavDB3gP5CoFI5KpJ8WwLbj/PsYwRMiHjmAZIyAeIRub7NLrvtLxZenr4rE9a+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rT7oaI0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rT7oaI0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B95C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787509833;
	bh=tYdOAIEm1geFQaFNC8oA8xoIXd4VgWivIuvm+GZf13Q=;
	h=To:Subject:From:Date:From;
	b=rT7oaI0b+EMdui4pfQFbQHVFszvG35RcL+DOvdDnAT0ErrqzbNFhwb9cStmSdCntD
	 EPadp0AF2WJE/Z7r2PXd2hemW7x1n74Cqv8FQ2ZS3ntrMwW0DcMdy5KtvZXQxERQuD
	 aWFWi29fJiJ2TsU+pgig+8PeMOGtpd56Js4RMWVDprQmAcZrM/0uvOBxnGCK+TNroe
	 lEy41oZPtBUAZ9qpOfJMGa9VQDMNIrPeuxm1FiFlABER2KsVl1hAvXogbm+K7bLyqw
	 N6nFVgsvL7AhxsBpS5kG6SUhVXHb4p21I8UJU6sLF50gfzod+i3Z4jznP7wM7G5Lt3
	 Ghnh7iT+149og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7D3C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750983368.9610.12757241815788914983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f97a32caf017a143fd69bb7606d3cc82f1a958930b290d235f3916affa05afa
Date: Sun, 23 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787509833
