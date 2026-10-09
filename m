Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5173BE630
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791565834; cv=none; b=EQ0kZ68ZoHPQplNwkOF5LNXPS1Nv3fgsIla/j8BNly2UNFBefpi5vRoNl15FIzwsP03qXFMG+6H4oCPcCoTrxgkNTIoTN91um88C6JFaCyeEZ47e8u1YAv3QGGX28YEyYqtIYApJCUrRFevYJYl7x00fceyQny9ZnNR1zgrMin8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791565834; c=relaxed/simple;
	bh=QGXUztvfbWaZCU6za44fmiGW+psEppIc/IFokozjBB0=;
	h=To:Subject:From:Message-Id:Date; b=jD2x/P5kO5du7srZJVppWCyy1qnpUVMG3PZN4THUn8A5p/CPR+dx+MUEToUy+tvmWOBRTf42UamFIpq11jJO0/CWDtY/56fjjj4rHk9OHYs47YmjeXw7tUO+G4fyr0LI1fQGgzKle3YueBN5NSWRZ86+f15fwlw4R9uzV9jBleA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOy8MQf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOy8MQf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9067C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791565833;
	bh=QGXUztvfbWaZCU6za44fmiGW+psEppIc/IFokozjBB0=;
	h=To:Subject:From:Date:From;
	b=DOy8MQf06b42rKSKDpdPcQ1xUWKNfDVUdzs0DsLjJn4fsPgypKpgKRVpvBfRn7U7V
	 ty2MGJUCSWVc1NINSEd+vZiZyXg7rTXIge+8DtXckqtmh0kEsGw0WB+CovKfM6mp1C
	 o8laR3j1kFbBtzufQa0ZDoeLyUOMthTJOCKSeWL3FdveaioPYR6cI0qTjabDGycqxa
	 pc7o7lx8+M689t3eM/OpPwRk765lvSN+6Xd51t4ULLh0KeI/h97+1A1+0o1kWKNB0L
	 WpQZYdppMbtWJxE+xDRgrwita1h6bMTGU9tCcZZiXQz/gQoxqrx/l2E6rvsU2tcyku
	 j5EOS8hToJpLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF807CA9EC1
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156583370.24112.17011814327933365081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222ed047a034fe9966f4595da7deb236d2bc2ad4600b158c95e835697674665e
Date: Fri, 09 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791565833
