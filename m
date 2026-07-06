Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB653812C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783381714; cv=none; b=ORaRZjyYaaGIwgcnnsmmpG/+TP4SY23KmugJL2fmPfSSIbiSFausQmbsFQQwJ8jJOeMVUTQvY+MLV3zAnAUfoAAvRaoZQBI5l5BJ6b0e+Ah4/8wN0KYC86tyMv4HmisdSoXxfRf299cAaBlBmxThpuTmt5+3Q5XgTD+PS2PE9NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783381714; c=relaxed/simple;
	bh=iSPRHJ4UttKTQ/kemwkePBrd3sU4f3gtUHGc9R3Oz+s=;
	h=To:Subject:From:Message-Id:Date; b=G28qn1WN/C6ohC8PghGOLyHNXcj2Rl9XOqTUckm6l5h/7TEyz4zDDY8zXyU/f6nEA9bmGI50UZO+XsrxDDlDkb/aae08dlCHk63fbXu1CUl6Kxv/leCWFwIFsHH+LhaQR0SogJENx+poqS/sR4IN7CwJYwNx0livA7SaNR+pufk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipdbyFY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipdbyFY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA15C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783381713;
	bh=iSPRHJ4UttKTQ/kemwkePBrd3sU4f3gtUHGc9R3Oz+s=;
	h=To:Subject:From:Date:From;
	b=ipdbyFY2fDniZKjJBzSyHa5zJH+0mHSNq4WayPo0KifedAi12006fHAHk4Iq/CAG1
	 NlxWaspcoFTU3IjTJqqjQWVhM06ODrawpCFUicLiZBC75HdUOVX/MUfOPvLInsVkHu
	 34VAkTulUA3Cm8Y1nOIaDkGzuBGK1OjJ56JBVjxPNyjFQcbYmnN0uRdmqzrk2WmE9N
	 Tsj1RW+tl4biEsixawQDjWMvZL0+O/0fbRELDh2e9djwXLc1/GsXMrGDAIMC8NHThw
	 m5Lu2F5KGkmuD1y4nYe7T5foagdnnlPslkxN6PoXGHUMViAugDqd4S7eFJ5JWoAMIu
	 C9XwfMxwXk/sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8AEC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338171369.30636.12801592346696549311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3973f674e1f557e50b23985c7a46e36f1b11d7ebb823164624436d4498f58d2e
Date: Mon, 06 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783381713
