Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A763C4155
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781581594; cv=none; b=FTRN5klbORuf0NtSucsmeTyo78ZNOzvcdqMvnXP6L/aRGYSqPEzWgkaObp8SW7/y5dvx50YDFa84cpCehxijKFr/hVKPGWLNKtIVScnZKS+/eVXEHLj6akNfDvU+pL6g06flHJgWGcbjSkUqAGZNbq/WGHiZP4rRwl6FnhYbfQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781581594; c=relaxed/simple;
	bh=nuWGH0FBskzH1+VmJ+FgpzZymjTPYdYUtQBA61xiCTg=;
	h=To:Subject:From:Message-Id:Date; b=tba2Tz/lHlCbZV04L7Qw1YdQze2n4+V59ndZisP+bzpiK5Og+YSr+6hbYSLzR165aXmUF9TUTTE4eFr/gMyhT13kJOTS6ftRvuw+N3xBABRCfcsYXxR/s0tDEVvP/1JeYKokAXtVxmnKTWsjlqZe5pHZrd+cdnJ+P7YKbqe1G6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4wr26lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4wr26lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CFCC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781581593;
	bh=nuWGH0FBskzH1+VmJ+FgpzZymjTPYdYUtQBA61xiCTg=;
	h=To:Subject:From:Date:From;
	b=O4wr26lfACtuYLzEkGr6Cwsb4rxulFJJmuloPxVU22AtiEUd95lilsL9arUCrt55X
	 sKKRQaFEvcx+AcqCcM3ndx7mbg2ZmHFQcr2Omhv9c3m1xst12jSETFaWy9Fa2jtr95
	 +TJ5pCGt7WTwO//TxdfZep4o0DYfYp3CJ9GHZMqM5ihMO/94LrJTl3I8MiXt0dOT44
	 fGhoFYXYK+tpVgByK7WzseFRfWJSsofiGP+nBFHcs8CZHRMm7GGVurrTFD+eKGhBHh
	 UcsJUzIjyACZrjwX9AzsvMy6DF1bPNTm2kwX/ejmt/Vz7QFZqU8QF+xQ1ipGrPB/cF
	 HAzw/INd8x+ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC00ACD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158159369.9538.2508661827828314613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3bb1857ebe39204dc2970cddb91487b06bd16b323f926f496dd82f7d7e8787
Date: Tue, 16 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781581593
