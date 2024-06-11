Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5038817B419
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718108903; cv=none; b=YXJz8m/xiKNH6zrGiXx1eJIt8Plczb8p+XpbUEHEFmhnWfNWAGRFn5MuImvXpgp79W1e0xQhM5sebAnS9E46Ar1yiwoTlLgU47jPvCteJbelgS5wIunn1SQn9hrOlHFqCAQAG4X6dbue2ZyJOB6KylRjqI+PW7c2fCH+pDnSMSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718108903; c=relaxed/simple;
	bh=1yhYi2IxMz4Gx/JWMRAXUN73swrOZu2WTVRVr1jCrS0=;
	h=To:Subject:From:Message-Id:Date; b=anHNjT6UjJnulOkJRHKCZ9v2BrqweUWvoh+O+vmmIdFPtXKxuo486CIsmNYv+4LOSe/1u9CXTL4ifL+ghzyCL7RpQzV0qeDfVLEx+5GBKF/AKCagucDRwTa2hGd9T5jbDmoitToduKfXMkDnZ2puEhlH+67hMWQ1aQ7kfFjXz6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8AXJ5fX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8AXJ5fX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC83AC3277B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718108902;
	bh=1yhYi2IxMz4Gx/JWMRAXUN73swrOZu2WTVRVr1jCrS0=;
	h=To:Subject:From:Date:From;
	b=Y8AXJ5fXVbJ9/bDIo16fdHWGZMyk3a34yRD0zms/CFjbI1CfncpRwTdL+xhaUYeYK
	 MiRrpFs305lpQQb/p48DfTDy7YtoCewEMntlDAeLaE58vsUu6gVaTIcwRFWz/oVSwd
	 KVstZVdZvVarYFIrO6atK7jOv9cUeoPkHVTrmWWYX7ZhNBlSwcGkjQVXvU6oxLkhdg
	 Y1wW+2nFSCGhVIYnzOijcRM1jjPGdRMxSSw4qbyElem50t7nn30wmWcL7ydWoS4n/b
	 8/o/tTxLr3lDIPm8pr5O4QBxkmajVV/8JMKL+rt3zrxGnLhPezmvOUlpQaBOxGBI5v
	 aaeXaHa6ElioA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E77C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810890281.13892.5002380787984086894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f5dc558199a791d04b176600f17eff7df285150c3339fa87a40de742955c4c
Date: Tue, 11 Jun 2024 12:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718108902
