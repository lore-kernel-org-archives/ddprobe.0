Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF2F1D63D1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768144434; cv=none; b=LIVW+VVguZQCaKDozujs4i9jisDFF1Cl//9tEvroIoc2tFdeyVECkrYAFyJI2PsJnGaFe5FtWvd7ziCbwvc0cH0yWo8qlKF2QNE1WQj1KOOrT8RxHWtYEFygVdm/B5xFfvXXNAbyKBPcZSBN/lO0FFwTOg8tPq91a2pwVHoTjoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768144434; c=relaxed/simple;
	bh=/HN5j4+e0ggyRT1U9uAxK9hzHynwWnSYzmo4l4R8Gb8=;
	h=To:Subject:From:Message-Id:Date; b=nLztZ4HFJ27kPhGvBmt1bQ9Txa5hFSQxELBKtnipzUV0zc1cxQItIVxz1nOS9E/N0zAKsaZ/EJ+PaXy5VTa4mVpSCYsBzrLISyQ+qpodX+C35o/qxuElSe6rQwADj7d3z9tVEgBRwD/+u+8Gf9dzcpNpWy+l6cf+b+bzSe2VgAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eifoJPIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eifoJPIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6360C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768144433;
	bh=/HN5j4+e0ggyRT1U9uAxK9hzHynwWnSYzmo4l4R8Gb8=;
	h=To:Subject:From:Date:From;
	b=eifoJPIuBc/Ik5aBH+s28oua1NQIxTaWW4EvjwS85JEinf80bKWONstQPKb3svO6E
	 Y2jxvQ7O/oRaXSFujZyaQWK1SINsHmUbeApGVFCFsApytPCnfi9UtgaHxnHxTrisaf
	 zaVnRyXFSNQltFeIBZsWxeA1I/WUFYuPR0/NKquMLlaUhTfSD7mm9CnTRhaflDiOFO
	 dq/N1dg0JhZ0IFKlN1S2tXPh9XUlzV2rqUpQMTf6iaYS0DSG29ls+pD0vEq8H+VewI
	 UV3QKe/3P2BCG5uy8z5MRnPyzPbq2d99E4J+z5dLpzU7+uP7wvPQdChtlYGXzKPCh6
	 9gL1Hy9lmGAyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F80D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814443357.5094.10823073528093656204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7598ec9b446133a4093c0cf933e6e4134e1e82d9ef5a1afdbe8adad7dd6dde5
Date: Sun, 11 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768144433
