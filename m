Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFE147ACD7
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789231834; cv=none; b=cQV0m8BJ6jNgi5pmfY8FA0OyhsQoDBWpXQvTxFi6YarQbZUHSFP/OOgdPOl1LMD7wsmTwnneZejke8Rq6ND1JX3EoSQDuqMazSJtOyp3rfMrvj/QohMnOuOgwyFhpXanG4YME97iX/jt44FJ3hrv9tQFxQ7wGjAJsSIdhQYDVao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789231834; c=relaxed/simple;
	bh=JA0Gg3/PvWefnMDSdR37VtnBeAnhI5tOVEWI54S+8bA=;
	h=To:Subject:From:Message-Id:Date; b=If9/dKAFn1gKB/zif6Y3tSOI76/oGR7mMnGmTb0oqCEtR6/kXtLhG5a5DiZK+Np2mSZlBvIi0IV0VELC6sdEJwiguTsVL6fOHqYLhAEypslYXAXGHZb0u4ItSFjvqdJofveukfS37hbJh2PWBiSLdON0Fjh7iLeu/4Mtq61OlDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSMZwQKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSMZwQKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4738C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789231833;
	bh=JA0Gg3/PvWefnMDSdR37VtnBeAnhI5tOVEWI54S+8bA=;
	h=To:Subject:From:Date:From;
	b=FSMZwQKPrwREr28QiHocQNMkwAIU/BS0/3EbN+WEQTnLNIittz9FIm/O5P97W7IGK
	 S2EnjPBuRk4QoiT/VPZ3Dwr5dZCj2qIbzQlt2Bl6Mg7XDxA2PvbFkWNcAfIyjxPeqS
	 2FwN/1062tuKEYZXG5zkfhe+GO2p87EVawlahbAEnxmDfRApCzevVcJ+33sNaN+/FV
	 nWZQFxsu9thwJ8t/1UsgC9dP3dZpQnjabqTcs97soRFtc6lGVQYYYZBJDPzeFv0Qru
	 s5IsJ2Ll2/o+x+4mEZJumaZ+KowCgH79/b/mHUvtEwdFoHzPFXna8+6qj24lrfSOEe
	 h5BwYJZmG7AkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07E5C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923183368.30944.2028069271718740036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b17142aef78d4fde802f34e01342f8711fd9dd2fbc20eb1ab5eefc92c674778
Date: Sat, 12 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789231833
