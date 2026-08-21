Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3952D259C80
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787317234; cv=none; b=EEHRxOQKqFcNsX2wuOGfIZwqNmZCp24YCXSC8O1pEFcwark/FnYqTfTUK0ighXbFPVgp+Je5kS5h5KNJ5IkEs2SRro2q3op2d00Mgi3lKFAJfaHwtbZ6iNiTJQ8F1T/PA56EcV/MVONts9Ex47SbpqnAlwmvqFPpsstfjunx+ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787317234; c=relaxed/simple;
	bh=7TPt337BpO/MGZNM+4jWJp0zXDn8qiN7470veDxPs+s=;
	h=To:Subject:From:Message-Id:Date; b=begJyksMk0Vnas4t5GjBhH/+PThX1YdB7ohi0yQoGrGyUYeYOf6z/qD18zXfEYQ3APXiNh2pobuEM9/wVPnFR8+YLxA9pfeE1WqbKBUH1fYKQNHsgGcqRUiam3c8njtzNPPPYGVDLAKDwmz1PkYRe9Fu2Tp8q9RfzRcwiuYgZGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVNC0K3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVNC0K3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D484CC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787317233;
	bh=7TPt337BpO/MGZNM+4jWJp0zXDn8qiN7470veDxPs+s=;
	h=To:Subject:From:Date:From;
	b=rVNC0K3cb81cIcnW9DHU25mdlevZq0m4VKkYuifVqADl1MYGUFiNtmU8PYzqpYbe0
	 ueIAvGteBEhL+qPD784QWstqVA75sgWReNPafXqcBJXneNrNjh9048c39FMaL7+2Rs
	 4d0ki6JwBvVz6qLCULjv8OMWrdIyzksIalrrHK1NaDaQ9UNpFU75j8pN1K7EBDbaWq
	 cyfC87laDNaN36mIFiK2B0ADNshtsWjFgaX6MHrSMI0bub3xSSwWEqdsblzzGl89Y4
	 Je+0Pu3DskJKuShlXVN6E8O7mkdzJgQ2koopgkGF2RSqI6x+U6Dn2xwm9xbbh6KhmA
	 VwW5HeBXiOImw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC2FC5DF89
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731723370.20529.11694348925472834968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d711f37b333d7fdcc4611a6db0c15292ac1a70394f5907bb2e236a1bb7c7b825
Date: Fri, 21 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787317233
