Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E29F192B75
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747803594; cv=none; b=mx97hE9wFW/54JYQG4mUE76UIj1wYkym8rdpX4qJM3x2H+OnW7p7xs6BMQS/MZzSGo9srzf7cLE4ea6mgCRigyRVVfEZ6V2MgCUxzHBa42s3ZBxNn5sM4cy8baHHY+PKnASSUNAwzr0L5GJobnVipH+vypljTzA5nQSlJt/UYb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747803594; c=relaxed/simple;
	bh=EDjurgWZKH1KoMKGeoOklwicV5NE1762y7AUILMlWgg=;
	h=To:Subject:From:Message-Id:Date; b=IeBUfwVMk9VYDc4Rsr50gYVXvIMdtGao6rFtdw9ZHneIqqi97GRE8o5FZt4yV1BoH7NuokLqaouNYgaBNrjlbfAvE8U1uIBCs5LekB1syK7ekrpaqXx+EKm5WwVoff/RiBEIMHzqQE9BbVgs49DIe6g3XplqphndsiMuAEHc9m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoXbh3Ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoXbh3Ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3924C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747803593;
	bh=EDjurgWZKH1KoMKGeoOklwicV5NE1762y7AUILMlWgg=;
	h=To:Subject:From:Date:From;
	b=GoXbh3Eep2PaYBRA9G4zbSAz7YpmUPQ0ch+gom6YayVSMjmL5sUSHgeDgcfYYgoNg
	 puxzGHdvTiKnV61chyjiuJf7TPPZhOZoGWskzu0bIv9aEBaUdLoFFEc/Lqgpn04Rnx
	 +koLanafIUpKTQQy5xpMVD1dFEYC9UoqKd3dwevZXRR5eiMb+zhUGT+LQ+eGr3MZ34
	 JirGIxx1NYkNamslo7XonwV6sKEIu3Zpe775lycDvk1pauCNe7qjjzQk14lSEI8IOt
	 WQg+hb+Jz06H7sH489lmpxG+0ooqaBjn7ZliZUh7ptdVY9Vou1o9KlZlLllrUGRyiU
	 lAPQ4uHt2vvbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7CC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780359357.19878.16997148059705072260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fab99e3624637abd69ee350939518aca24cea465c698c58e5f793d284da2180
Date: Wed, 21 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747803593
