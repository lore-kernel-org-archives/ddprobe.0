Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DACF28EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721502954; cv=none; b=ey5FEDskfhy8hw0xZm/o3Yt3plQhBS92CIcmJ3CE2wnaJGiZtbUF1TMYJPF73w5qhFH9ZAtZeXTRgSBXbbu7TBdM6EY9MWm7Y+GSkJ+/6Zcqd5boRvbPB33V3Cml5ymUOUnc1O622l5aftko2lvIMOt77z3Iur0a1kt/8xjx7gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721502954; c=relaxed/simple;
	bh=6bKebePTOq9BT41wR3REl6lxyu7nCAzEyICt7phb0Ug=;
	h=To:Subject:From:Message-Id:Date; b=G+4qa1gACYj4S1RNGY2h5Lfaf+zeV09G8KHIo5aJxgKyeSDMbkDXATEkd6dicmPMo3W6obDsGtMAtIaSsH+BqxxJMOqxzalm1YFYBPiZwtjaIUhDO+KIATYpPRcVBLvA8OC0YhRSqg1OqNboUIw5Q+G/U07la3FhThIdSeMnJIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCeI0wZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCeI0wZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB96C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721502953;
	bh=6bKebePTOq9BT41wR3REl6lxyu7nCAzEyICt7phb0Ug=;
	h=To:Subject:From:Date:From;
	b=BCeI0wZA5/7IDRrfJoySlXRiprPPZEaESiCnlvaI5C03TDX/6Q+A6WcPAA9kAkE+3
	 fUipwTrbZaFsZWDm8Ok2U0oxXP4/nWiMGEJRGwOlUEn8iVqkq2HNH+jaYp7fgZemmR
	 Q16grPDpRPTjyaIZ06+9GwXXO1l2EuJlgp8dM7CRWpZM+e0usFXJ7Cu45ysgmttXem
	 cNskEGMqQacTPc94tHnuWoz4IPSruUHUzCdhVuHIT/Xi1R7Sl11xXMwDi0EqvwfoVU
	 wXTB0L/KGpBJFEhiywt85dXN6o9GxRDSKBU9HxcazGhNyFstlJesxQ2hgWTATFMMoE
	 YbOOtBQGuIN1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A59C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150295361.14230.12799136526577151092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a41f39a17232f5cb12612614a4eefc81011e38bba128719901b7fe031670ef
Date: Sat, 20 Jul 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721502953
