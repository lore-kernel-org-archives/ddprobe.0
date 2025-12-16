Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC842DEA87
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765922634; cv=none; b=tzojmaO6nV+kg68B6mEniwZr5GYdj4Jrzlb3HuTHKeGYYA4RmbVzeyrd9ZuGnlNCHqJjp9C3Cbk44cRuFOQg/QDhEzedMovJxYjTJuKL8aJbdSijnLOXJgPfASwTdE5huFNfeAohUsUsYw1p71dk4R1o7rrq/E2H3KdPIrYiN80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765922634; c=relaxed/simple;
	bh=PH+xiD4dRbMiUcirmidlumswKBdzgNjvMAjar/MeD6Q=;
	h=To:Subject:From:Message-Id:Date; b=PIGqTJ1n0g8VXqAivbbX7cfmoePRx4p5eP+6Fkjx1SkRHXOSrANTn7qnlKic0EJy8DPGkLnUXrlufktgry5Gh2itZ8jVEgRHNRiFj363+c+wsKnt4UCZlJByA/FaMBP2HF0Ce76kNdw92F3z136iftNiZRDCObp5g3mjsZ3poyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwWT51dD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwWT51dD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04BDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765922633;
	bh=PH+xiD4dRbMiUcirmidlumswKBdzgNjvMAjar/MeD6Q=;
	h=To:Subject:From:Date:From;
	b=KwWT51dDxn2P9slcEOpUvEr0rGpnI3ouC+E/hO1YPI/oU9KkPWc/WAw2RMN/KLcXX
	 02R3KaYIoCtqmPfijFFwK+Iryct6QM0cG3IAULO+T7zwkPAWPNns+VUZFJTD59X72B
	 x8cYd2/A0cPocj4GnIoe1q2jhUtm1WAOUwSJKzhbpv0zGpy9fiwI7K5fkO6U8IS6xB
	 7jtKV0KtWK+nxBFqwX/JzKPZy1RB9Cg7+PpFdCswJtwufPrnRpeNVMr843aSU8JBF6
	 ERQxin39nejBc+8AfJtCOWs4QcP1oJ/6KLqc2V2F3kLY/eEmmE3W7LmIsM8NlPrUtj
	 cGpHoEcwU0IJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C633D637DC
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592263363.16175.11418524513167141522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418d2ccc8428ff58e897641e70faeac37d2289c45571411751d5e1f29db87f42
Date: Tue, 16 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765922633
