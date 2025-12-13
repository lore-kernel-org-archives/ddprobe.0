Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F6B2C324F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765623773; cv=none; b=OwDBqqt+ZqU/qi5Ulbn7l9O3a9Lcz4J2L8XbRHE5V6n5FeSAJA9QktfwRTihsjQpwEudhBuUsYgsYLe1rLuYoN56VY1JnU24iixUAMCH8GIR9iKAILJX1LS/4Yoxog+DqJQ9rbKVUl5WmDjbGtMhA1ET5dprBmbtoh0CDSYb1bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765623773; c=relaxed/simple;
	bh=SpxCpsqd3wllxAmFbzyhJE47NQDHS57JPFscGL/F8VM=;
	h=To:Subject:From:Message-Id:Date; b=HxkLw6ei4ERL/4RK4Vy0kjBtPpl2SevsAheTa7KuF7eApfSsOBdr7OSd9iD+tk2QlI2A6vEXEyJvp7OU0VqNKnGkoTF9Fu3VDzaz96TqRqY33SZpsRp3Jlirr/pqXVciKvZ03sVb3tNZEKJ0vmZkhOixPtjUlp6VaYDM+/RvP50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZUa5P/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZUa5P/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64FBC4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765623773;
	bh=SpxCpsqd3wllxAmFbzyhJE47NQDHS57JPFscGL/F8VM=;
	h=To:Subject:From:Date:From;
	b=dZUa5P/xDzyy6emnF2hwiCHhpbJXAOW7iD84BC0IIpiI4rjpASl3bzbqzR/93Os67
	 6Me59+PDZLOvYfCgsFDzv80AFRZFKCvISYhfM03HYNI3Phthi1UzCZ0EIvbWIhm92g
	 JJLtsL7vzKs5uCO8TNVo59hLx4SK0qdF7TVVVz7Gybz0b+7PJuEMENdEKIZXym7AaM
	 UlfopKBD1ynpszvDrFLcsWY6GWDGQ1sIggH3hTxsgCErJNi+yLOVVVBz5SZyLgPg4u
	 PFya/Cr57C4lQwkO2H0yIPh4/7FqDDvANY1K7YaJwqKtn6vHU7l2/IUv6bFDzIKQwo
	 BW4P/NgGyaOOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A48D5B152
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562377358.27993.3045824295902455671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8c62d29a849b5e53da3cd04d8e2b2b9e03791c24c94631caa057d59d6c5f6c
Date: Sat, 13 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765623773
