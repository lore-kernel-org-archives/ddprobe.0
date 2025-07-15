Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8472D29C4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752621596; cv=none; b=qCWfx6aXJJaqCZc2ezSDvz8xP4FF38ljiKstvp4+xeO4GqE0HP2225foJ7srZLVlWDWprOc0dMGRfQzeWfQOuwHhWv6tUKik7985Cu82nPnF1vCmLz4Ps4QrcK620gmyJavcq0Q/teKWrYg+gnYCkeJQ2KyEdRQvsVoef9fT6jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752621596; c=relaxed/simple;
	bh=fw03aoy9NvqNAadkEszipNWOM39lnBMRsgUiUVKR2ww=;
	h=To:Subject:From:Message-Id:Date; b=RsZDWvL9wW/xAkvw+K/pINW6eMGYbNGW63m3VH6XMnnVrYbmXHqtWU5/8hMTvHC7SN1uPE5wEt9fpDf6VmlfQunMgr0ywE8naoP/Z+jPDSFkoujnEGzKV5lBl4+ReGbek5xyGIjap4L8Kr1uS8t7bQVPBHW4azeaDbNFg/Mt6N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+l+rgLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+l+rgLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43CDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752621593;
	bh=fw03aoy9NvqNAadkEszipNWOM39lnBMRsgUiUVKR2ww=;
	h=To:Subject:From:Date:From;
	b=Q+l+rgLvV1eytsg1qx1K0N2LKeNGhbsrSCouL8abNR0FvJkTANwbCC4dBa7yEABmc
	 HoHs2zQ+PVCQDeYFNyIhH/fjePwFwcT4dcPxTZsUQui6J9iM689oTCTCOY6kqE+Kci
	 O793emH2YiBSA5RArn6wp3lwC3VYncYdeIJG7oVla8m0NxRUy0/KXNmnIWv5ZryGKu
	 mgjVwEpuMY+pgcZo9agBFHaebvElZels7bn3pGLqL0gt+qbs2CmFDQEgrw8RckgVaM
	 S2IM5bIriQ6Kc/BC14PQC+jwsAmsJQ3qQCDDaNy1b3FLUDYIDBzndwXzk//ENffAxv
	 E2RiUd02kGC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BDCC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262159361.9498.17585735553170902687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ce6af33235ca084deec2b807723bd2060d64073a19067c07e10033722e750e
Date: Tue, 15 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752621593
