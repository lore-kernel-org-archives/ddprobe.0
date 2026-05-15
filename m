Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C1C44CF52
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778841634; cv=none; b=anElW2lMrL07ERgOKkn6X6QYlmEdO6XPAVFprgD7/LJYS/J4wpdPdBuGjaE5gXzZassFWasfNsjZbHkg6ZrN1Vnqo4ta9f0cKMV8FDgxBlHlBugZH2ezmPQytaUEz13R/OBHmKOsi+wwW2OExTb8a9PwTr0S6ICbH60BHK4hiz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778841634; c=relaxed/simple;
	bh=PTEdeSs/fEXkYbJUKieFbs6qgnQN3G9fHXXKolwM0zE=;
	h=To:Subject:From:Message-Id:Date; b=FtJ0kwSNZelSQBMD9y8xefVd/KP36lt9Ked0VUgsmJmSHyAuCfv5nBiEVp/VbJ3DhQYbGqcDRojb8Yubr/BIYHA2DwPlAdoZwjuSwJxdVzTBPukywdHXWaVnpsBoYuS7uMXI8MaedvLbv1xB5DNYpAtkZRw+3+p4xkxyL6+Jw+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQaPNXsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQaPNXsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B7CC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778841633;
	bh=PTEdeSs/fEXkYbJUKieFbs6qgnQN3G9fHXXKolwM0zE=;
	h=To:Subject:From:Date:From;
	b=FQaPNXsvLAevU2MQ8ad4SdeJ8o4yvoplnbr11DHn9Fk66xc91zz3AxTpO9P7fUNcl
	 ms6m8mo0quuQ9MFI91g6lbThqLg8GhNZo6MEjM/gfirJQ1tI1iVc1lBXgyAOL5qI/9
	 cj4xeT0sE0oevnKRDBIye+ua9Uv9lBHhZYFC1wByJjVyRyhdntwgG4UVTfEloZc9k6
	 LHxHuDXuU7elzVvaFBS7J8nRiRHumbMdJ7Puw9ZGJxjvvfeuYOM6PpfTQn9s1i8/bM
	 mPnVv41IlOODCEienEqOqDUHWPKqIFGWhTzktq4uEt3mm++e/pcxnzwjJlCbn4Hp7h
	 f9GjAb9oX3C1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE9DCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884163369.10730.16550788701088903963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45131efceb1e66956018768a0c01dd744432fb3060cc25e46e3353524f624f81
Date: Fri, 15 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778841633
