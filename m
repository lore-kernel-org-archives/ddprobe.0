Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BED290F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751158194; cv=none; b=eKTtMjrJ5Q+dY9hWmfO9NbgV6+5uzjJ/iPSsyJUOvKqhD4NUV1V+k7oSm1plup3j87HysDJAOhBOUhqZ/1PaaIkVyaRWRT6TIWpDZbUIwQTPKv0dLwWTNGh8WU4ZmUKFT3otia8IxI71KqxQAY6xtHzlYwnWAfWye+diQWOjXDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751158194; c=relaxed/simple;
	bh=MTrXZT1vPd/Mw72f/poVBEM0oERbfW7VEatac9ET8m4=;
	h=To:Subject:From:Message-Id:Date; b=tn2ZNIo0fKJxS5dHRQ1WObtJYx1CFPAtEVsoazwKqdoAKQqt/zNISvK4OW/vaq2hSQdwFPHjfeO7x5Q7UJ8CMm5yN+jacFWTHNXfvUVvbf92HsmrK/uxhnIYwd4iotNgB+drc0/vmZZk4+ilt8gi+QewLjKS3YY8kInrspUqcd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp16bosB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp16bosB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81CCC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751158193;
	bh=MTrXZT1vPd/Mw72f/poVBEM0oERbfW7VEatac9ET8m4=;
	h=To:Subject:From:Date:From;
	b=Kp16bosBxZqx49nMznIwrccGJ8daDs5wKHe9ZKLA4oPfCa80KVkzgWSFMwMSk939Z
	 A8u3BMcYBb7w9rXI1u1Yw3Ji5i+MdTepiSyloGpw1KDnrVxS63Ugue5dM8ylQrzWbV
	 pw/q/nTzFPkEGE+RO1IobjbfYk0e5HY/47Se/dSflEqAzXXScrF8aIULM8rrSijaZc
	 inYwqVtctz8D3/MO/GXZNF+QF2lazIUHef9cDqZK6LCuetG/v0vv9S/yCHXXB/PxYF
	 sM/RjFKnQuK313c1b7sjfvPVscyWfK7gbcaeTN66AiVBtelz/ekGcpIEASIpw7Kj2N
	 TVS+K5V2wIRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C7C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115819357.16728.4913058298344522194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8073f8065e18b806af2edc4092386bc02efb0b3ff24b742eeb60dacdf4e9ffa7
Date: Sun, 29 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751158193
