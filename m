Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FDF829B787
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747339194; cv=none; b=DA4Z5j44LaDyL4ibBx6uj6IIgAiXHEdsU7ADRlWeY5kp7mWxgA7QHaKccudYg/2phP0s+OvMFbAssgfAGnC72TnqtCar0vpeLxGa7fqfPb7Wyd8gdf80d5WlGS903lRv2far0eUFbhnOlcqmnded/7j/FfZ7n0ucJ1U4eKCVIN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747339194; c=relaxed/simple;
	bh=iQYUcUf+CZTn7t1yytdLIhveKXifaKjvASnVV1h7h5M=;
	h=To:Subject:From:Message-Id:Date; b=GhPE7GTssqZfTRhMGnnMUCqlZ246ng/2OQaDW/vqTIyrc2ayWqP/EgDWAxAh9oAy4XFb7lin7O6KKRycSxGDKgIlkJKOPwvA7m/8qMdC2wE7DCrpeCl33MVZvcT1EzgL71TSyAXobyDMXm/HKTDDVoR7uENqm9bHnoYaN6BYfsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTIs0+YY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTIs0+YY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB426C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747339193;
	bh=iQYUcUf+CZTn7t1yytdLIhveKXifaKjvASnVV1h7h5M=;
	h=To:Subject:From:Date:From;
	b=pTIs0+YYWOSg84l9PgzB0Y/5COqo5Nc0BG18FVJC259t2Q49MHCQHx1HKRFu1Tc27
	 w7S+yrQSAk0M0yXDYArGpnMC8W8s8MdVPSbYyWf6GpAW1hHWb7GselHfbNOs+UvAjO
	 z6WIiBs49bFe6vAOzBGk/ft5JYozFm4+6AnAau/85oRik280fwdKozUPWdJrrwQl34
	 dVVLp0cGKZ59qjR4iXG9lyrq3osXJJ3/zBbz49I9pUD4m5pP5NWDmQmUTsAGKGEdPb
	 LQdYNm8AC2uSKgg3Okh9JkrgdnPVlBzF8sd+y3fJ/r8bYrvSYc5rwFHQ44GVwpbJa5
	 xGSiRvFCWyxZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A060AC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733919364.21973.6567417418911564306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78aed028111647ea2fcf2402e97f2c438659f331ba6328051f2177f5621c9540
Date: Thu, 15 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747339193
