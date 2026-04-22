Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5372B40DFB7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776845854; cv=none; b=Yhf3g0KPUyxwyWbtT0wVIGH00b2h9cPu6ikIJjSOaj2to7HUUVapePdAoU2vGRDJbtcXRM6Q+gcR4R6MVyQgHtTRgs37WavJI4gpUrec3MUySfQwdRN+Yd1Dmzru5p0pdpMJYW+H/dEJABBcwQsKo/faRMpzrwPSmjPTrm2I8t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776845854; c=relaxed/simple;
	bh=Cj8nk1CXssEcxHABe00aB8WwYf0gmWVsUxZvnkk3ZzA=;
	h=To:Subject:From:Message-Id:Date; b=dVcLZGFd1LbOHdqkrJHSnQUSDa7lPcmVP/EEkhTPNK+nUY6y2swaqUaMjw4N70534cxg9HGg+fB1xiv+JJLNIthTRQzbQGeKbvG687XubQcdbTohcoucOzkymQUcRC2y0AReK5jW4lKNbrb15c3AAHTG2kNv9bOe3SseZe3A3x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1WXr8jq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1WXr8jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA826C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776845853;
	bh=Cj8nk1CXssEcxHABe00aB8WwYf0gmWVsUxZvnkk3ZzA=;
	h=To:Subject:From:Date:From;
	b=V1WXr8jq/tgcs2srexB0o53FxHjgmqjWuLoLBEfEkzbjZgZ0+LMqmJ6l5Xcaxrie3
	 AbOc3RQDNUhCs0inqqEH/ZXVEgCMsz2OLbmQQbjLX3+r2SIQM9CMq1WWoiQ4ThLai/
	 esZgHsqNEOgtzilfo/B5in//TtAdDnyU6QGO3cZEHThx/7/JeBpriX0M5NiC3m3OtG
	 LrnO53MZCMoP2JtMP9PPeehyZ0QrHidEQqbyA7mv5e6E/qDVUrs9f8rdMwCCF3ufEi
	 F1DEGi8xK60e3sNhA01IXlx8X0QIIjkNjOz35gm2aE0J9QF2Cw2+kphZPhhgF4SF5K
	 Z1xoq7lq/MMrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99EDF94CDE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684585368.5302.13543532489408668005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a0bc2ac9b583c04613f62617e10cc734714eb292dfee67edae6118ea98e2b5
Date: Wed, 22 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776845853
