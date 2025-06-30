Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEE14C6C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751318394; cv=none; b=BzF3H6Nrw6QT+PxXH7U04l3+YuYSQ0S9o7+vSmZ7/O9VCL9OXi00Dxv/lxfpG2SnAppDPcOdqj1wYdV+Ksye+c1bf4HietlEWgnkZXaL6Kw/uPQ1bK3kPYNM+BwqXB+4+1fK2ffDDefhC8MOgHsc0oW1jHL885JL6TUmjeO7T48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751318394; c=relaxed/simple;
	bh=arPFxZQFi1xTjU+PgeZLT++Vi1BRJK7s2rKikCsRVxo=;
	h=To:Subject:From:Message-Id:Date; b=gjXCKvoXy4ixek99erZ3F0K9d6RepHvRVNBJDa8t78UzaFRxbGC0wTu7gO/9qDbctMsWw/JZ6/qq0Wiuj31Npwd3fQyntpQvBSnraUStMUhXhPIuFFrbiy65hDcUFjYKfsghp8Jnly2NLpcXkjZ4zogivWFYY2mN8cVvokjqDkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Saz2MZnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Saz2MZnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A49C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751318393;
	bh=arPFxZQFi1xTjU+PgeZLT++Vi1BRJK7s2rKikCsRVxo=;
	h=To:Subject:From:Date:From;
	b=Saz2MZnvNcy9ykXKcY7Vqyk+yDSNiCyHHYnfm3zdIqa0EFiUdCW2AT8N8KSuFieNA
	 lSOCLdEDqR7vUwCwW4mPvFTW8wczuZY0fv0WPmMjVP1c2xNIiMSYwPpbL0atQ+e0O+
	 VXXTneEB+apvvWgca3CWtQa8xaakYLJNjBE8uiov/aGl70gCWkQIIrxxHZNrNYMRSq
	 eEXDveLH+kUsq1DQcpxHyty7n0P3V97/fyzRo2UCbbYRk+pYjNV23S9MB3JUSMrl7W
	 Ljhv2/uGTpkUR22KvaNpSdkxr3GcociJGglEEvFh6xbOxvxlpgIp9OeQFY1m9aERZL
	 EE5Y+fAFQ5/cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F2C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131839357.31151.7091042643201865755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9456a5c22f0fcfc2cb688192864e7560724a9a09ab159dd53b50b5aa9e584b
Date: Mon, 30 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751318393
