Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC17136338
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730907954; cv=none; b=uwOOWZD1u98bogP7fbG+fAtCPou6TPFzbD5yUBrgSkT5xVX+q9EGLbUEMCkzu82wbbwckVRPw/6X1bQMj5NrGu0lhW/cryi+X3x/6Uf52KQvBF7b8D2xDJDiBjGxuLR9lp4b/a2SXwLd9ahP0bknsm7Xg4CEfEh2+7tQoBX87QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730907954; c=relaxed/simple;
	bh=89pdPgLKT18Jb7U28KWKcZbTaWORro+isN6H9wtEu2c=;
	h=To:Subject:From:Message-Id:Date; b=NtaVY+0zaJSv+dTic3/LSJzuDVh2KYq3y33YRgndB4PI45VyXtwCVVEvjBKS1swRDRQ+4Is8BNSPBKvABk21z70VCN+8MsC4zBHk8xEHAOdYW5BguinQZILcEKXsPW1i5VSTCgbc2r/hpVSSixSintWqAKMoTQ9HepwNb1SE6a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ug0Dv3iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ug0Dv3iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F9FC4CED6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730907953;
	bh=89pdPgLKT18Jb7U28KWKcZbTaWORro+isN6H9wtEu2c=;
	h=To:Subject:From:Date:From;
	b=Ug0Dv3iwVFtx+4VoolhbU9TRoI/RBV5tS5rbLAO2plEAFyYM+xjkj2tKmoJK4j3un
	 HBEju7u+zH4nT6l80EtmL5ZaEgKa4hdUMS2hc6MEmQZpBzejzqd0oH/Dvlw07yZcFE
	 9RACZR6EwVDFziTEs1YmsSckqES0FfWcCxu7vpsOybgRIV25ftzJU64QUANRm/hjBy
	 0jYHhPPmWS5tvN+HiMk0B56DifdKMP3fyBbXV9zb0xIMqQUCHGi/zCEMcBKoIwg6V/
	 tTTJTLbUKRjsp0H1SGmkZTbVw55Fx9SlSr+pakG2y4Buoa+QpZlMHLw8Dfq73h5hPa
	 Zbn21QNZktnpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A31D59F40
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173090795360.8027.16550669324632167209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f25aaa963a922ff14974f9fee896844465c31c18e842f0fecb9a3f0d9bb9202
Date: Wed, 06 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730907953
