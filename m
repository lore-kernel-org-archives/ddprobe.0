Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CA514EC73
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751828395; cv=none; b=C34JoSbFBMW0FRho60SASfQLC+VInTNL4O3cmuQDwwAuKjAPUxDQr9cCIX+SOm8WOcyaGR/oW++frkPmelUnWkkT4whYsUOE0j2gI05ObVjMSN4HLOC+5bxewqtVT2jdD4TZCggxTwng+3JS+hgyd2xmJIkHGXjbko22R+BCjHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751828395; c=relaxed/simple;
	bh=nqT60dSCUDLAJdIIeP3LDzU6f62VZCjbmnQTn/0Fst0=;
	h=To:Subject:From:Message-Id:Date; b=YU6zocHWPFnfkk3EkxmyMyaEdZOtYAFJkBcnIlolL715Oa/4qhDZtVvaM2QVDMDUetP4bz6dPiZpegBl7x4kc/+xVtxljewQuogueaH2CLNNuq+00Fa82+VfeOdO1ECVZeeanKVKk8MSYU/G9FBRs1O/t+Z3kNYl8RtjRMR81so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGmeAuX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGmeAuX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0109C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751828393;
	bh=nqT60dSCUDLAJdIIeP3LDzU6f62VZCjbmnQTn/0Fst0=;
	h=To:Subject:From:Date:From;
	b=NGmeAuX7mgNZRAIeHv7d7m9SOtB0WN7bewbLi+xTqoEP2G/25lj9KiQN6m6hGM8Nn
	 PhttRfc6Ft+eAyrnrkiSc3zA4xj03mz9bARLZyApjSpyh8Kst2fwv83sMRBbclkuEA
	 8qwzlnZWVsvE9EJJVXQwpgrDd5Z0OazwIjwuQrMAKHMPodyrZFGD+jABl2MYynDIWa
	 0TyevUb3uCItAFj3EBvyuGyxSHOedd7tqplrtCfuvBO4I7AzI5k959bFbVAJLoS3h8
	 4gjA2rSsitesGjbEA7keo3s1g96Jftq4pJz/EFyQoSVbyWn6RuunjNJHs8KmVo7sj8
	 OtVMt2MbWxOfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E28DC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182839357.8272.7365414406622448208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de38fb96f0f227c8035642b587e5d78de39c6f61e881cc97b90afe508a89abbb
Date: Sun, 06 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751828393
