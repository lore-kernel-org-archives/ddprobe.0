Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE4C3FCC
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767593034; cv=none; b=nt5LZWlel9CtB00gIE+gyVJK3HfTmQmVnNJIX2/mt6CGXap/8ySEGBMTnuFKs/l/L+LWfccHo30IkTxZ5qhvpSHwOhiVzxVWGCl/3yqc5rYDhq1V4JlwWKuYmWFt158M/O76H6EGwTJnRaJr8e5Ue7CsYpNNM26kdCibAm6yAD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767593034; c=relaxed/simple;
	bh=kiIYzWUyvJxGeRunEvL42DFYWbPXUvy+Sxa12esqU3I=;
	h=To:Subject:From:Message-Id:Date; b=rRwQuCCCJWfOPUBC6nJdtGpzVoMNZnSy72lPEC9cC+LC8clbxKy0A9ZsyZK86Qp8GZviInuEVIuPqafNyOR/MCW1kSBjBMrFdBVCFnhxVT9oHczu1d3cA6dp7pxD4ojMbroMQNJnVxKJV0RmmFppJ2OEDhvFhJQ3bbf3aBRyYm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4jarXgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4jarXgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB108C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767593033;
	bh=kiIYzWUyvJxGeRunEvL42DFYWbPXUvy+Sxa12esqU3I=;
	h=To:Subject:From:Date:From;
	b=M4jarXgReUJdVurXxlyKVt1nJ+BjUery3rhBSGvkKOxcSYeTsCyxc0UP0CqpFcgjB
	 456FyMeLIgudu8nmVuFSvLokmtQahW/RnBOdh5OIrHBavCYe53PyfA9/opRgafPScJ
	 /s7duHNi9/PKV8k8mGIY3Xim+NmM8ES1IK1Bhgo51SxWUnZdA6XA9yBII4nQGCTxRk
	 b5Bc7qRkpD3i8j7TNPueVSeCOTcaOO16amM9HuZCqHVqpUFxlXGmY6BDIxXU2gskFY
	 P6Ez0y3jASPJS8uWQfNYgV3Wm5VnHGpssAkEoSNBQtFgwBjPlPIKSy3/GF+jJRdcma
	 1ZIT7dH6zo6rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964D0C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759303357.26591.4824204092135027720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8379e04214cea66cc98de753e15f3d8d151013f67a550b609e0858c7e81fa051
Date: Mon, 05 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767593033
