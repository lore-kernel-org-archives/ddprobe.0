Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A161624E9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746298195; cv=none; b=SyEnpGTQAjfr+IYEdaTluJRICLEgiqEPitsOn0SogVhlPUTQgpVrridP9z2BNODhWjyqm1e7sn7OTfXohvk51SnL/0xylPOhhtf3EwdldxflgXHYRqvWYknEi2TirrhHfCHncNNEfGHzpKughewDVNtUeMPn/S/uy/52necWX3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746298195; c=relaxed/simple;
	bh=/vXe9es5mi+GcITfcae6gGwN5NQGGxoXY7ePzel7/Ko=;
	h=To:Subject:From:Message-Id:Date; b=qSPqwyWqErEorAd6B0TNJ1P1A9UOqDQoM0XJOju5wucIqKc2cAi4C2gK4L/IFYnxH2bENnO7qn15mQgcGmtzvtJ3/vnp6I7ZooT0piEXeLfwUxnKoZpPkNjrUvzF1G1bZSPy4PQEKWUn+BKvqGg2UaiEOLDKXhmKf7cSNXsaQko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5k4nNf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5k4nNf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57A8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746298193;
	bh=/vXe9es5mi+GcITfcae6gGwN5NQGGxoXY7ePzel7/Ko=;
	h=To:Subject:From:Date:From;
	b=E5k4nNf+2rUMCkKUDGZ2sCLgXZHKjBQyH8wBJ2XDQG85bWfPf4KD7q28cgLzMGsSk
	 huBywxrZdywqGlmHQEtTu97VHkZVOYk/0hjxhUKzpW8gXptZp2K+wLIMiPTGz/0lhy
	 /DgNKO84vu2pwC4iOJFXoEOv7ICwMRSYluCt61sg+3/W8Z22LXHd+wf8auCb3MFd83
	 8TRp1vjLkVZ2X43kb3wJ3Bnc1EEowOSGHrNormM8ino6KI+SHdEyO7aRVbTPVYBseu
	 8TAdHkncp6sFyJaFWrdhvDkE3hX4lYd3XyOpmF+VzzeA95g0L3FOlehIWaqHY++pHF
	 P2MPBP+8tyn+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934ACC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629819357.16624.4981310187924352490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bfe1004dc22e0a939b48097ee96b8c162d88cb59458bd31c7b4c65c3c875cf
Date: Sat, 03 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746298193
