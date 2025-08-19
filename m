Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E9210957
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755590994; cv=none; b=jkIoKxVYY5478aguibIMwz/9BTxmkFcwkovED4Elk+J10PvmJFxMbpaTA/HD+tTVMFITNwgEerktm7uav2Lfix01rL9NyxR/JEyC/LSid3RqCTHP5cdYj1l1BBhrtfbI+GAe6S5OvWh7aksYM52Z6Offw/L0BGMOUvY+CJS1lQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755590994; c=relaxed/simple;
	bh=fm6aJZu7Y25qBUBmLKYNIdzGyRp7Z41wN/cASVzCHaQ=;
	h=To:Subject:From:Message-Id:Date; b=NBW251noVn8YLLWc33yS4M5Ab5ftgfrnbt5JO0r+mVbc0JuHKWt8oYimICI7o0P0jaRAdgPmpVHriUG/IlkvCn4/tV100aGSaTFFhV7mLUPbggQ5gj+anBu50uchUJndfCpyzo+lPSQ6o135bSGsnLpV6R/qA0vSFothN9iRm6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiX7vFrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiX7vFrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EEAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755590993;
	bh=fm6aJZu7Y25qBUBmLKYNIdzGyRp7Z41wN/cASVzCHaQ=;
	h=To:Subject:From:Date:From;
	b=fiX7vFrUfKOyoRKLBZMYbL+eiCMeqcBR4ApGaNfK8UoNNs1JMRGyEDnGK3sOnjp67
	 lPaoIgpZ4nIYIvcY0Xn6EtCaPnos2EPBrs2bL8C696He/7/qNef1AHtVYvzyQmU8uu
	 CiibkbpuMCpshNVuvwOF6YX8fPZuIf8lWkYzLE1oONELYp1VG1YzL0zdfQDDj0yLa9
	 NRDOm/ZLW1S61qlvf4vBgh86gjzW49P6Vj8BBY9ccyTHPiD4RsrZuFlQAN+lOgrt9p
	 jRRohG3iD/QNCRQ6+Sn5Rvw03E44MssxgCflEM/KCVfdaf6As1bU4zQXMoXdtQ2bZx
	 S8dKROvCThEUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E00ACA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559099357.15593.5482640642885827312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6b453e606b522661a6bcfbb0f3cb5d843e72adf1c4b0b723a3db6f7b0b65b3
Date: Tue, 19 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755590993
