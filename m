Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB21289E08
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755833395; cv=none; b=WwL/dS1RJSOt84UN8ggbCUA+s2u41uYIDAiuhuQ6at4nd8dzNwxDBZIN1GbH4VvYRvTiXVZ20B+CGwq4mzLNZXdCJvl64w2Z+T8eeB4/SWYfuP9XM/GSHoBx1/5Iq6sIFj7qCiLNsQoYjmYWq4qvPnQVorwU5u/JrymxWwa3BX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755833395; c=relaxed/simple;
	bh=7+jLsu0RwOc716mg5bArWhbwCgqUXGudTdp75eLyg9U=;
	h=To:Subject:From:Message-Id:Date; b=WC6tISXbC06EwA57VOsSi3Ffi/QvBCl0eR/M1F7n0kmWelc50d1AywGMJb9whdOMLt+4bHA/f1QQn2Hl2qiT9DGaza+v/h3OOvJPnfx9Ia0WCFItE4onhZcGd/plmjNZoOCqgi4mTI8vjOXDsrTQg9n87d2UGFScboCc/kbj/nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ux8n5qi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ux8n5qi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A053EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755833393;
	bh=7+jLsu0RwOc716mg5bArWhbwCgqUXGudTdp75eLyg9U=;
	h=To:Subject:From:Date:From;
	b=Ux8n5qi6o9JR5F8W+AuMKcmmExRLKWTacuA53ywwND8KfFZ6xaQJjvH8lsPLpiKp4
	 ToNn5ALoHZTNqgRLv4fT9D6fccoO6KwUwMtFPq1jDL1VVH+s5xQXvv/HkwqUpIGnWf
	 5xNLkc5wQu0wDyKcRZZ6m3vy5W3qcsvpwY4WafNCGarlE9NvDaMv1DIpXRCODbsC1S
	 cXDNYrFefs053r7/FuJk19YMfBRTede7R21ELWpPvzKrHpBjQ/zvRHBc8Alw4qA7GE
	 9voRiNDVRKukENd9wlWt9FGrCGVFtLsRS1M71TtywJumq0/LBE4zrAKrUcT5SmIk+6
	 AHn+mkZpKSKuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912A3CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583339357.24488.17140028916621400629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b25b0b1363862e5e2989559c2ca60997207827244078f6fa092e43ad64817b
Date: Fri, 22 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755833393
