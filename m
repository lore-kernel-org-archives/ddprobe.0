Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDC812E7E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 17:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718558303; cv=none; b=ECHoD6pbPFewEaRcsdI2pcO41wPYn7E+oNfaqCK+LKuDpHtIY7k061907fL4sPV57vnrWpf3fZXlkkuGZf53ZmCnXXL0Z7d12TRlHzl0UkGX3aSoMkmfJEBzNdVMeZrnsgEW0RlHL79iKAGeG6f68Ai8X2mth5+CWeuP3FWRnwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718558303; c=relaxed/simple;
	bh=m2zGC54OCqf4SXLCGTQFNPIgwzJhOnFugWbkYfi1Yso=;
	h=To:Subject:From:Message-Id:Date; b=Z032MoomulO4olES4usgcbAv95RqxCQ7+kBus3tzoqV7JqsfnQ2dc7wA7nhywiXr0ml4vUOn4+Xdi6jYWwI10NQKX15QTr9qiWAxNywq4LEu1Z9mVPvbguzC+RjPDEC1AfxtF8Q0kos7wiXFkbar1IPTgrVnjCWXnIuQ2I/gyaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDt63Eb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDt63Eb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE00C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 17:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718558302;
	bh=m2zGC54OCqf4SXLCGTQFNPIgwzJhOnFugWbkYfi1Yso=;
	h=To:Subject:From:Date:From;
	b=MDt63Eb/obbDWJSZeUHBYKSfDSvXEk1skpuEUDHe89+WT3nMhaTuUJpgcEHhkOUO1
	 Mi8aYWBJC02afzpj4pqSpYFPG2zGlMybpoHSp/C13L23RHxgVzs6bUfYe66hPgdErM
	 072he66iHFguh43noYPztLyNRSBYiT6Xv3sF2cKOeZQG4O5cL0o9KDlEiKp2MoKm61
	 +ejgQL49Mwfj6fQ44RHTgiFVNItbD0VQerVvXc73nVODltQfQUcMM/REjYDxSto15/
	 pPjM/RSrA6meElOGT1m6egykYXedaXzNz1ItTsqxLNik4vj0IrzH4a3/dGq3bY5W24
	 A8mwdqn83Z3gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DC0C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 17:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855830278.29095.16690108201010067354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2135392638fa2d66a4d1d63fa31d6579f31e03208c674031a3a5c852cf20120a
Date: Sun, 16 Jun 2024 17:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718558302
