Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55761411FB1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791241834; cv=none; b=reOf5T1E3jzDX/tftVGjr8y2S6huxK4VKnGge9iUHJPKVeiSEAm47XKqUlW5Y6d8He1goXCem/jQ7LViesY9VsElhX17ku4hKsvPcNFVpqHnqEcZ2hSefhJGKz+iVD/HTUDZ8dzQsfMUmmsG9Z2pviyk3z1Au2R40gYDzC3E7TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791241834; c=relaxed/simple;
	bh=QldZONzrDrCTCcq9rDCfqsmPLXjwE/xntrEmqa2FcDM=;
	h=To:Subject:From:Message-Id:Date; b=SmBoe6TxQdVO+cQpet6WWIetXwNOUuzbOttaY0TEbWUPbHql53YlA2hVpfODEpcvkc9mkMnEpYAQ888/j2NBdpycjWjZghdWyIUtEAA5TjTlUDSHp1N6D5HVe0xOdM3NrTIyfmcq89iOCNxEIPW5qu4BMvh1niZreERmoWC05xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwqEtqiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwqEtqiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1EAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791241833;
	bh=QldZONzrDrCTCcq9rDCfqsmPLXjwE/xntrEmqa2FcDM=;
	h=To:Subject:From:Date:From;
	b=JwqEtqiYWQcQoT1BPCsKO8Uh833lCpMcr/iFjQorHPr1DlHXnvlC840YMwSCX+oWH
	 CB4XH8wSQBq4i44UnI4pRlYYo4XZBIkrrh3beTSCQqEMQL23QBYy5oNtvtUQFvD5/a
	 ZMgrhyZH0jF+9cwBn7UVlB0Nvd5eDvYmcsNxN1ooudJ1cRba5NtvosA/LJD+PnEiTv
	 yvQ8jQ3Dd97X8Dv9osTX6ist3sGBOnyKALlfR70NTWRwBnGivmObYzUudI0c5D8wRu
	 w34iCficAHuhI3mcqIkThz252NkmcHf0fpoXifMHU2t1a3G4xhmS1C5pXwkmmleYlY
	 Cbqc2Fu6dLKcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE303CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124183369.12715.15051761027799078662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3dec71994b3339a16fc0bc50b7fed05dd0bf18cbeb74f1ff9fa774c1ae829b9
Date: Mon, 05 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791241833
