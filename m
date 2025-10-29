Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C85928643C
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761775794; cv=none; b=at7oGabyn/MTr7S2Zf150beQtvAVtRobPAcznpktdEkjUt7FZzedMT8u34oZw0LCiVNKKEJXdJkLI9UoMxLi1P4tBs2BA6d8NAYf6PJciQSwOiaoT21GxrsHSgx2nbxj3ilT4lw9yQ6qdXpGDrZ4CAWkIe186ksYUi7eP3W+/mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761775794; c=relaxed/simple;
	bh=uZvBs6rArxnar/K3qFtycjK8vhDRGsMC7PM6wDbE8Pg=;
	h=To:Subject:From:Message-Id:Date; b=fn1K6G4O7gBNRoOdJZe22MTe0e1Xha2llCfAE7+itvHvFdhS7rDq8fVph3xdud4w6dcj+6K404MEVKtRNe8lz5tuS2xnturo8/U0yN0VtNTY+68UlC3h2OrvTZroB1wamLECbMZG0ElmxDgJdrEarlaya4VI/FMgwfo+S0Owx4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF+XZcLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF+XZcLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C0EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761775793;
	bh=uZvBs6rArxnar/K3qFtycjK8vhDRGsMC7PM6wDbE8Pg=;
	h=To:Subject:From:Date:From;
	b=NF+XZcLBNZyLtMGebmMhRVgcwIszYpFODTxUzpgFUQlikCgjEjS0Omy8UVUmwD4po
	 SJIdkChzHOMb3DqSWozsj1WFUh/QgoH1RBtMbrDX/XRfqCXi6kpJoYlaRAM9kclwn2
	 ilpT4FAOkCoPwFk95zXr6nxtMayy5g4VnGfubMJ/qhF4pQieH9UrosETPqDLOJiYZR
	 i4d6+cRC/ByzdD8A3gGeee7DjUWGMSH0q13IZPvNpefTUokpH3L/JVkaB9CXxJG9/N
	 hVT5Tq3SY45NDhix6zJe3+AOT9POXxoAy2BTrBvl3yitakUnR+OsAzoZH1mZNvmsBf
	 mNFSwAbX2GhSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE58CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177579358.19522.10068389296864274475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2612893c8724b9a85c512a3abce64fd26d733a3b599aafa6f7fbbf97938efc06
Date: Wed, 29 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761775793
