Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAD12DE6F7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760007594; cv=none; b=iKoXtIYPdeYZr1wOs1LoOh/2yo+2ZNvtAyAzgBEzmymZ10alVRwWI0Hsd6fnv2gqdUFy+koXnyvQFek5RUjMC2HNHl2ItArdWDF1YZHEurrkzLBMjqmlP5zCMjkwfqoIq9QBv9F6JAE2MstGvyQTaRCg9vH2eOKWmMBFkHPpg7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760007594; c=relaxed/simple;
	bh=Q/q+AjnHZien4RKwzarRpaSwm2aWDH3IvDknTki9Oyw=;
	h=To:Subject:From:Message-Id:Date; b=UVlmhNH0/scTyfEF5gms97qDALVv2080FYZl+Kbmulp7+oiyiipYcJHn9UMbBZtlL1ZTHpT9wWLuu2zEPtlCA6/7EHNhtlhcR1z6m0C9kcF58nyVXP/R9TXn4AXqwAsGV9QwSAHMs3+8pRg1DID97dngF0bb5kKW4AlYZZsUX30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8EYeS5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8EYeS5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F62CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760007593;
	bh=Q/q+AjnHZien4RKwzarRpaSwm2aWDH3IvDknTki9Oyw=;
	h=To:Subject:From:Date:From;
	b=N8EYeS5iWSlNskcbAo6VOryWN18C7cOEgc2PM1IvIk7m1O+N4w/Pis0aBmQFKcU6P
	 XKvFRCIDKv6lIhPjWN+HYxHqYP5Oy4HapMw/l4KP82ZqjfP4v86GNmmz/offcrSiH+
	 u5Hfxx3yka5SoqamWj+JJ0ILDhl+fWrH0olpIXecxKDNUlrIW+vLj+/A9YTQf6h2HM
	 vvAjznIeh7hv5JCJF8rEbJWOEnkG6a7IDmr2078G38WSTG9vk4f3eg8VA4i7qfran8
	 mYZA+WT5Zr5Ov22mtonhzsE6A1eWe5J9v9ynWGYDzEtDZyxqUFGh2WTQBNITQP8pV+
	 54dlQ1SKl4zew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021ECCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000759358.6096.656327634750306928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f080641a30f17862989d6e121806bd5b1c9213059709b747a2c92e8045618b44
Date: Thu, 09 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760007593
