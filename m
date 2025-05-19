Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AEB14F9FB
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747692594; cv=none; b=Itw0z3TtLipAhH1lmtbT/g4bXy/WRzrlqT2G0etSoTtuEdLT+igPs6q4tOBTb4taY0SanVx5Ce73eIBBcj1fiT/CFhjhxF33NDpVKtuPMhg8wqEw5EpgYKUsGmAI1937Gc40/velQjb2w4RSzsEoKWTAGOw51+D/hIP5PfscCi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747692594; c=relaxed/simple;
	bh=B7iV69BYA86Es/C+IA6VUUnM78r1VGRb5xZFNgaq0hw=;
	h=To:Subject:From:Message-Id:Date; b=kGQvB9m2nNT6HNXdqAWCoBfdjbaApW4PxoQvqqRvY8UCEM3c8vSx6QuM5mHx3DPyZBbM7CgeuuwWgNP9E0s7ha+0TuA3+HtgDuO8QQAkn+jXo7EqV5y/Hrd8YF7hOt3iLlUtqdJz4WttdxzKKQpCRGTW+8quqA/z4eCx8pQwJPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nP0+iByW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nP0+iByW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9542C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747692593;
	bh=B7iV69BYA86Es/C+IA6VUUnM78r1VGRb5xZFNgaq0hw=;
	h=To:Subject:From:Date:From;
	b=nP0+iByWJEWgrRsEsqSYf3TLbutTyRkgPx1rRpIDorLs7HD+OZD7RVoUXce1dPGWn
	 33AAE4lI0/GtrZqSXLnQ2/2xZ5a8yEkwBN8KCKTHfm9YEeExgUnblyzxvphZSxsYzZ
	 gF18WtlaY1b24Q0GT6RBLOgzMC2YUKVUdUwwEICDtBCRUtkyIZQlmjgoARCgUGl2gW
	 fos5XXFznSNgUkGKCir9/RjtTsTmmUSoX0zgTy/2DQev57rHKt1hJrQbDSTYpv8gdQ
	 1Omn7oKC8EQGzWul33hotWdncVTMJ3mEHLqFpDXN5z53l5PwGT0fRw3cCTIMAlizb4
	 CeJOBKNTR1PxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94113C3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769259357.20747.4802580480779708854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22b161fba5c63405ee0bcafcf600af836cb620682588fc62d84b65df1ec4521
Date: Mon, 19 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747692593
