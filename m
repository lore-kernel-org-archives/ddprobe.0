Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A88F2F1FEC
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783490914; cv=none; b=LDn4Sv0El8a4+u0awT+WfqtMJPIxRtH4XeWeTwSUH+TJTZvXvP3yd/rX2+QyL6AHdpHWbnyGHEr69PYiM5pKe9VBnPFQnVQLwAZUp0AOSIBBztXs/b0V6JNx07q5PwOK4gSmrGy1HDUmXomYL2o0ygNVtQu7hiNw6wEPDCnHQA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783490914; c=relaxed/simple;
	bh=ZW3qgYEWqMr55T1oKg2pc9mWQBnHE2rnd4c1j9yTHcQ=;
	h=To:Subject:From:Message-Id:Date; b=kzZBGnoSFYgVr0g3VRXsjAX5RGmX96YTwURlK0xRcGW+YlvSleu9wel9rtjNScYBes0Hf9uW0cIx7ii94KhvO1sd+s5Nhs6ZmumxRc+tVXBOGGcSnfuOGr6t0ZxJopgf4zCCycE16o//o0K000Ncg6vRTeXiv/ZLUtD3ZwEyzGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdbi5ljC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdbi5ljC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4E0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783490913;
	bh=ZW3qgYEWqMr55T1oKg2pc9mWQBnHE2rnd4c1j9yTHcQ=;
	h=To:Subject:From:Date:From;
	b=Bdbi5ljCbC6/aoHcprBeYhYN2J3VrhxqpcylSAPVwPR154LFS2D9A4whcFWgmvlFI
	 DZlpr7BdLNefyEJTHCgyFONXA9n4X25MH3uC6otd82VNbBAufshxhW5/TleZSs9XHd
	 fmPzvQbbiPS3Kzzpx1kkZP4M3jwxwEvoFQNGjdSmTrxNBB2/Av54eMcQZ/9iGMh6hU
	 VfM9SeF8c1WZNpD/td8N0/ZuDfAqcoMOtcsGMwBptVmzcVegqNE+cz9IU/3PmoP73F
	 jqBxBrjLdjC2oJ+a7TCvGRY559c+woa50vKQUk0vCeDAGWTKCtq6KeJAl0Azs9LXaL
	 UlHTcjyZkVMZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965CC43602
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349091368.22474.5734980179834932224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a549956f3f3923577dbf050fcc2b9e03cc20bdac9fa2b2a01f02483b5a4fc5
Date: Wed, 08 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783490913
