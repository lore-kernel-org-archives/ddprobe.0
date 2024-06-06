Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B57153593
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717672043; cv=none; b=FRK7lisPnwDKvq5L28g5G0RWoV/AyqN1gWLQAtnlfesmgnxAtg3WJ+WRLnTjLznlax70kqtRHmyWLnHDXNb3L3OBNr83hlHgjCBZCXvjKUBSKKd7fISDtpaL3cLN6YD5KtuJkP00reTKg9h/F3U3G3eL6XadzFfBIKp/IOYTrMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717672043; c=relaxed/simple;
	bh=HIcj7hi/MUJ2Ujhi2suxqnRBQez4CiIw3VVvMP/IYbc=;
	h=To:Subject:From:Message-Id:Date; b=diBZX50pD07GoAcebTr+DI8TEHPXFZp9hHHvDwXd7LysLBiLXKtzdBAvl7sHKqZRSR2lLv030JKf/UU6EOPpXunoeUrP4u1dWlUxYd4p4ytpom15jxuXDjfqSaS01XCxT2lXORwHhyW7LP0ewxXzOqdMGXKLwXfGgWv3y2vflAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3PxGbQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3PxGbQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E217DC3277B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717672042;
	bh=HIcj7hi/MUJ2Ujhi2suxqnRBQez4CiIw3VVvMP/IYbc=;
	h=To:Subject:From:Date:From;
	b=E3PxGbQi/y7VEvJ8lo8aPpFCRDYoFvnqgWYiNtnYnzRNsYwULZAnzMVXQKgMCz375
	 afCZb2i8IzBiAuV9XAvS3P5kn+7S6z/b0a8EygSWTQkaOIfFSl32ey+lBeDEmUkis/
	 Y4iYwnvYIXDoY01YWHi8TxDpUhvnVAkb/SedCGFIGW7b27azXU9xVJ49SBghV1Uxwm
	 wxRnhDnZf78dXdpP6ZE9wEtGqjEaXg1ieWJaHb1DnKB8Q8Vu7RKgrcDwATjRtGCEq+
	 FIYsuCMvxZt17czGbP540c++KOniOemQhEyHMoBEwjQAwWr/HHXd3PO2OveF5ls+cy
	 ImsuzA7vRJhLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDAB8C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767204279.31779.227025691484759474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a397b85428e193daa2d456e27ac9ed74c8f1f6860e959bbd27b3547d5ebab703
Date: Thu, 06 Jun 2024 11:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717672042
