Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317DF233723
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784326714; cv=none; b=iDKQ/6lZQ2rFNWsMwJeWKFWmxgvc2jck1tjnb7y4ABsJ0ZhddPqYolJe8zCnEdiPaz4UNchkZr/iMVPHBm3OT5lJgeMYX5uh1aVq9e4eXUl3skgCXMEul7AALVnjSz2z9DoXTTw9sPSPhmioFaTVPHNKHRvD9rz7AB2ph6NZCvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784326714; c=relaxed/simple;
	bh=iSBWdaCYzczkWJlyqIEffeyPDlWwUiexz+FKA9AdN80=;
	h=To:Subject:From:Message-Id:Date; b=VQMnA5emgXfrVarNyV9sYXIlFzHiV36aT3W4BeQfDiNu2XjU7JElie0PCPXWAd5TyY6M3DEGfa/KjWgo3Q1vknYaPheCDmOIEmz1DOWisbN+ja5GRGKZzoNJdvZe5P2a7aH1kS5Ak4y/z5jwXC6TgyaIY+cfhJWA759iPtHi89Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6rmpq35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6rmpq35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0763C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784326713;
	bh=iSBWdaCYzczkWJlyqIEffeyPDlWwUiexz+FKA9AdN80=;
	h=To:Subject:From:Date:From;
	b=O6rmpq356azTwOy/foXREwSbv3vso+2liMjRfw5kMsu8k4URW8o/txP8MvLwzHvCP
	 3us80q/ZSnjzqr6YNnm03hz3CC6z9stgkiBJUZAFtpNNmJgcrMYrHV3JSl2n64DUl/
	 0Q/Zlqm6vKnW/6IrXxsvMuvyIS8kV4eeRGZYjbOOWgw5HBDy6PoWFHInpMPkEcOMDK
	 OXFXmBj7ImnIGXmbjPQRVCahKnY6ITMO6fDTFpx+2OO7+6CXoT0T6VmhSfSgv20S0E
	 iczKLWMMkgThtARTxS+1kbHzp8ReF0MMXI7LFJN9da47aa8bSESll22nHLldnvV68N
	 61LqazmHDf1BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9014C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432671368.1205.15496872832478773763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4af4d696da3c28c56b9f07513aa02f76c7125132ec59f42db1c6ef944461a1
Date: Fri, 17 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784326713
