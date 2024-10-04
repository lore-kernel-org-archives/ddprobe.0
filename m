Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B589137903
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728041154; cv=none; b=Y7K9aQwP2HTSPvT9hl5fTb1eeuREGDLzh7UWF4uhmF9LLJ4p0vBXQ44Eq8vH87qKMO9oZbAOH3JzpNHXRIxg5KbezGgpMJ618tN73z+TYjXTrsELK/sqTk+cCAUGiJBoc5o8OJgAeXEcY/kn/iKT47K0bBAjkks06ndQlpn3Zfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728041154; c=relaxed/simple;
	bh=QcEYcl9+MJRJOiuWNcY2HMjA37uGC+HhnwvRu9n6LMU=;
	h=To:Subject:From:Message-Id:Date; b=i6D58OH4XU0SGjiI/HGD/LvHBtYqpR2RDyrwsHSbh3sz21B3sLJvNeMjjDQ9dBm3HwF252Alr1VrMHlyDNkyGZ3liuMMTG9fbX8z1z4bQi06/7VqUcHkxSVyktk7akI3huZw2Lja+veWQdOrA5enM2PwW79i4i6Uyv4liYmOgAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1tFJhO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1tFJhO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC294C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728041153;
	bh=QcEYcl9+MJRJOiuWNcY2HMjA37uGC+HhnwvRu9n6LMU=;
	h=To:Subject:From:Date:From;
	b=k1tFJhO5HT0AO9Q4wi3s6DLjMxctUmEBP5Da7WnTioMJGD2K13BAxu/+q2auG32ks
	 t4YS6hqzowGHCU57cKitebwclofp3Fp9ib8qfTUaSJJAlo71vd6nFchg02smappr3d
	 C99Tc3NH2/pAub5RezzH8l0eb4nuSpw6BKE+r/QvdqDxf/aI4I3KB2/ctivVcTBPKq
	 IUvc+rVgp2uGLkJR2h/x3C4drj2KHdxirH+V9cpvKpaV4LwcFtJhW1nFKpXRntXcFN
	 mSyCB5QkZwY6CaNALjQXUCs3Fz9OcRsMuD1cOE4kQFBB2sGjr5WxXTRtLmd2l0yO4I
	 CqMf5PCAyFsaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9479DCFA76B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804115359.14334.5496758532479937302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da63653df9a267bfd5a7564b178d0ed76849dd4a5abd62fc80894b280c9da16b
Date: Fri, 04 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728041153
