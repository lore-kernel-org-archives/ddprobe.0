Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F5520297E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764391973; cv=none; b=lJMc/swBeOQYqbh5OXDpTuL5nTzcMck9OjUoTIGDD3AihB+hPuXG/9uBeCmph/TMCD0s1FeCLOkeydLsScD830Wr4Xpf6f4VRy476j7JuCngH9BAQSy8jDZW2apqHpRWgWew33t6Fe+qxOlnGiFmr0HBk5kK55mZNNPeT2oT+W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764391973; c=relaxed/simple;
	bh=6W1BtmCnOgFOUxDE33TCZDRXr/qL3pR2stOkXfo04pc=;
	h=To:Subject:From:Message-Id:Date; b=QlO9bvM7zTrFeqPWBQBzILTPyx9xIlipswnUj3oi+PWi/7fPE2beTUQyR3L61JYoItLs/LG6HMaCVE26ZDT/5AaiiixtOs6l3n6uN3BXZ31+exGMV2IIqs/fsgdK/sPOgV5BdIUnY+JXsM4q58wBiUNqVD+xm0WdGDN5m1/Cw40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1aZPR1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1aZPR1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A973CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764391973;
	bh=6W1BtmCnOgFOUxDE33TCZDRXr/qL3pR2stOkXfo04pc=;
	h=To:Subject:From:Date:From;
	b=q1aZPR1Zdkqj9j/bD48y0Up+RaqzG7noGBTpi3lisp96lKLVKKeNCaI7+D7k/Qeb2
	 nK1KKwScUykP+nQM0p0R0RlCrqToMQLNt17kRB4GHO2qCfI2eNyYJZ4zbSs/nLNj3d
	 n1/FaX4sCyWUVlSuJTzkJmvpcS93+xf1LBJfIR4M9whasMHePuzUCgnTfyZAvX3+oO
	 q9fOD4oZKSJ4rrKeiuFvAgoWpr0EYWKnF2fDQpyvTlieMIrbxyIctBjdV6HJ11ozwV
	 FMU1EpUcWgGKWrrUcLoNHJUM+Y8IG3dntvXMpZ3D7u0Nbys/04KV2qiT70QjkK/JcR
	 OksxBdpMAxMUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97200CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439197358.3269.1584594739944522246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ba933e5f4c5c6c304ebcd510c6dbe16131e3762a79f405ff2c6f405f202384
Date: Sat, 29 Nov 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764391973
