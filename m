Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9311DC997
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770569034; cv=none; b=BbtX7qUwAybBDOCPoZZ5Werhti8A/OSSQdUOKtH6qUVYOKn0PxWmq2T4DyW7qqfBaevTivLLtHNI9QNLjPj04Oxt40eF2dHCS6F/fNr+5kTKxyjcQnZOsT/wPpvim2/BAJwfprZdl/qtpyj67ba3bc0FnXHAj5eNkWCf4035xhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770569034; c=relaxed/simple;
	bh=PyIef4BVAip63Gez8pRMWUvNt4KIrrGYdIVwbfJvMmM=;
	h=To:Subject:From:Message-Id:Date; b=drOhMtJGGqc1bhoW4NbhqBtaD6vWW1603mHJ/jKMuH5eEqKWzhbPaKO00FNnFg4bqu4icBlF4AgPQob1edUykpk6Muk74aOamsHnxmdLvNZ9d7DrizJNVDchDeV0Fbk1l/rj3eF6/FvQ7kE5SfH1ycI3ouO45uwRQwDyyTuu9zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by+Pzud+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by+Pzud+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B14C19424
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770569033;
	bh=PyIef4BVAip63Gez8pRMWUvNt4KIrrGYdIVwbfJvMmM=;
	h=To:Subject:From:Date:From;
	b=by+Pzud+jyllX1MA/tXxQgn7BGASaosr8PAcjtZffwyDUm+QWysdpZ7ofny+RvnKi
	 e3BldMPpyjcuuh+SrcbYI7/MOY65hiDrBNAWJuSJ4SXEsJNPfjPvVEhjQAeR54tmO7
	 qrkKeqrPtpzOUBKB91F/AtiF3/ktvX0RnMqGte3J2T1j9umnWlqdxI95mRMreGn+wd
	 jhs3Kkjo4iaqNA26HGJT93pqp3eOmVCFRxCpXqPpIFjULoBy5T3ll1r/mcKB48/agb
	 rQVzfR/XR4Eg+ocNEGjM6+qGoYK8CymmsBQT/UFPid5JDJJFzVAQCu6+6c+Am6KcM/
	 rr26EimE0Lr/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00B8EF06E9
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056903364.12829.8410078771136439843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f941cedc9bceef28db4566757fb394172c38ec7cf5f3ecd5eb9a94cd8d3239cc
Date: Sun, 08 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770569033
