Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2072E974D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772214893; cv=none; b=CPK+DBvhFLgMULbyYVGQaTGeqVRWlwFiCWldO0BneZZ5NUH5ioQHUkkveSfiHgKLpC5KaM222+LKnJOZ5uctjnKWDi7Ch+KL9dSuWUc6nmFUEAGnBsLVmKlOBv8iZiSeEgWfXEwLucTxwdpmyapVNiBBlT6xi2VaKeyDGE+Xz4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772214893; c=relaxed/simple;
	bh=tvyeuYzNm01yZEBJxT/ItDK5RwzDaUNaGii4gNkxdos=;
	h=To:Subject:From:Message-Id:Date; b=rIo5CnMmqrK1+hWJYq9xD93sRE+6zgWD7l0pS/Q8YwWf7boXdC3zjXuyRYEvkoydA4GMW/kO/XauLWfyf8nzNrKzCPSwC/3APgUlveTve+wlTConMgpuh2PDxG6O9hXTZ0am9KeMEa+k1rdGTFxYtDUiq1PgJChHDS3ckRAdaMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHTWO/T1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHTWO/T1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3EBC19421
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772214893;
	bh=tvyeuYzNm01yZEBJxT/ItDK5RwzDaUNaGii4gNkxdos=;
	h=To:Subject:From:Date:From;
	b=cHTWO/T17z9KJbv6OQ6K959hEoqFcSQUOdF6w7RPJFaTxlvsx/SfGukScqzb4Wk2I
	 xxYSWj4fMDUrzBy+sksLPj64e7IHL2/MDbkcrUW8WkqEERoZTr6avvgXau/J8gxoHG
	 mZMpzYMDg5EfQd8soHScrxvkMw46LQcZZG693Yw6f3Epf/kb43ZJLRD2o+mM1bNeIV
	 m1uGytGwzhHPB7cRFus16KNAMig/pd8ap/i+S4FKCGyUUp5fjZwQxKPwZJbtFsC2MS
	 NIVP97ohHkkmVjODzWCzY4lbVoTeD3TUHmYHrtp1B/6iSMXNuiGwrk63zFGjUxyk0D
	 VfR0B8+MhhBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F134FEFB70
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221489357.1829.5189519311289730388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6dd90b6230045ec2cc9f40ac0587813f40dc52956fa276e3bf8acbe1de7795f
Date: Fri, 27 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772214893
