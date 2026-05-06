Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4149A1DF27D
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778041054; cv=none; b=WOMU6r1NravUpQ4yKHrWq1XbF/QJZnC6VZnJgyQ50rzeFjfDL0jYsOEY/vLsGS3SQOcIc45BPGg67qJl2UBy7y4CAsAGMduip2Wck0WkpnTNEc/16d/FAbSmFa89wRVjzwz18zsd2EiMp7QdaNPSijA1lyP4PjmD9SCCHWfJvVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778041054; c=relaxed/simple;
	bh=HYU/15N5Eqp9E+nL7IKJvXXkMnQ0jWsNPBbrE4fLktw=;
	h=To:Subject:From:Message-Id:Date; b=ExzeFi9795WF4bE7o/Lu40k1RW+83VFWZmfUihfvSigf4nmcOkV+7tpHY9ie+3MuYhD0qHrjIEeNyJDxtYtkNxShVXEYcaPimn3lemIITMLfGJq6wxQrgrMQ/tyOMvnXPry+M5cqhGNGFsi4gq44/FpGZdTqmUYb9CAuLwDKjfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LD/CC/fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD/CC/fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD435C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778041053;
	bh=HYU/15N5Eqp9E+nL7IKJvXXkMnQ0jWsNPBbrE4fLktw=;
	h=To:Subject:From:Date:From;
	b=LD/CC/fqw6V5WysMh1LIZqrYA0bDe8WRz/ObOVOWtgFaIuLC5Aj4pjbZrRQ0EX9i4
	 CfKTDJbVoy4g6XTPRss8FxhyI3FtIrmW8FlykfKtJBpBnYVj/Uhl/EOHagF131jSYn
	 993VlCGA0tqb3IlLfIL+rJXszLRb+nwAAKIvzqiliT0l0B1BwUxYmT3RslVTOipnkx
	 Btp1puhVh+SiRsbPzbnp6HPPB1li3bcTsa5dvesARcwCFFXRGgNK5ijZN5bA2CwP4m
	 yfG08RCbMc/Exv762X3Jw8ArCP74JfPClxvTMfWRw5v8srGc6Z5EExWOuScOyfUeSh
	 bnQIR8cQmYWHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5364CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804105371.29204.1105494373908061114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5921032ac67cc9b2378b43c2dbf68864b47e13faa41e33f684a32920a7eb0ccb
Date: Wed, 06 May 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778041053
