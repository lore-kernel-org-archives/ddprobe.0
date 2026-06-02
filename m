Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1ED254B18
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780435474; cv=none; b=ZGVB1wngNFyOKfj9o1K4tz/V3mH04x6bDG87gsO48QB61xwXtWIxaWqWbHHwwiK4eCt9u1Qhr6qeiwk3fi418mfploOdNheDTt1t5HUT+b+/qsPyMlDSvu+rlDj8Xpz6CQbKEnlCt4PoGPrSTJOFMkjqRfcp6sEMUEqWz4DW2NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780435474; c=relaxed/simple;
	bh=Kbq4vtTX1n0axByaeKNhtYg/cuSYBdAWxDRY32lnECE=;
	h=To:Subject:From:Message-Id:Date; b=HC5W4JEcD8JePHzwMxQU/h/AEL4pRW6hDV+bIbdPFzkeg8LdA+p3ab0ss6kMqsnQdoqnkPGZJJTlBNFGmGo5oZethNzgUM94zI3t4ZO3AI8BGo61W58we4ItGDPb974wkmPvBumiy8B6hOwxkmiYdjRc47HSz6p495zavjkbVs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pD/YxpcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pD/YxpcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD73C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780435473;
	bh=Kbq4vtTX1n0axByaeKNhtYg/cuSYBdAWxDRY32lnECE=;
	h=To:Subject:From:Date:From;
	b=pD/YxpcFGPnh4ikWNy5NFPFt7SP/t2px8y+2T5m/trKU9AVjQ5sLm/DFdORIyK2pk
	 N5NAIipxwShY/BnVsZkpWyqEgsONH8uGyyJm+mjX8DWpuC/DV7+SMz1aw+qZPXNxrQ
	 /EdApny7eN2D4nu5HbOGMiGiff9x4x3RuCXUOUHLkeduGPfyzyBn/0xgEPymnNaSfG
	 FcVCmPgBosiAmY4hdrl/s7hM2lxeQ1P5MKCXiVnJBFEcZ1XDMqSgBZf5uEU8dZv8uQ
	 jURvZfCstaz5hfYhIlCfcTGRIUvMzDZuN3IPtaUI4Tf6uPfP9AQ5SQKaOdrR9do6Q2
	 N3HH/FeWz/PIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0BBCD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043547368.15712.8334459765456558264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb8f34fa12ffbe3f3b5266e6b58cf6e93ed619a0debe0aa32c0e33a33f43d43
Date: Tue, 02 Jun 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780435473
