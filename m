Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331F01853
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750639794; cv=none; b=Lwrjby/hgu5Vi+hzODKgZn7C3GFrdUwSWHASdxgcJVSO4Rof2ecy3QcUioS0HmzcEBZh5FfFlImeFT3Tix+Dmse2TbB7THb++dLxu3M2VI/9ga92S5MaWU5SPN82PsTxk9Q2t3QylFX+bROEUc3hZFx22rZcQut9JIx36ZT0F7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750639794; c=relaxed/simple;
	bh=E7XeZWd7dqNtidL0zhJK1Y7PyGZ02biUkBd5kPmE1a4=;
	h=To:Subject:From:Message-Id:Date; b=e68MptBLweT5aatJ4nxORrL3YvdXOJ6tUAYs2Ppl5V1rIp0lGh377xQUlPgMcNmLCgKeC3g4Ccue94+Pl12ALSS/8zFvb8CrKoKecWRTmYx1B8lr9tmd9elUT4xlapoxVEDt/+4lbJQGLVa450OtTrOKiU/fwCugcsBaKpeFFQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHBVQYiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHBVQYiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FADC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750639793;
	bh=E7XeZWd7dqNtidL0zhJK1Y7PyGZ02biUkBd5kPmE1a4=;
	h=To:Subject:From:Date:From;
	b=QHBVQYiEyQYuhSNyJacPP+bLUITD2mnQQ1jAICKqmrJE3jXadvGOP1bBACW9bsXAZ
	 GWy7ywSXjMNrdcmjJYrkguYmED0gNQ4qUZX4Hj1IH24Go/DBxh5ZAm2okJJWfvZBQL
	 oLmKwOqB74RbH6LFSnyyyUy7GXI7o+2gcmUToaR72DnFFF8DDlUx442VgugirRq3mY
	 zTpVIaCVO54mTPjwNJG5Zvop9upnzJ0AGtxsydgSf6ngoAi/Wgqyq40vqKms4T8QZh
	 DKJkgIfSmJ57isDWaE7MuUBBPmJKw2REIM9k35P97XNbpKJXdk+hyqQt712leLEfw0
	 tKRif0Er8mwJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DEC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063979357.22039.8449044512947276304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac3567407122bcea0be28f5475455cb87414dbd2df0924bbe1b3b7349cba0bd
Date: Mon, 23 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750639793
