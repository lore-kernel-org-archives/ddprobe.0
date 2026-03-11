Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6C7253B42
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773219294; cv=none; b=ER9wPATahKRu7ZWxXSW9d5vGeowAr99TF+2wNFfr79ImCCumKH9OOzLc9xdSD727hbsh8f8PU45ctNCXENG6M4wYV0zRVqEihLK26dxPQMsWvNy6l2Ftu4cse5zeolxR7kEFq1AKnrOAIfq8zBWjdn4vDt2OhIck47zBW6S47hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773219294; c=relaxed/simple;
	bh=/xbHy6mnSiTVc7k9+Htn/Vu0j21E4UfluKF2SB2KUhk=;
	h=To:Subject:From:Message-Id:Date; b=loxAnziFb12VPPiveVebDASxxt6cR5T27IXy7Pi9IW+7KohSFeFuAy+tHICxZ4MSD4mIqcVc9V6SbzeWNTteeXnggrGIR2cdCHxQHdIT2IxnyXcoNn3QqtAF0CeNeF9vYVMPGTSw4s7BbhBdqk1S11+dHquXl0Vbg1IPeq0ngVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wr5Z051I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wr5Z051I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8EAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773219293;
	bh=/xbHy6mnSiTVc7k9+Htn/Vu0j21E4UfluKF2SB2KUhk=;
	h=To:Subject:From:Date:From;
	b=Wr5Z051I9sTKwIN5zfZ6fImGdea6ueyKlYbkgHz4UCJOfMO3FTZ5LQ6lNcarhfofE
	 bFVjoMwReEhH2n1e5DfUboX1tf/6pbZ+Yi9YdeqIeXJKaiAJFHMvvoIOZ7jJfgaIqN
	 ZGWYX0WWCcXKWGjeBCuyLnkV1srn61wHwSsmc3iuEHpXerquoyljFbAcxaoc3fBClA
	 e1fJXM/5Dice7Rk5ndF+jIQ8d493c8NhDypyByxeMV9mS0R8sXhjhFo2R1vgsP85+A
	 CqRcKZ9edCnQDm/5HZdRxrGcrhEGIqxPAoIyiwaA2cAoHNuyanZmeg4WrnEM56fBW3
	 Lj6+5T0gRiRBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90536FD065D
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321929358.10155.6735336264102072601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71677f0fa9ec22acde41064301dee1030eceece5a547c880034e056845026ac2
Date: Wed, 11 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773219293
