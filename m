Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACEE746C4B0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784654914; cv=none; b=RcjdwYG6kpzT2iSWtWQwBC41Gn+k35zR7IxLDhI1YPs9eQb8cJZOTzuYXqnRnKuLQ0TxyUFREVXa1z7vkk6oC0Bvi8NsJX/fb/XMPtRlmHCe3/qVRTeZZButY0BhFAQKepN8PtmbIF9XtxU73z0oYTtl5rDl4fytgKv7gcqbGi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784654914; c=relaxed/simple;
	bh=JLhQp07MLPutgiHlJjN466n0zrA0cZFQXfAvmLuIlqM=;
	h=To:Subject:From:Message-Id:Date; b=T5iJdTBA9tzGBJh81+t6fdK3wbsabwIxgNTpqYUeNaODyf5jK9CCTuuIVfPPYxM0diagc3cLWBgzOeYACenP8Jm/Eij099DRaFR+IaTfp8/Alu4jeSqq7PESebogBkyG6gs9nOrpjsDBT8nUOMBKTXkjLaZZNoPuiLeqOnDDWgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=If4qihbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="If4qihbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E7AC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784654913;
	bh=JLhQp07MLPutgiHlJjN466n0zrA0cZFQXfAvmLuIlqM=;
	h=To:Subject:From:Date:From;
	b=If4qihbb/yvotE+z5+MdJ0D2kLdZiT9K6fcQb6iSQUeg5RzZcAAuCSYr1RD5FBZAN
	 UUtCVEtFwuDnk6E3q1b+URt463MmglBwtxe/shN5rQmD/3+EoG63s91setOG5gPW8S
	 AI3aW4mdX/khJmhi70qOyS2Ems+W/tGEaNTTlVRpD1NQrHaT73Ir2VztONI36YalQT
	 NKQU3n22IdaVY8hwZQi3PPTopgfXW4tAo6eDHAGdCWBEVtNClKaAV4ED7q8ce4DkPP
	 4rHLLJa5Le4c1ayUYKPFlGVEpUDcDrLIu1l674HX60S9+ANhvdHviUsHuxwJ7Z4pVC
	 D2EbiVyvpcuHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFD7C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465491370.17918.17911307188490872621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8496577f37e7bfdf62c4fb406cf00accbb6635ba4f7558ef0bdc68cbe8386f88
Date: Tue, 21 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784654913
