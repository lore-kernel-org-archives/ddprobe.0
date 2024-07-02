Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DC716631A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719944123; cv=none; b=eTuelv5ujGQXwELICIGOPEkgi2HTREELdnly7YR3Q9BdO0IJG7k39gCAB4aED+cW20ChA5jBSwHTX5+LoC0F7H6l+2e5Iuicajvipm2YdmFn8a0tZ9kQCqghZMKpXfbY/KLz0L+4xnqtFTywcNI6tjdESAwRxm8MoKJDCeHmVN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719944123; c=relaxed/simple;
	bh=5/NFS7ZAQJ+4Um9MAb5w0cAt/dEv30mg34nBaktMpRs=;
	h=To:Subject:From:Message-Id:Date; b=qUlLxoXDFa/Rtneq94IhRP8om1I0wfliNXEBx4YRmtvsQwTraVNtTrtVplkm7gx1V7bLKNGXBXxker3iiy1VAxqXKhEB6VcZDleHeiCBaTkZYrwJuD/B9pMhnCI35pVz2C+pYO9gv9pR6MVcPhiiH4XZCX4Ph26MID12prdxfrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3JgXiMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3JgXiMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1ACC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719944122;
	bh=5/NFS7ZAQJ+4Um9MAb5w0cAt/dEv30mg34nBaktMpRs=;
	h=To:Subject:From:Date:From;
	b=X3JgXiMU/wORYG6YukxAzj2ElO/lucbcedOxoZD+9ad9PIos9kVHLOo/zPvcF/MWR
	 u0IDKnR3lGmhzwvybMDwI9wMnIphssm/aP1bFyKfcV/ezZQ3UwHXS+zBJ6jPE4n7hf
	 n4fzdIYv+LKMporJbB/l96AJYEOU55MiGa0JfzvR3lKJyfu9mst7XYAFw5g0zP3ij+
	 Z2h6rD4w2lMof68+xFi9H6n0Tnb2qw6hXEwTPYTVmSy1QoBW6Vxb+gljR1/hME8XLn
	 g9bwyZBSNmuBs4n2vJb0cEsQuZ4CI+JNdtE4bAd8++CDqFj1+OyLa4eR0TEPA5BmCH
	 8kdFcN8TId2uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C804AC3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994412281.23265.12269984951909871154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3befda203bc49c20f68f5af22a1b1f468c7020870511c7ed168fd9e97288ed8b
Date: Tue, 02 Jul 2024 18:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719944122
