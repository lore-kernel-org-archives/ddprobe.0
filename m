Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E2A1EB3D
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747052396; cv=none; b=tAcGSked5G0DLwfutDFekxOTEztLlxgs3hVamNUHYhuG8Qzua5y8FMPB1nS9PKrf5GdqZTXhuaAOydZx2Ezepa+Eg17/QC0MBPF6CO5bVzQ6mOprzDkza9Cv8nJ0neD8wDzkVb6U6aR2VShJcFdNoQdmOx2WOQ6c7lqjodaczaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747052396; c=relaxed/simple;
	bh=6H8So2brzA/eGpQvfIJihTtNf3KcAiCrbQ3K2rwUVac=;
	h=To:Subject:From:Message-Id:Date; b=lqHJjOKFtunbMN2awgLwYBUro4b+5riHhwP4aVzAxsrcRg0qNZGJdmup4w9IsVzarx3utRzPeZNWjJZvkYbXlGAJ+mhk9s5EvlPi28dHkDaR0UxykyCOyYjKq1tjYx6L//Z1/hOszx95cX8ho7buH3gYiD0kCltq0PoYfODesYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lneLxQEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lneLxQEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31FFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747052393;
	bh=6H8So2brzA/eGpQvfIJihTtNf3KcAiCrbQ3K2rwUVac=;
	h=To:Subject:From:Date:From;
	b=lneLxQEtez1SZVIh7orS82rNP+3XBHt6pqCj0fUB4HpGoJh2eyAX3QxoSfdvxhu+j
	 Ytz7FwtYup+qFXOf6YQxDcupP4RWtouQJtuiAdkELvPMr/mefpcFVuis+3BVhRr3dM
	 jp5TGcjb9Ry4WSQpVXiRrZWaEzRK2LfFRFfMTT/1qW4jtPZUflZA24CMnQ02+QToVl
	 3TNesOAph04IFFem7mmCynIVY/6o7Pb6neBN//qeXtKoh/2MRTH9VnyIFfiSlPteMd
	 dDJn4hPvoXVrS/H+h8J2p5cdDTC61GXIQBfOfFqYuTqqnGhrT2MyxcKZek/K/4bmr5
	 48HM/kdlJm1ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DDC3ABCD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705239357.5441.1987643674824102258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809b2d9614389b93e3eae67d4799826646afb316972615d246e7be02f80a4597
Date: Mon, 12 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747052393
