Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250742D73B2
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767009234; cv=none; b=EvEZV5RgUR0RuvURSf3I6G5xWnKw/YHUb9XE/1qjpU3QF59+2VY20wtZpMZrMyFmxhDXPhtsW0m1IzKmzVGjI0hktzLrHrwDQv1LsEpdGZ7xDCR5jeU7cZXhlnJWzZP3rLb7RRwcAw/FifFjhFOTvHsaaqrjALMeEkwNKDwGGNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767009234; c=relaxed/simple;
	bh=lX7dPlkgUXo7WB6kN3ohB+uaC5iHV0cVSNM9bb1/DGo=;
	h=To:Subject:From:Message-Id:Date; b=A2zhoXNnuMHg/K9/+5P8PqCM3YateKN10ic3SfMgn80cJuHTBXxjKb9ZZ8YL+2GxdeWzPmcfjvq3kZsFBM57B54F5vIek7xAZ/o9eftXNtUXv0k4YQ2dpMzS4T7f0XktcHMr8q1SeW7HEya60gUYZcxno06Nxpb7acAFJbAYiXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdCngXJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdCngXJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01EFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767009233;
	bh=lX7dPlkgUXo7WB6kN3ohB+uaC5iHV0cVSNM9bb1/DGo=;
	h=To:Subject:From:Date:From;
	b=DdCngXJ+ioT/+2J7osZwIlxjp+Wrl2KSEx3KZjc0zb+6ePt5rJ0aXwuPodfxtnV/G
	 mqK2HsKpMcBx+cnsMHOw4L+/hbrM8QRKhV7F6MJUeE+CBZYXjn+O0L+Vtyl1uxDur6
	 1BgVqh/myrzc8ALH8GXk8HWEjtgZuuyIVIgGywJT0lUc6w4d+M9LSecNqj/cuGVN03
	 yYJ+bOnOHLsJ43EqTanSbAm4c1Xz/x5ovaE25QI3K2rasaBvl2gKErCnT4ue268aMM
	 pAMS7R1H0tdyCXra9LpfPdjyN1TqFdR55xcDNhHYsLs2GqLEWrykgZ3S50+jiYuoHF
	 vREs523H0Hp6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9997AE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700923361.7381.11777888190585429358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2094340ecd26f171a693c4587cf83f5e918987d6824f4b1faaec0b685c966536
Date: Mon, 29 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767009233
