Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DA62EC54F
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761737394; cv=none; b=Gp/XUlaZG7xcBmhdqT4BY5iNhApzpBtf4wkidnp9OrSafJ6ZSF42Pw0xmyLEI3ML9WlfvEc1rPlXLj6eU0+1Dz5517A6HvONzITFeGW0OVlhSlrhZmvgDdCiRiCfm+z8sBz8+HkU7UtaPFNyMDJQjjyC2kr+R2NBKxTFCeDWpNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761737394; c=relaxed/simple;
	bh=cDfs+ECxxpMNPGMoPrYV+yhkk6+lfVb8dhYXZRuEUpo=;
	h=To:Subject:From:Message-Id:Date; b=DE6kc8KjWT3eMDQpN868pKNXTAE5JzA6y/m5/y7RD2ixvgFxBqpxZYxDDCHtQ/6mQJkLcx8CikEy7rIwBEa0ct0QNoS6YpAPsHMHMKvVqFszCEebOFyDlSPWZSXP8RjpK37Ld61bbNTgBOECpowbu3wIWD99XuUmNiXrFOIGjBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnwGsbsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnwGsbsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A111DC4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761737393;
	bh=cDfs+ECxxpMNPGMoPrYV+yhkk6+lfVb8dhYXZRuEUpo=;
	h=To:Subject:From:Date:From;
	b=JnwGsbsDEXPQWHlpHApmJYcGoxVCbkLaSAjnR4pSDhYGeQKy9YsqeY0eqaM44uk6V
	 1hhLp3C3nwdvEeMWW+kwJcK0/GibQp0BJv+80zLyN4x2fHG7P8Esw7YEcZSVhPp31e
	 AqHz2GTkjmi9c7O2Qh/nwtTflUBQTRGMMzCfC3ssDejhFyHhic/wQQJOYs/UhTVPMX
	 XykycEAgS+bQGX0sIDq6oxsnTKgt3Z1r1B8Ovi7p4Pp3YnUkNpzv4BYdh6xx4OIN4k
	 yOyO8deB1Td3vmk31hcaXuniTHZTGSWAiDtpS7dpBXiu27mhw//Fkwo0lRWeeSBQ36
	 TUgAWVwFOWhVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3FCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173739358.4197.13654966946699735653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b2610a92060f2963b3566f3d91cf7a0dcb80b06bff42fe7d2a0f56429ea13a
Date: Wed, 29 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761737393
