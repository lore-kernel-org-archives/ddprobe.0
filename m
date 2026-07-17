Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260B227F75C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784266114; cv=none; b=Wcyg6SWL7up2YUPfsOQradm3WFGYuCSzNtJ4ep0ROX3/f1Wdqn5qsEEL0dZSmr3vcKadlrK+XbkEiIYxUoxSKF2e7n8NUEaveSoxTv1KvXniNJEIOR3JZMRyZZjdE3r29w9KaUc+vmTgWnyRaB4JfEN8fjqVKnbE7bV2ofRx6e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784266114; c=relaxed/simple;
	bh=UCF5TVebxqVLKIz3buzTdK9qjzacgcZ6dq1QWJMGzKw=;
	h=To:Subject:From:Message-Id:Date; b=lEXv3KEUdlhGT7t7Oxt10zr8IZJgApbxA1qRM5Mr4VnuwZaYBI+bSHf/rxmceutraJP3oQ/1dGzMpMLjc142Hv07bUd4zIfrxjRYkNeXQR6w4BdNzlZyunagaZwXoAkGgGKYCsDbGqHnMBx5TrkuT3chmkZLLd8KxguZze0IYL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD+g2swM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD+g2swM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2474C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784266113;
	bh=UCF5TVebxqVLKIz3buzTdK9qjzacgcZ6dq1QWJMGzKw=;
	h=To:Subject:From:Date:From;
	b=GD+g2swMOdrjt0GHW68Z8cain6I3UbqiDTCFecLb/iIvIdJFgOUKgMf+C8wZbHQrp
	 hfx64oGfbIZAnYAmm8BpMzTrp9P5aUmozkRTiYUTtPV6DL9oPIJDpfQ7/2Dx0AgEbW
	 voBozh59e3K+MCF40INWu7ri/oBG2bJonleRsNHllC25KBBu3KoAnobzK9bZvlSaat
	 zN6oV4Z9DhTsVPFIoYddkncYRIi/We2eUChFXwDqzdJQDRiPuMOMxqr4ty30ZqYKMz
	 r68+0IMBgE3/tKAHPfg2n0ilajhnb3RIXTREyyWiIDYKzZUUbs8rXduAWyPoLNsesu
	 n+mVoeAV1ghXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC8BC44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426611370.28125.4970477984105710414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363e126ec68d03bede4e07d2af1043439be7fec1faf17744d15b57a7f730096e
Date: Fri, 17 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784266113
