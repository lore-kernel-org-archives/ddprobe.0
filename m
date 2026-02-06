Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCD221CFE0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770392034; cv=none; b=JAv+dW1SLrW48XGQ8upwTRI4sf9IcfvoIpa1sep4qeMuHMjH6GKd+hyPOJX4JmCFVsrk/7QM/0B4VH0zdp+kSXr1uHMlePiP7ev65LfLB1zqdDK6dE0Q5GrFZ7AaDmiSkJtvxhB9p11yKxJHzDUDoAS5mGaq1bVKrfO8QFFKe/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770392034; c=relaxed/simple;
	bh=3OxI4cpsK5qA4ZM3FM975jKQadHVVmWO8WhrMgmsHao=;
	h=To:Subject:From:Message-Id:Date; b=ImUu5ZqnRcjzmzJjFfzTOZag+FFDmXcJFjTcBS6804EDr7pOE47p9O2+quIPlP26rul0QqHYZ5OZ8DrJiTxUSaRreLDKCYRMlyMxMpj3ogDrrxXj1g/LsYxYwc/3DGz6zEE3/0nQlCjiOejMSw298BYRMGzkEuDBDCmZGsimH5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqQqcqXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqQqcqXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C0DC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770392033;
	bh=3OxI4cpsK5qA4ZM3FM975jKQadHVVmWO8WhrMgmsHao=;
	h=To:Subject:From:Date:From;
	b=hqQqcqXSXuaicmZBT67i6onU3375hpnDAsUhmZeS9MpD7Jz6zBdqUi7AeBu6vhwKG
	 76DQOVPbvC24EUogMeorCEnvLNE8oqXK7MoYe/k4lEclpfqDNeVMsCI6CvrxLASqzq
	 U3VQaKub1WhEzdb9pMYJuwZUQ9qh7DXA7VVP6oJst21EUo7VOYpcriEKEAijN82tve
	 6jRmZIwsHXtA5rIcGnX4o1kFxIXEyNvC1epEMWh0Kzv6vF3shxP1TmzUYsIk4yJx74
	 /gP6uxWLKEv2IadkqBXNUi3vlCSkXqO3bHnPv1+a68ViGbsu6V2UbQzEOiaK9hL5wb
	 UXy5xCPuxVIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92332EE20A6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039203358.1268.9730060216187681675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb10c7e79a9f6a6763d543a6a70dfacde2f65b6c515e944207bd4cb87272305
Date: Fri, 06 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770392033
