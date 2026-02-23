Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF7813D638
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771813494; cv=none; b=RBLdn2AuIXsrndvaZG3+Auy8fBwbAbJ1uApNbA2IJwakO3GEtMDxP1JqNPhovxOEXrHyYLKleYjjLTQgB1rx30K6T98okPd9Wpmt0vMP+39YIuLUBk7ou88IW86rPK0yxnah4f1qObE2T2bjCnPOhR5sTT4B4+/b2aHr2xBrILs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771813494; c=relaxed/simple;
	bh=tRkBC/6gVfYg0tvmsptAoKyYu5j27pslzpVznimN8nM=;
	h=To:Subject:From:Message-Id:Date; b=uqLKjM/y1pNwnx9SgtNwU1w7g11nU/o9uhiTer/vU+WSQ9IGw4xE9U07LzRZcTy0buhA99jjmgBB4x+CvF3uRkSUuFubTI/xudIVByTUUBiaYnK9GCLex8PmpN88jNWRyp66LwrWsL+TzXc8z7Luf5Crp37nrOO2Uh6r/dr/I3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTA8FkJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTA8FkJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8E2C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771813493;
	bh=tRkBC/6gVfYg0tvmsptAoKyYu5j27pslzpVznimN8nM=;
	h=To:Subject:From:Date:From;
	b=cTA8FkJoL6Ubcq6rMNxPPJ2lyJXoMtMMw7VpPXjmJSlxMamgRqfdI9DAYC5+7Y9re
	 VZJSeWs2bJrlwhC7+H8IIvLQzLQFder/RQ7zbDQ/OsvoXJCRZTkP6dnIISo/+S8b6K
	 mBRBqvNkkVBCyb0I3hA6Z2zeCrfN9hsAFaZzkbgXCNkCuPCawveUhNaOhLoZn2ycrI
	 dKpan4oxzOFhPKkTpUWin/k0V5X/Zr6ZScF1GGfEaMfEZnA5mzKLGdHBIACG1l2b7E
	 dPBK2ndRWFhTBRpdqUylWTuCOzDNBubYiuAQ0edXf+OH6E0M4S2DNOxDAyLEFWSKJ/
	 n9B9yHaC9hPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A930CE8384D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181349365.10937.4639466457332177792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773136d3a66714dde11f8a554f287e7260a0467b0971418e21942e372205d08a
Date: Mon, 23 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771813493
