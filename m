Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B77211CAB
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713706823; cv=none; b=Ti0/VPcIrkqcizZBlrNUI8cIuHtNKieAMkdxFoDrakCTbublun+A5YSa4PL72VOK2ZQpUji0o6gIXqpnKSaz9+JSeGKoxt+rnOkelfVOc0TOfBNtKAykZbfFFze5XEbOimmmwrflofm+DhqbJLwdejmONMAUMyPI33VC4GHaCOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713706823; c=relaxed/simple;
	bh=D2YLl+h7HBv3LW5ZAUVXLdEPvWNJ3gaCtEf1AZPex9U=;
	h=To:Subject:From:Message-Id:Date; b=S9B1Ra4cnjHAVRwZZ/NZ8bKEJW6u7mPrBcLx1E6lPcDQF4yilWsDLHkaurZUzxaCPmdLLTfvBV+CyRzKNNceCNu6tHOtp6bJsB+NEyu0q2v7VVBB7uL8ZF3VTZsNAHZtiqMDfdswJz0CyGefGBJQ/xtAc757Fysxjt7aPVfhvS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6gMMWt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6gMMWt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36BDC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713706822;
	bh=D2YLl+h7HBv3LW5ZAUVXLdEPvWNJ3gaCtEf1AZPex9U=;
	h=To:Subject:From:Date:From;
	b=X6gMMWt5EQzwreGEztmTKKzeBO1P/2+sDN6WikdbasATsVOyocwbGqPq/tWNCrSS4
	 bNhGyrN2OX0E51pWj7t9WP254s+gtfnIgVwHiwKOZ5U3up20vaItb+G7WkS/cShXUu
	 gQUYT58eWNcFd10+v+Ob5O8T8JV1sNO5h79MhyoPmpL2mI8FWIWXuqyFT8rpsvvY/x
	 LEVaO2jaVyf4P5cJMS3GmYdarUf+StjU/1Prll3Fj66tBbtMTrA30ZldTjCbKZgo7q
	 SqU2nm0ZY/4dMhTM9wfJ0RhkBuVLm7S2GNjApFm2YAB6tbgbU8ZuDfK4W1PY9JRGrP
	 kN1O9SvPGrzgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0995C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171370682275.20706.5290797009414295880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290e0824b36ac1b55efa2bac8e33a26242b49f3eadc1f6d4e3b23fba565b13ca
Date: Sun, 21 Apr 2024 13:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713706822
