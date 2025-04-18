Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DAD2868B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745010594; cv=none; b=mAixICwPDhR8j5XQ136GWMD9LKACt7KJzJZlNfP3RVBsfh6wi6TzMYXt39++sssZLwzidUBJM/8LUp0mPr7Cb9pAX1lh30/of3q92BEEB5NySqhpKd5uPcMLxhU9u3X+feNM8r4niY25ytgKd4heeqIIf3rgvvtxzKC8g8yAyOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745010594; c=relaxed/simple;
	bh=qobJaBK/18hxtU/SMQu2pGna1z3oGuIosZ4emm3k2j8=;
	h=To:Subject:From:Message-Id:Date; b=Bg/xcK/eMdNcuZV+wB1eWytyif2j80SVhogES2BkJN7pbDl9XCprWi+iZpK/HsI8x6Y3sYfPDB+L9I2wgcuE85LkOQDLt1kV8F7zdmqlCvBwqkoxbBOfMFIAXNGgvRaUwUGQyBjJfZsSCtk2wgEyk71hmFaU+JG+dZS+XBxGs7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYm3le9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYm3le9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BBEC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745010593;
	bh=qobJaBK/18hxtU/SMQu2pGna1z3oGuIosZ4emm3k2j8=;
	h=To:Subject:From:Date:From;
	b=DYm3le9wEQCgK+DR/nOxMzOK6p9x7h6NQcRaCBrO0jVbSBnFaK9vaInrtXxqr2Aai
	 RdAAQbb3yNLShNNGc/s2MY0xQJgz7Q9J67tzeWYY0eLGECetK7fJc29jmcxZQ+8ydR
	 QNumQ1sW2zBDbKVIpGKYQkssDlnBkouXS5xL7DweEAI6MFyKpsjaGQg8PhuQE+lsyI
	 KTopRDgz+fhV7UE05gfCwzYID0bUDqbP1AiOjttBfsttgzdz+4DyjaPabh6pTthJ0Z
	 ZiQ0ZEhd6JrAblucyS2daosRpzR+7qtqfgVCC2Yu3mVmrOgoySAzfCWYahV+0qlUiE
	 wUdge+mOviGmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E10C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501059362.8398.9778363637574232238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5dba5b8f3c22595068ee006072a695d046e253e53ba0271229571c41867d93
Date: Fri, 18 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745010593
