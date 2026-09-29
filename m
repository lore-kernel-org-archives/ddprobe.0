Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B88A3D9027
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790704234; cv=none; b=lN+bEN1yof08xfmJbgl1/4kxHZfx3De/imYlwcULEwYWY1mek4Ry4DFXI+/fkuZ8PZzop8kmQy6GI5zQudMiuUc/Xa08GVcRXMci4H3bvFcj94YbAFxm6I0WVlODeYtPRY+TjzDxi4Y1d0wst6NpXdKs4Sxz1RSxQimEyH4qNV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790704234; c=relaxed/simple;
	bh=czHfNorUz4O0bg+x7HD7eOcUjYQcP54sjRngsDddVqg=;
	h=To:Subject:From:Message-Id:Date; b=tn4Uxu8XOLV9ILE//dHKYUVjv0GefdJ3NzabjlIjTlLp5ZBGS2Q52O0GV3l+Gj4hietYtf5W0fO/fKm3Jv0PSCA15A+AG22R2cUVCK7NoeNZfALfq1lqRN61bs3kGPcZ1MUx6HCbZoE/V45rSczr0r2G92cE4utnlIK5uc4bpHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTmoqz03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTmoqz03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA644C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790704233;
	bh=czHfNorUz4O0bg+x7HD7eOcUjYQcP54sjRngsDddVqg=;
	h=To:Subject:From:Date:From;
	b=UTmoqz036ujZ+CTfv4vws/v6/2dXP57kWJXbCyhsPVOtmiFYnzZWixeT4AhgzNfKP
	 fxLBrH/onLSHW0iYjQa7ceyrGtDtanpfVpTS6zjMXvi9CT9LeRTm6tfGduOuqBaVXd
	 mxXT5v7tYrOsKevQRo6zAHyH5Yu01XFwAVoUStBN5qOICuH4eLGx9gywpWYZt4a97n
	 oqIt1E1ySILi09e3FqtD8MRmLo4vpQqZN0XbpXlgMDtM0656GDfu7lHDDO6c7kBzjM
	 33ZsJc8gSUPC3qukRZ/bnMhXZLPalp3YS66ZDULqkCPNcGnrmSjaHgPVk54BpmRbcH
	 n22gWJSdng2Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9951CA5FAC
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070423368.5904.9225999087050781980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33b90fd2c22cba74b172f784c3808138ede49e185c1e05720e09afd8d781c4c
Date: Tue, 29 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790704233
