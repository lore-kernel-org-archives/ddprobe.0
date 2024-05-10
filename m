Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FCBBA41
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715355743; cv=none; b=L5/cLRA5gBAhk43nEpxRr8c6ItJ/mlF0Oss3TEUwriaXE9D1TEZsqhvD5OrxvTSo6kJ/nnbX+aNcqZjlxQQMhKHSe2zSybWHwrrEjZrmhlbby7sEhox0IuixTdWSI0N78zaqJjkvaMAIOFi+u1ms4nLqU5zHm7+e9ZSSpZ1LegU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715355743; c=relaxed/simple;
	bh=R3al7kBCmXkk9zKH5I1CUYJkj4i16X7uW7mDkpBrFHU=;
	h=To:Subject:From:Message-Id:Date; b=FIxhQUx69rB40L1NLZsT0TOla8SEzEj+hjW7JgIMi14dGgwUrZEBxsUBKVw+qhOrvdCNvcEOME6DvCT5YBk0QQP9bcUtsBZHzLt7yOQknevfATsZGySJiGZPg9Y2PJV+BT9zkE1o1wzD1/O1u8++7EGQ1c+P+oW5c4L3vDTeAh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDgW+wZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDgW+wZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D11C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715355742;
	bh=R3al7kBCmXkk9zKH5I1CUYJkj4i16X7uW7mDkpBrFHU=;
	h=To:Subject:From:Date:From;
	b=EDgW+wZu7tPf5mjQ92tuuj+B5jgE0d3iTbCphlUkiggHbWLXcf4DEM/BrGPMYXKL9
	 i8QXprB6+uZlrpZbi6rcFKQekUQgNmaSEOZAyVZR9bonp/CCcY4ykvIq2uvkm+m/92
	 Kvbwai+k2sB/HcCuOOi/ZBRSdgp1ZU2zhw290j9KVgwUCu9UhuwctiKKEjzB+58FEY
	 rvKMTjGw43Wgz1F/V+EKejV8hEw3aEhJ8xNzlQMFQfkfhodUb0FBJwbDGKYgPimSHJ
	 MYH8XqRteFTNwhdd6d7jiryuxJsFmhQblWgN+PBeMHPMrM2XwBkr7rOC275NgmlP1J
	 +N45apcBToQrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1BCFC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535574282.3641.17849873237819486059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2497e2f05f0e40d34c3b1c7143131a02444947a51737286ba0550f9045072198
Date: Fri, 10 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715355742
