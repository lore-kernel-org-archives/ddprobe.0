Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379443009D5
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760506794; cv=none; b=pIPoxD8qN0ujGZimKY0tLM/xp/F2F1z2bl4azygDR7tIXVzXS57j5USTmjhCUw1Q4NyeAwBu7oUtGgNuydMkyz4qGobHxtNJ4OYhWV15CxO9tNl8mlP/TuJO+FpOnxXWauPtX25xvXHlwUM7XxsNHuIbVcOUQd90kVHfMi/ELYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760506794; c=relaxed/simple;
	bh=YJC1Ci3JJxSqevn87MPxVOlXp7qwLW2B+bU7qN6nIw0=;
	h=To:Subject:From:Message-Id:Date; b=kzOPOuMjLaHzArbOl6TgB4zbC3XW07svbCjHTSM1cZccKrwAvwgVJ08qk2w3yqMvQJFyiWzYOAl1z+pDvbeNzPQncLgI37wKtXAi99nv89Q7b1ZyGUE+PsmnB9kZYVyxd1RDKKVhtTLzydlCtliJVQ5TtcOV7SrWVGNe0Qc7JWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgHDr6Ji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgHDr6Ji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65FDC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760506793;
	bh=YJC1Ci3JJxSqevn87MPxVOlXp7qwLW2B+bU7qN6nIw0=;
	h=To:Subject:From:Date:From;
	b=sgHDr6Ji/v3ZCay8rw7LEk6ZmuunDHUrhIx/CNJE9tCW2evGMk8+B/Fisp4iQ8FnB
	 W4ZXcWPM9nwXuIQ/lS9Wd9Np5BlRUIvfZ10h9RbQ2atSnq8oC5f28eQPSuQOeXur11
	 PlJqY0xl239S10D849FI39hZhH4l6Gnwo/fWsbjiskL5ZcA/Mw8WLDstbivxeFZ45Q
	 sHo2e0mcNTeqDd3ukDDalqwhd/fSMfqqK9/DohYiGB/Bt3qkwOOW0m/1Y0WCIoYPFx
	 xqdqsN/tVpv/kg+EReg4j//qU6oQJn+hxP9Nfj+JkiTZKPZGDY5eNYiCuG/PjR79o7
	 J1EQJ++GxinSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA4CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050679358.20499.13226340783353936783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784f7253dc739c97310cd252fef5f77ac7faf1c14e7f7775b0d098ea7ae01cec
Date: Wed, 15 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760506793
