Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1AC1DE8BB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782808714; cv=none; b=lGtuKab/WqJOCsWymBr0zaq2e2creox4O9EZyFJ+kQwNaZtk/W4O6zykZI+3r5fzq66zhPUkZQxn+aJFHL889qHOw/7se4YeYosz3poNINPoSifvOAavDThNONpcQEOfQeGKSIP6g9LKjmemWsajGuPnex7I48TqD2h19X/NJSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782808714; c=relaxed/simple;
	bh=ukTFZIvVKvQr5YaZd9DNg8lfh3TyD0R+0PI/ndVjX64=;
	h=To:Subject:From:Message-Id:Date; b=qhSnhcAqQosLBADfS19b+/2A6ozWkM2l5ELvPwBOUdnVSh0F5nfQ6MMftSsyrtzg0K6iqA3fXKFyvN0XVnawz0j3D9CVmDRVOM/vkAC44EzcNkE8rNHZo2iysTFdwuEq5kqWaS/Ckk/NSck1kiCfp+Ui22BfNcXvtEICI4cmibk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trfr1bS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trfr1bS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14C6C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782808713;
	bh=ukTFZIvVKvQr5YaZd9DNg8lfh3TyD0R+0PI/ndVjX64=;
	h=To:Subject:From:Date:From;
	b=trfr1bS32fpfc+Bkv4EuJJU3hSYOQvE9O5e06NM82Lx4H/PuHpigbNbdQH85sTkIC
	 fB3yn5qB5sz0CBq2XlaVJ7VXloKnptLwZGCfZRQispfHVTTPBx7oZHw3YZETY0WJC/
	 xZFtn9AdubtdRd1QVjDAQx+yE+EKkq3t6T1B/+KalWX74LigW+EslG74nGGDiBuk8w
	 GxCtWSkK3mOAE5LFHlcLrKDECHPjK9NeLgQyl0R7FK3DHC2b7ufoWn3DrnGrB8Tv1n
	 lTpVQe14RrIIGJ2LKtxhqxz9DzTfDSMjHQnNXUT2Fcc9DUEDPJzM9RChmlcqU1zytI
	 ukWMWNs1j7eJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E7C43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280871367.22220.9737749560329694895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f67eb8ea677e0e1512c39db23e866715d7743933cc2f09563b631736d232956
Date: Tue, 30 Jun 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782808713
