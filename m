Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13529231C87
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728075354; cv=none; b=ghBew9synWi1IiMHPG494Y3Hp6hmqZrm0BuzU8KcfAFiq8ECGfHTVmwwmUydicLSaAqa5sy/0fUf2jKRgCooy4nUHADk6JKAHvAsVQ2y2gsXuU7nWIhHIpqYpTN389dV6ylCcCw/aXw+PGxcfKblaiq7rDZGeIduR6vY3HZIlI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728075354; c=relaxed/simple;
	bh=wKl6pY9S5oTV8HMPtQFaAD4vDHGOmXW0u4st4aiC/7c=;
	h=To:Subject:From:Message-Id:Date; b=beRR8/XbuxKiKCudR4EVNbsX4nzFXt9nwszEaj1LnazMCmdVHCI/O+dLP1zD0eBPoGqyUGybjQyjBe+cCo1hWpGt5DrsaR8h5M3xiKqOMsYN29nmA+fSXlaKIkw8iQnwqttuNgEAZ+jTrbMw2ELyzPiTlrMI9BNlejMf1OzizQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwxav9Tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwxav9Tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBD9C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728075353;
	bh=wKl6pY9S5oTV8HMPtQFaAD4vDHGOmXW0u4st4aiC/7c=;
	h=To:Subject:From:Date:From;
	b=fwxav9TllrcNlSUjVgPe/bm4u6DPEQeQVmp2heLKDVk9A8SM1tX2454Ni4v+liATZ
	 N/ZNcai40TFeVNAqpGhOAVPoN0ElqwQS/Ll8D+y42oW6b2kjeCvnNeom8OaMVB9dc1
	 PF2aMbWiw4H0VUPNXoNxt6OjYbEyUWnSlducCd6txRCV8wgBtPWsMeiWddm1I9c8n7
	 dpE+joGv7GXA90b7Uvj4ycQ6/KFic1Cu1iYPYCKStnB2jtxKAelGVIJpi+vglCPIrl
	 dWBZtdKDLgKUA55pFPhtIo9czaUYnWUgCoJDURMvmbdRBbOa+l11Txh132LCm2yyGW
	 t0w077LbGK3BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D7CF8857
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807535358.6074.7401729833991554958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a77bf79ea992c82cd7c7623eb0f78e7be82ecfc2daa00cecce42d81c4101b9
Date: Fri, 04 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728075353
