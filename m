Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A2F2750E6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787334634; cv=none; b=mTVeWOt6f1LWydOmidicqJKC/s4iZKfgeyD4aBVaLgFElJ03n3NffDGfUVkDXx/GEms6XPwGTPuq87DxFEr4DpXm4KIZ50rcfVogCGjBxLAX1Ob8XV8Fano6HRy7w9ya7ZttjpyaCjd4oh3GVlSSqv0fIstcKS200zVqdth6YUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787334634; c=relaxed/simple;
	bh=EGIL0/cDiRkwok7C3ypNbU1Lzduzu/S9St4JrO8T0MU=;
	h=To:Subject:From:Message-Id:Date; b=CoDDskZ9u4HX0RUNRJTCjL0ADPILNhb/XxfBLf8BPLEKYmwVFwr+ISc3e6B3iMBSngyGnhKHJ40LK5bjwVHpid9uMv7J/c6YwNFcLof9ToxLJj7K58lWhcvmYMkJeRRiJtkAbDVkxWSPqZ8HH2he7BKOCpeQOa4pTnlTQ55bsHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPuQdg+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPuQdg+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2A7C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787334633;
	bh=EGIL0/cDiRkwok7C3ypNbU1Lzduzu/S9St4JrO8T0MU=;
	h=To:Subject:From:Date:From;
	b=TPuQdg+PaK24h6wMwBbNWBpOANb/1P3s0d3X7wFeeUbRR87myGt8ZwUiAclxLPss7
	 P1vzVTXQGqDNaIrZBEtB7tl+pXasIvQk+JYN3suV4bqw5nZZggYdIYmMPpo96W8Fpu
	 VudY4uxjsE+054Wg6KOWpFqp8AHQYZ/dZk8J9RAZUqpkcwLj/g5Wrn2kih5bWMdeGY
	 8j1gx0cB+282GKhIexQxFKGXwGy+niTgcSBU9JXga9+wnyQA0VhMd8WPN5Ihq2MQef
	 oBhisl7zPzaFhwwSjkJ8W6I3ZyGstxne0wKvyymsOxOBXx+08b+qKGUtv6z0NlSYP3
	 w6pQ72mI8jJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7D7C5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733463368.25067.16649248613333939143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961da87dc7c15e3a738200a90d792ebd74f0d61250d7381009449096e2b41f11
Date: Fri, 21 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787334633
