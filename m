Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BF229ACD7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762931994; cv=none; b=JT7Y4cAUsVdHWFhUYI33Tnk7QaUZeXP7Ujv39aF5Cx+CsIG6ZiFpGvNOFrQvWjbh75QUPjXkZu0yQmx7yg3glj7QkHF48hVibzyo9KPWDNTg894njRz309PBa2mG/g+WpCDyIY70HRv2gSgm0HLaagq8r5We/w4xVVzsvD+ZkxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762931994; c=relaxed/simple;
	bh=zg7FKCkcOaI0ifRXnXLYf/i5oGi2oG5CI1k9IlWzt5Q=;
	h=To:Subject:From:Message-Id:Date; b=Z64ZoaqhS3e7uOBLbdm65ZvnxSNP7L4S2AAMkGZJJCLb4oAlIAf6Wyaoin21TIgFeNkIYoVT6qEs2APjcI6yLtQ90PzS1jYofX0jRCpvjSk2Buop9fHAzGfQh/gHAax6gKUYYE/U+RfsaOx/5bmdUq/sAOn8e/NJ+QabEvTKxdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCiHxci5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCiHxci5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3E4C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762931993;
	bh=zg7FKCkcOaI0ifRXnXLYf/i5oGi2oG5CI1k9IlWzt5Q=;
	h=To:Subject:From:Date:From;
	b=HCiHxci5OjwCOmsx9hsImO3U0ZpuggrBlPBOlprQTpa4Dy//TyhXEByKuUxg6djyr
	 pyroK9vU7zRPlbmIuJOw1EvrwoTYkaWsB1XRd7gUv7tKUyuaP8x0ZAAILVE4c6hEKI
	 5Cr9lUH/8hTR87NutlmnzKWhYMGaEuFaZazj45d1e4xs612kl8/CdIdnMt7vr6M3+B
	 MnsSphmLoQawtGSMRxEPhwtfmkFy5ObsQaXHWL7O4lYmQB4cUC0+boj0HssOM1pkYQ
	 hQ0KUIh75ni+sXNoRZupEAtYlTxZIWSO2rWojulHWo75ZMU67xFT0NqvLsD0ICNrBL
	 T+8z4xOIFcVcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F47CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293199359.30699.780437928444304157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94bb4a0f749c3b0d97182048f9cbf00eb93ac60a8ccab9231130a597585599d
Date: Wed, 12 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762931993
