Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8AEEEC0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785373234; cv=none; b=YX1KJVywCNbCXUhF4z2L1bZfWVi077RDKFuifgImtXo+fljs/M4/hqJ2W/2/JPdV3xKPUvwmU9C9XbISsjVDKwGkTrHwyGQJ+y/jjV/sOp83pIuS3LMfSAgAJPvCgaccm3gR5iHhrQWos1aC9ZZ1C+M9noQafMxhEKm9GY1QxKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785373234; c=relaxed/simple;
	bh=AAJFWfRUCZLkRkZB9RozKd/s55eIz+Z9AH+5nvI2dR0=;
	h=To:Subject:From:Message-Id:Date; b=aWCUtcBOZOppiOJJuLH1I8DS7pBZg9OIb2DPjSnh9HH4dCvGfZqljpHW1ngh/pDUkmh6iJWSgyxCgpQD3+i0G+ZgkBnxqUPZ8FCLD4ddPhBw8q9135RRvbXf/RMUS63andydN2M3QVfVQndz7yncc+xmueq0YMyrRWgbA8NZWWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4uA8KkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4uA8KkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D63C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785373233;
	bh=AAJFWfRUCZLkRkZB9RozKd/s55eIz+Z9AH+5nvI2dR0=;
	h=To:Subject:From:Date:From;
	b=n4uA8KkWCxa8zS8cJwqUs+VgR8d8PWQzuiy+T1Na4SakmXOlIzFlPWsH5KLHUgMrk
	 R3PvJesastK+k77XZjsSLWQHDM4tLratHaROpVxJyJFHT8XgvyouVnPDKLMApU1dfv
	 trNB4a4BS8NDMpYRkgnpEkQutkkqbpork3DlqajNm08MHODfb/W1FA2mVXIhwKJepI
	 kzVVwK5uoJItKPjoxTvPjtyZXFUom9+K1Pp9qttmASK8+IIjVvqam05M83aS1k95Ym
	 SqLO9BQts4Jc9w7SN2+P/XTIuPXaRlmvYQVU6DzZDnfVteCNhSzy6+mfWr1RL6gyRG
	 69CJYByb0Cd0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6DCC54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537323368.6569.17718546222459683371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0367e658e8c859f0987ae997cd4f88a60e3020a2f26e8f36b3e4fcd483251a
Date: Thu, 30 Jul 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785373233
