Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA124339390
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792074034; cv=none; b=hQ7iSJiRQssCTN8GZJDlcCxQoGXWCESOJMOJKjhK3dF/UNkO9yEedYn4TQz6IVkNFlfDRyUmolX4kq+LDfsq8fBhKpfHpWX+RgWGwk0i0hZSzgqrzPZO0SpCFJcDnt2tgRZmH3Y4RzAIuNK84v9+wsANMmGxAIldgaQYYFVvnwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792074034; c=relaxed/simple;
	bh=+922nfkxzlRdFkbiGtcvc9nJvZP1jrnl6LoJX5tq1TQ=;
	h=To:Subject:From:Message-Id:Date; b=ZnWru/SdCOSQ85CBHyAxAeBYTHDryGFtFjwOuBDmx163WpPdaSG8a8lGuOeoS9RJ5mGgnObxU0BzzL9uNyQCpUCsbtJitdCGhR58Cwre2y/VNVrcpWWC0phJbM0x2WhLEBNgMogslev8Q+BBd+K1OZApCToTebDcacV21Uerr+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp8tmQ4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp8tmQ4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF6EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792074033;
	bh=+922nfkxzlRdFkbiGtcvc9nJvZP1jrnl6LoJX5tq1TQ=;
	h=To:Subject:From:Date:From;
	b=Vp8tmQ4LmVzH+TcbWp3mL6j6adQQs/NUb48r1YmYu4uWx+fng9dbnn2BKUcFlUMSC
	 aIRHk1r3pWbcdooM4V+WtBFmMdvQiAYUZJQ0bIw/NzOa4LZ3zvnL9ht8ga1Gj2fzZl
	 bJybLAprT7yENiCzx1wAClT1jz5oSMfEeGL6fdM0UUIZJb7YGnoLKueZexOVuIrOV0
	 7NhuO0DVRuD9n2QMlOJfSyT5bwWbpNRqsvC13/s5usNVZkog7SVlb5zjfR35G2h/K2
	 M8YNiJaKFZ+vqfzNdO5pEZ34qHMIfUKcgXB4vvQmKGjX9vpu0HRDMRuCIXBPxvtY6h
	 BxeyluDOxNepQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D48CC6B3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207403368.12572.5406321150553416840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe49a8aaa98fb9e17ad9b574ddef95d1a682cbc69abe2b88a198d6784c14a13b
Date: Thu, 15 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792074033
