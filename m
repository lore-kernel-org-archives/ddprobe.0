Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9A4468C28
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785851434; cv=none; b=bOCJhCBXn1tRfB5OdAQnsnEIufdA2slAq+6g6RcCrEI6u773vFudIkIKhcdBP9UDqXcR1w3S1zzldB6g0TrEIPc7EvKiAJBUoLLOVCDOs6du4D3PAUoWeohybyp5AxHCz31DZDHyMEbU6l+BKulbCWqSVfdexdA11IGrleElAOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785851434; c=relaxed/simple;
	bh=KCqHyBUAh88dtv63MPl2jkeFqzJEV2L1bmBL9OWH0ug=;
	h=To:Subject:From:Message-Id:Date; b=PK90uElgyPv/rLOI8Si1UI4HuCqvD3HerfH8hpGhOgh/QmxzRQT9zmP68/ktg6GRYnCegGumro5P7DjE3se984DgPQhPXpPozuCwRpOoOyFSsFH6ramFlqYo8J2pUEq7Lu48cbvhcc8zYi8z0O5SvMlOQjDZaYctav3Uj7KXU04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL+I4ose; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL+I4ose"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8F8C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785851433;
	bh=KCqHyBUAh88dtv63MPl2jkeFqzJEV2L1bmBL9OWH0ug=;
	h=To:Subject:From:Date:From;
	b=NL+I4oseJl9wG3RrsiBVz3ilQC6Oyd5I14wdFJbcE/bZQR7MMSmfoD4BgoUY214hQ
	 RI/xcC5Wteib8Uv/ixW+PVcW672eHFzmUPuG1yLtkQB58uJBagTj8BzHEJKkbXIUs4
	 hVclWxYPOfLMFG5CuCxMB94qo0YasnQhZ+LoqWSz1QF6jeBaKeY8BityOKjCSQiE6g
	 sA/HNrO20mYltc6OUbV9DLFQ1U3JPCehff99IkpmxuHAMoRulJ8hc7tUUAFGMJCuCl
	 0tvKNqs+PDUeTy4d3zp0T5krmEsxO4rOuhy14WOF/jKVpvdqhR7qDHFeh02nKyFc9B
	 eTrMcobrGFLlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8853C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585143369.18639.4606149099649609829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf3fe41c8f0549662ad5be8d9157c5c2db09040b83742d9a4b04c6fbab6fdf1
Date: Tue, 04 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785851433
