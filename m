Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2D12749D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762911594; cv=none; b=Yggn0r6D5T2NysFzjPEPZ+qm2/hVrfH5Uf/v63Pqd+Fxx56Z7EkUnDU5iJsb446WxRnsjYL3Z4KcJLkGwb0dcKsS5U9ABf1gOSW9FkgPqPCUbvnFiC9pZIPJqnXDYNa5eVh7SAbUzSN/n5r4fx3RGg7RGs8ou0AsYYD+/HxHLxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762911594; c=relaxed/simple;
	bh=RAZbzhEWIm1Qnfw4avdAOIhgQ7s358X8MzvfXdrRg5s=;
	h=To:Subject:From:Message-Id:Date; b=XsQ+XCWsKQPyTyV48rl5SayrHOxYMKdR/6LJMhDA4a0n8JlBmSWkJYvsu5JU/FjiYSyPkdFUvO8Xq9UbBp10fH0W59Pa+/eWtqbm5XC0uVubCM1sCTEROhdgqnXyZcAu/hNtRjCN5D1L+W1Viif2eVSzmt3XVUoERL6D3pFZjHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJ1FkiSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJ1FkiSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E25CC19423
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762911593;
	bh=RAZbzhEWIm1Qnfw4avdAOIhgQ7s358X8MzvfXdrRg5s=;
	h=To:Subject:From:Date:From;
	b=mJ1FkiSznC/JXniJCUYQXwUEY/jggkzjDHWPi789HaFULzvtKYEzzhf1VANsUNlQC
	 lFZaL2GiTvse9ATr4nubFyZ1W+zBTxNN9nDfAuOJJhh9ApWAFvHKmz9FWVlKPzxF0W
	 H08onwl+a24qJSlkUh4p7v9EaEFl0dgU9/plq/OZvy/UTmPR4VbhVBuKdW3oU9aBjk
	 r1496KyexxxXd+6hP8MDtx3e55z2frCesoqOozvk5RquV6fjk6sok5f+xU/XHtdfeI
	 iHp6dMKa9hcD3EiFD5cnWAS+10/GjNRK61h9v9qKqI1eymVNouoLh7aUJmSXWiQ8es
	 WsqzLesXFq3gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067ECCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291159358.20670.1985786428122274114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5c73090b05f08dcef186b4ee3d3b65df03a2196ce2b08b93344077a1be4800
Date: Wed, 12 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762911593
