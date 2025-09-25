Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5463C01
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758783594; cv=none; b=PdnnAgzkHT00niYu/d0Xb3bCwDLm6NQQPOV/3ENMU6aFCOxRdZ1D8wlqPmAzKNzB34nj6OPsd24C4X3/KZzMMabzkR8mLeZhVKqUXgXpRavV6w/nqQhKn3f5Qo1IVtRTr9Yc2q7YCkKWsduY8OddvEukAAcmix9W3Zz7tXbZA6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758783594; c=relaxed/simple;
	bh=FIeZKJTPqjAPXuWrcTKp2beEiorFWBJVMMlKIKLK0Bg=;
	h=To:Subject:From:Message-Id:Date; b=H3uke1zXKdIBFsd35Xbhc8GBpB4OwHSMmBJV1VNAR5l4lOO6wHPzBTUkUxsRURLBfR7uzN0m87RCRMxZsLVbx2qWRCXel6SUdAe6a8YzIghoMNFfJvnUVlPGi9MvXnDUnwd3KYXZXR+6/LJxhD+ct3bXSHu5hOuJLLUyfbgPgME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRO3a7b7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRO3a7b7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBECC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758783593;
	bh=FIeZKJTPqjAPXuWrcTKp2beEiorFWBJVMMlKIKLK0Bg=;
	h=To:Subject:From:Date:From;
	b=SRO3a7b73ihkt5Je1Nr9CeRH8LwjBRJ/quDtc4yv8IqIf8+64wdR4B+xwhKkaOkD9
	 C1cAdKkytrXr4bII5G72vQHokZSM6Ruz4GWFhEu4T+BP+ETplRJquJP4LqDVPGqk0t
	 hPMfersb/a7qpUhQl3vGzWKAzP2JAXHbkXXGFEcOhE7AQmgktRixCuWpbl8cj2pphK
	 bDQuk46memOzf6DSn0H0qEugj3Kbhfeaf9x2II2+g0gulu9vhy4Nv3n6EBp7KDgxE3
	 5obDr/6QJrvMnEsM7DrcrLEoROIsiKrmtkpr55lpunotsdbzmrcAqrHxEpLsoGlGXC
	 Pr6X/nIT9qRig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E42CAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878359358.1564.15109378174891481573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172fc1962260b4b0a5e42beaf1335c69b42ac65803b38b615bbb62a7e121e0aa
Date: Thu, 25 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758783593
