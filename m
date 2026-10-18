Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428B7483BE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792323034; cv=none; b=rSP4hLh4UtgVlbAbOtWkufLDk1rqrCquHGA3pEOlmrOp5WNilJIoeE8g+8/RMpYhd11wLoyqc3f5qMAvZw5np9SNs+K/Db9RRgUDvr/hi5QaN40VBCDiba6bz+0KMtwRLRHYfAIUvpI3kbHtogkcvIyLu2cvjC4m7V9ki21bKms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792323034; c=relaxed/simple;
	bh=iqQPW/yPPaafsHe7y7sSbeIPQbaTYOjqVv3RZ/jpHPQ=;
	h=To:Subject:From:Message-Id:Date; b=oHDeE4KMZcbwh8UPDFULzG5romSbSyvLRnqviUg6FMl5Z8JRUg5muT2s6eYqN4UxXu71rNJCX5XdclN3IeM4Zt4cjkCwwiOmJ/tdSPJxWzWRL028tvwK2BP2P7U6K4zIIe/H8lTaiJ+gNaocGrM6mBtzNz4Cs2GHtFeQJj/HCKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXsvFaxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXsvFaxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE57C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792323033;
	bh=iqQPW/yPPaafsHe7y7sSbeIPQbaTYOjqVv3RZ/jpHPQ=;
	h=To:Subject:From:Date:From;
	b=KXsvFaxxnqVgRd3mrKTI0CMsnKoby69u7ME3TLyr4+FK3JyNpak2S3QUzfWFSBTLp
	 nY8OKLnQzv9Wg375l81jsEjP2r2wjQA11fX7VazNGM33snXCNWhUvBlE6yVZTzMU29
	 cZSA+rXo7TBgyWAwHLvl02HIsZnm92uFX0rs4rMpjIc/xN+58+HQf0skXUyAexZ5hQ
	 6DYy78fgwRL4ZAdrruBN6YUh13jxeEK0i9AbkTzR8j/hphX9zyppnWAvNr0YTSalxU
	 bFa5LYvVOo4HHBAA5TR2ZPRxVPfsn4wC00Gc/35MIU33p5eJfBQaqXkly+dicd5va3
	 sB3156Fs+Mq/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92CACCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232303368.7585.5256634307671545088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e45fe2fd640e264de14b4b464c81bba587c6d4da43d459a786a5f4532ee3a0
Date: Sun, 18 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792323033
