Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366111F2BAE
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747166994; cv=none; b=FtVuXVAO3xx2ZeyRLJ8tBeXdFrZ+hmQX7jnsjKKWg+ePZ/cVDbAGULfnFp9iqfCRSImN+7mEp960ofiklGrFkdQpxW1cTPUcoTuh+S1gutReQSyKMXgXJNXq4QNrl7qEjcdNIBiveOuJtOViWcNXWSPYAuTD26JbWY8Q2cfy/g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747166994; c=relaxed/simple;
	bh=LR1VKhPu/vjeI3/bvfKMWFn7PU1a+u/80+OpV+Wj560=;
	h=To:Subject:From:Message-Id:Date; b=s35zKidGgsKc1xu4BOhWSvpcXG5cEciEeqLE7A5ygYbkXZC9qDs4XuWB9le8DcPmadTDz2f85ITrYXa2Qx3Le0aMMPqW4hkuPQ2J+2Ggg77yEdRMubcbQRjJso437Epq1VLwHWuj51fNDX4mix5lwJLx6TNQf9F72VO0yiY43UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da/AUb92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Da/AUb92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0789C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747166993;
	bh=LR1VKhPu/vjeI3/bvfKMWFn7PU1a+u/80+OpV+Wj560=;
	h=To:Subject:From:Date:From;
	b=Da/AUb92Ka/4EbsEOFW6rZUOToCX5LtULCxAUJgJwLRWRDNRBEdQkesKozYxaZeYC
	 yr56L29NcCXtN+tL7FIMZoyYc1eHJnltAX3cN27N31Je8XYKOGGc1sbzHeQzIVJ7UT
	 DgEU2UCxenYrgD6SLtx0J8sAERR6i1+8Q3icHfVirzfP7lie174QQY4XxTkYa9d6ER
	 QDiWX5LSnU1RZzdowgy5Y55kzT2DwgmtF8IGJLKSlsOBXUEjnerqH72IAYdd7cCUSL
	 GEPwzYLzJ1rkRlGBFzXz/iRa09PVBKzjzixgWee/gFNqJo9iJpiiTgLGsag73+b678
	 mee1gnhPBQEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB70C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716699357.10825.7752046638616328075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef7d87ac44ec4959a27d34b6d5170b29a7f63679bcfd76ca92130387f0bcee3
Date: Tue, 13 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747166993
