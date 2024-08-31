Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE5316DC36
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725090954; cv=none; b=KBwnoDg5dynWxK67SDVJorC42WRXv7fWU6wHs+4GRjGobFAUQli91J73AYs58LsHUFWXqUAAMmbjUp5VcqKhWDCKGqVxpCSVIs9qOUD6bTpB0Ywl0JMPtcS42pm75ZfgccHdlNqBmIAdumT4Z6GQWkDMZ/5l0b3I3fxr+TC5lhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725090954; c=relaxed/simple;
	bh=56gIvmNfKmKxpUdP2TTAQ78Hp6qwiB19jkkBdVSsR0w=;
	h=To:Subject:From:Message-Id:Date; b=fGi2QspssyYfdp+mruSvnwLBnnNfB3LVorcedp1ARGR5i6eYbBMCB6jUJgX/Oeo6kzxJmDwXRKaHRdJRNFzx5JWZ9lWSGvM0OJWZcMujQFTdviiopJwkNWoAngf8f0L2nq8yyUVP6GxlPYHBWILRpviEXmOCJZHOKtiXOd/0QK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dljdRffP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dljdRffP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3690C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725090953;
	bh=56gIvmNfKmKxpUdP2TTAQ78Hp6qwiB19jkkBdVSsR0w=;
	h=To:Subject:From:Date:From;
	b=dljdRffPZRB/OqUwlapBh044Fgr4hb8Y0Fnzbs9IWF5onQY5N1hVBB7M536qCP6Je
	 qmmDc5+6WHO+4MmIJRubqct6stPf5UrTZ/udh1YonjW2GTBrnr4wiNsNaoQ2eYDxIU
	 BOEvMz73zAnxlfoa/vDu69EX8N1sStEzzvs30NB2MZDtRELLHDl8z8xq9KFPAEtmnI
	 cxV2A1zMNRyd75B/GQvX5VyEe1mPlQQdOZQ7DnxdhIV5yOw5D6filJlCVN31Omguqu
	 xMlkfD9BBkr6VN2MjTh2BtUXxylFY5sJPL075f4VdXUdeg0DG6jPGGAAgjtCZu0rSd
	 +ZfjjqEZ+BTVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C10CA100B
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172509095358.13858.16934337588792494550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1135667fbfc250cbfa41d00ebd8ecb78aec398eda00d2c6cf10f6bf705ac5b25
Date: Sat, 31 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725090953
