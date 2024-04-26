Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1697C17CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714096343; cv=none; b=hHrZ2P2HQEAItId8EgPjVx2ENTxEr/vC0I9tgAC8JnrkMYjugTIEDz2luw2q1qc+2vZrZnt8D3MTvn+lNBGf9KjjAvJ6rOHLWfyJu7VLjNtTvUMWVswb+TNGyFmtXmPAoZpqH3wdXf5rKh1+8ds9ATW8syZHGJR76uH50CCzP3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714096343; c=relaxed/simple;
	bh=0GA1mpJoKMP6OsYUuBcnSHYIdi9J2Nmr0OR4m9Bagpo=;
	h=To:Subject:From:Message-Id:Date; b=j+DeOv4Fd4ck/uml3DJgK/NLDnBNMkoTNTLNtmcLhqR2V3CYfjmRh79urTiHAYGSMgEXhGkr/iUvRlB02aJjkJmwqNbxDSea9S3hbuNgvc+4ImBvnibDtMlMNHUOvh0PAvvCC7q6mgybJg7hYWAVtExAaFNdefvwuHz0m2q3orw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnV0BCIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnV0BCIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C0FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714096342;
	bh=0GA1mpJoKMP6OsYUuBcnSHYIdi9J2Nmr0OR4m9Bagpo=;
	h=To:Subject:From:Date:From;
	b=AnV0BCIkSbtKXg1a1xU/FY6yrZ7w013Yh1LEACmQeXTzUBXOYYLnlxHZPa5pu0zt3
	 P5SrhN1aN0zsyZtkYtExsRRfKGGH8FiYM88hMFO/SXfdgn7GucA0DtX7jaYKexQ5GP
	 P8bfbKPiF5tArsuh7Of3lGAkc4EMfIYbH6y4RCozX1iOQCcFK7+Y81TjVQdrMflamT
	 8A+1ghC4gJ56g/BrATtljPaEN/5OO6okT9yItkt89X/zdIQKdpXSE/0Hex18FCPkI/
	 86bNh3wYuB2PIHuAK4t+orESOe+7nrOe8UmJDHm5z88nHqgwbgHhQVoE53t9sCtGod
	 tEiE00WhCCJhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E47C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171409634277.21113.5001607759379152671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4fb02998494853170adcc73108bbf75c079ae31a063cabf55c41a0d364d02a2
Date: Fri, 26 Apr 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714096342
