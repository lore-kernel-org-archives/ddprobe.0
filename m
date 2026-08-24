Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5F633D4F0
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787584834; cv=none; b=Hps5UwYZK+Ye4tnBo8bfM0hoMiEea3ZgJYYpp3ZS0RogGYFse8A5b3vhD8MGHcIH5J+fYIAeJBUgppDUAztVLQLXFNehydn8qCMwEw8zJmwWZ3hosZvBuWLdrEntApqdszGLC5z/pbEM28UJ/vPieHzz4xaRD44I1gQG3fxT6fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787584834; c=relaxed/simple;
	bh=DPVt5XPKKnLXcST5u1l0p1BP0n8bvVV0RjXOKk6QUGY=;
	h=To:Subject:From:Message-Id:Date; b=KqPd/iAMJZNtMVXRw9xi25Sb1hVHar9vMFWc74qru9ndzvnOufBBFJg+qpnyBZy4SkFcVPSp97xVjhbS+2nbL1crnrGQ2ODQBqfYZdy2KI0MfS48xO+Zr5rgjZEP6tI9aYDVndfC2KlUaFhYKUewtt4JLFfgTWbuY4vm2IEU7Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiLNi216; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiLNi216"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39C7C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787584833;
	bh=DPVt5XPKKnLXcST5u1l0p1BP0n8bvVV0RjXOKk6QUGY=;
	h=To:Subject:From:Date:From;
	b=RiLNi216JOUz9JIytOKUfMmiozpWkM9FiqoVrGgvDDUY5FqAfLxzblodz5BIPHZYP
	 Mhm9dzSYgpOZfnLKMBvXS2muNJt9w6SLwlbAdWZ6B2m9GrmmNsShbxAdjPSSuCemr2
	 oFI4pVO67nc+HgC3b6hMvbPZq/TjJMidYb8oplrIUrZByzqEVHyevCuoeaVUOvGnpH
	 AGCKymNEA7yjspfvBfdj0pOcF1Ii+H3Jio8T+8AWsU4sx9y5+uGrcVP+tmuYKu5iHi
	 4bZIrCNzEiStkAhBsKin/PEonM2AVv4vSL9zeIcvNRLFsKSiO/mIm/UV+ZTO+brj83
	 5rw+PeC8++U/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B043FC5DF9B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758483370.11440.3787841715170255130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62baf5f29d2187a3d8fc900e324d7dcca248f77c65c380af7bce7d16db6c092
Date: Mon, 24 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787584833
