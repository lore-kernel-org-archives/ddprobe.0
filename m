Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBB42F3C3D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775933254; cv=none; b=c5U9WItnyHK8zcLZALbRhTgjh19anfV5+m2UXlz/SReZDpHAvtr0/cBSeFNLioIPYCEkWMaUaU/oLHk71LxVIMlHQPeAVqHsbqeugZivhzZN+KJ2J74kHBPAvpFXvgwHs5IEyVpmDoMNAcTZ2U6ceh0hVtTXTlTfMTIQgAgOoN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775933254; c=relaxed/simple;
	bh=Z3wnmkiUnXPVR9ATm8BUN8hzUekZ9EH07NnLIs20g9c=;
	h=To:Subject:From:Message-Id:Date; b=L6OIoujTdx0mTUHm7UGVKxD4KbWqO6LlfuD9llhVvVSEkXHkREGPtqlXTbuHAzTmj+cbXG4eiGF3dbQjFrvaanN8cYvPGWXTfeUsA89oRrno0WnjYNAVeED6Rogg5SCA0YWaE6I1q7z0ymeQNgiFznG7e/uiIA9iSvnFAvapp+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSox/Ubq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSox/Ubq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6D6C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775933253;
	bh=Z3wnmkiUnXPVR9ATm8BUN8hzUekZ9EH07NnLIs20g9c=;
	h=To:Subject:From:Date:From;
	b=PSox/Ubqwh9oGGGHDQsrV7gq/FmB1q653R6QDftF2xp3bJFb+5ZWHzmu/4jBx+SlE
	 QhblMYIdy0ODdOf8FBuEzLRo562Qf35E7DU7MS5vwvqUjj5Agmlg96fmMOxBn+bmhO
	 k1I+P7ws9vqnucycstTO5C7KegyZWkYLTH2rQysx+e5jyZcEjt4Dg99TAL4iVZYwgU
	 I98lElWVl1m+lDh3bVUW+aUcr5mJ661lljaRhJxOCNlBb3afQRZR/i7zh9eD366LPO
	 3axB992B1v3THEhf+pWIXbpjbyOQzekCq9r2pa+0SsUCKcfvM8ioQNwiXNXORP/+CU
	 HeImV9s1ydMlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF8F3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593325368.15958.16088360905909433223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65257173597ee1b9296b7efa321c844ee5c073a8df30e141ae77931802c4df1
Date: Sat, 11 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775933253
