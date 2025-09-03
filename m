Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223DD1DA60F
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756895394; cv=none; b=NZiTsgJ0tFe4VPldal4YVRccgMnrZ+IKUYRKFxtF70l2qcu/wSS0IlSEZRB4wR9+5a0oQInwzphy5aUAhmlcg9KxsMM7lgGLKMImoNL3dC1OnpnRCs6Cuzy5InKIJa8ucJGg9qKiLcg3836P02ZmpWz3X/2cogfZ2AmDb7pzVOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756895394; c=relaxed/simple;
	bh=vNs7TwNEkaQkyfg6/DqgRe1kOO5qwcv7iDN56sIKDQM=;
	h=To:Subject:From:Message-Id:Date; b=sMCFzGUX44KYf6yCHc/pFiTJMmDye2gaNNPr6/aETzLz10cJTLVauMqMdctDslSkP8JeQh2zAfoEAB0w2LT2/XJ3aipwZkKryRjcOU0YlOOxwbwcplX9TCNSi4A9joSPMgd/XxZk8xHKEtFNDPph7AccgWGEvgKgz++4r9vYZxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZagJiZry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZagJiZry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A769FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756895393;
	bh=vNs7TwNEkaQkyfg6/DqgRe1kOO5qwcv7iDN56sIKDQM=;
	h=To:Subject:From:Date:From;
	b=ZagJiZryHF8RqyjhIhUue7kteOCIrY9QRvzmDnLVs4zNFAFGX9hN9sZXIGjPN7hMe
	 4OA3HSSQtyftN2RNPf6u/DxKQnexyKBdxj1ODSAXeYKgmVNKz/+DxcZRHHjMn3kffC
	 JvzRWg+uW/rcg29KTjKdRlmg3lOPpX/SEzCAgmih5QAg6zmv9Y34FtEjPFAYEcdzZp
	 vD1ewRVeHVo0ByW2ETju4Q4jiKf+33i0rZOnxRBcC/3tTLDpvhRIs7L/DEZAwTvdYC
	 L6AppWzinOOXpB6vAMD8WIEt0+Hlsf9VVLvxBIe3XTVZqDvkIeLDidlhE1gQFdyqiS
	 wrc4HVCp2RTMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9260FCA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689539358.12998.3614709416880663437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3f1fe5d5b05d56d85a348eb57c00d1442bda27cfc892b3a9c8badd1bdb28fd
Date: Wed, 03 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756895393
