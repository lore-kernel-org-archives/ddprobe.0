Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2AD1ADC9B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736852754; cv=none; b=YTDHsnU5ZZKURX4HNErC7pmS3GT5KEhDqAHNnCeVraXvvQm7m5R8UT5keQfWhmPmYbQTfqoYen8ZRk5sdUHAjxilrLockN9Fp2aXwsjcHiR4nlYjgCxeLvvekqzez+3EmynooGFN/J7VegNbw1HZqJDh4f6y7s4kWGTfPBYOAHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736852754; c=relaxed/simple;
	bh=RQeQMRCMCIrq+LNuGg9ANI9OdlC8nBY6SgiZWOha3mI=;
	h=To:Subject:From:Message-Id:Date; b=uqBf7FmnFERNep4gO/FNNzQcWqggJ2HaQdh6hBwNcHDrH74HwrdqGAzAIKiwjGbeHIW7cUwRhf7XpVCIpu7KINS/BnOQr4Ui+Pz7AH0aJ+cJE1/GSB7TnpaEqQoOrtGpa1bV+gaAhf4xNI25NsLzWMEQVTnCCJfKsM0lawSSHN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPXmHCRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPXmHCRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B8CC4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736852753;
	bh=RQeQMRCMCIrq+LNuGg9ANI9OdlC8nBY6SgiZWOha3mI=;
	h=To:Subject:From:Date:From;
	b=hPXmHCRxw2PShhdKdEsWPwmCX0/FvoZxN+OKEslt7xwn8uBKbwFyDPCnmJQXyn43F
	 JWuixCd/oYbjXdfOrJWAfldFmMX9fuLJQCqZRe4ubfevAfmpzeGIccYDV870V93jQw
	 28CONaEwXVd8oFwlb8IDB0yUd/D59W/p1NvZajNgIg2kinBFxwIJxrVIomHLjRPLGA
	 9yITJbz+UapJGFN+xkLg2CHP28yW0Ur8ap8mfJ6MrEmJJJ0FHKtYF+yVqEvrQ58R0L
	 Fb6CXprK14OASM9KXwLS9/p31rYxnFwIhQI9aWDCM6teGqHs3G/3C1z4YqBpQDplyq
	 ulgURn+Z1nH3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E92E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685275358.27802.14547292974084158012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f8a068460d4b4ce8fefee91fd1421f2f27263e1f571df191cde7e64aac359b
Date: Tue, 14 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736852753
