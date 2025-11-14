Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C832E1C4E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763147994; cv=none; b=ijnCpR/dd3w7LXsXKAN6HCx5ROvtHWEFhAp9RxC6AqaG2FX1uL/6VYQZQ6CWJwvgYXPzkq41qnAglpWBJg7jc6n8/nZZFMY0okW2HcqzCqAbcidpgA6DQ6mMrV0yi1W2RyI1fIjvCKD7ai7R9amMuS0HXx++4T/7BOPGrm2Rq2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763147994; c=relaxed/simple;
	bh=gUDZUX29S0xNpsL4wPh2/vbEUKsQU1Gx2WhHm/ZQ29U=;
	h=To:Subject:From:Message-Id:Date; b=j+fuPcQl0hzlVVej6VvudgEHJhrHkgjH8s3y6eo6O25W3fSGyL1fEOS42EHVbkejm/Mx1BbGfONV2pRNmoFep3oQ0yTGMFhLcbMNnyuE56fQG5lFJhGZV658zLr74jNhj4UY6KRxICFxpEL64pKdwfYr4bjZpPeUQiKGB24swTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlPpG7Sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlPpG7Sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB7C19421
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763147993;
	bh=gUDZUX29S0xNpsL4wPh2/vbEUKsQU1Gx2WhHm/ZQ29U=;
	h=To:Subject:From:Date:From;
	b=QlPpG7Sf46W4gXKOzAWPVnecAAKBllgWGBndY2PoCXc6mB/JnyozfSzrin8GmErAY
	 VqtXfbFFpRWqLLF0cudJKJ+5SSeBgMZV0OU1s17/hlocKDTUt3walcGS1GvBIqirkh
	 JbseaTKuhhnbUamMHyBdptx+wJFBD/PfMA4wySQDHVIsthizC8mb4Pt5/UOrGCltAz
	 Xre0+jY2GlLIxH8vOI74KzUJ/BM1lRMHxgG3MrVLVpMmUCAq1O2Hlb3N4lAKuxEeD+
	 diadvqBkKs/RXRrDZ0tOa+aL7lDDLZ1/LWdw7YmDG8w7gtfUyLSncjITeJILHlOIlb
	 MzzV/DfYOQRHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B6CE8D7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314799359.10705.10425596810634549145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c1c560ea4816affdd9cb54828d7f6aac2a1c930031640efd8439d8fa23a5a7
Date: Fri, 14 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763147993
