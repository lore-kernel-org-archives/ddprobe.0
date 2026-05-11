Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2181A9F8D
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778470234; cv=none; b=YoIKJLfXR/LLsf0IO0trCyT2dwRSmaNjUW8BHfhhtViglLuGgK2QwA+FTLnVSit+WRYmwv+Vch8ADMS2KV7Y9CP7j6cS1jCfUVEcISaN/6LyRNYfYBzCQzkfPx73Fp6QbEWA6wXbg4CDZ8yXJPeK8Y3bxYwjV6d/htOAnfoDyDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778470234; c=relaxed/simple;
	bh=1k/XE7dHxQbt9QS0vXhZH9OK/YxAzu6h2TroOjGu4S4=;
	h=To:Subject:From:Message-Id:Date; b=qLbZqbKLwkYGPwWB/kqqqwED0+teXxTG+sSuIlZ+FdAm5a4Kfdtchw8uXY0yUd2AczprQtAbv9K37dt8XC1FwaUK8/SFthvLW2DP18bUuvWnjOVhW/rmHDL+5a6D9osNUbMED7l+zBgyNU9794xJmryawzhkYrg2sDwe0V5PFtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXQwFWL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXQwFWL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB27C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778470233;
	bh=1k/XE7dHxQbt9QS0vXhZH9OK/YxAzu6h2TroOjGu4S4=;
	h=To:Subject:From:Date:From;
	b=JXQwFWL66WChzozuiuyBSk1OPNfUc/Th4yr/4lYhyq7w2gyZb381sMWN+UaHkGzBl
	 +LzCPpbX9ThCdmjPSAom67YQQoHhvKYBZ5fPRCvk7J4TM/z/LXQ2m1t96JY2ifDwIf
	 jo9tWgLiy/H07OwaOI01tsRepS6frdj4MBTN5cd3YZ1QDkWCv33IgPxMeRwgXTuKVP
	 rvN2k66F+CjWxIvdLyoL8yeTxyB3Q/3+gVP6DY2mJRN2eZqoxrBl+Tu26jUL8EMyUH
	 uarxEQrpMP1JMryxQBiz530muCxcPpHNBgZdWDpJu1jjzXEeP37vrBLIKc9rnP9wxY
	 hZyiCUNrhurzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4B2CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847023368.12527.15227009939485305883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370fabd479969b0ae76be2be81c388ea7ff1acb65ce9cdbfa2aa34da402f43f6
Date: Mon, 11 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778470233
