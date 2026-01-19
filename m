Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034682DB782
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768818834; cv=none; b=mtstvhR7DnQTbq28t6SaVoqFogpydqvS84irMm6Po7rdjqmvU5eCBOu0qoo0vRfAeaN7bXdNcZOxCJPqjpfOVhthSbTGCsUzFBrPImut2GMvbPizla1FBWqvUX3R1Bk7H7AfE7BmU6So5l+Br4ayI1JNN4FVDQS8e3YZU7B9Bb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768818834; c=relaxed/simple;
	bh=sruKFimJq0mrMJRwD8wEz8ypoPCQo6xznyIHnnaGvjY=;
	h=To:Subject:From:Message-Id:Date; b=BXfuVEgt8+XXn+wjwKdLEnabwbO+a1nP4u49jCn9bdjPIUwsStn+0CWCI994dzYbE3BSunawosZxNdV4/KNcAdX3HG2uC1Yt0dCINbgnZG0ZeQg+Q8OT8S5Nf25g37KGXKW2wxCodBq7ANrC0W342u9DgvEcQZJXxRR/26FNEzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1cWquT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1cWquT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF0C19422
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768818833;
	bh=sruKFimJq0mrMJRwD8wEz8ypoPCQo6xznyIHnnaGvjY=;
	h=To:Subject:From:Date:From;
	b=g1cWquT9gko+ucETy7lMCuMg+GzpQ/PIePEIW02Ibrb6tyHoP/Y4XC4rkP7LXI2Vo
	 JPhiXfJ37VE955SYqQQuHaETYY/c3WnrqP66ORhrrm6fZ7Z3uK0b+o/BNk+h/GqcGK
	 dh+XI1YAIM/939WbbdaS2kg2FF/Vpkh9nH9ns+8d3/mYq4gYxnaiOZvqOz/1UxmEcv
	 YhwOn0MGnfe39CUJoDcW7R2RF56IoAajd6UFpf7gQo/Kg86ja8Y6EIfnJTcxtr/PM1
	 d2UKV6f31NQEErFaIpnapuBlQQESkXLodMDFO8TfR772rvcRMoMmvgfLz/enuoR2gq
	 PKGZoraFhELyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91219CA5FEC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881883358.24337.12995481184725006417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1e7d3b2ca7c565139d11aaf760d14d2d2a887c6d75a68646a27701047c2cf6
Date: Mon, 19 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768818833
