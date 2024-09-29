Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F3A18C3E
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727595954; cv=none; b=Xa9dJrH2kPd9tBE5lqtZ04fvzVe2XYGx88NOL275u4nmvk0ZgvijnZ8JGx26ukZ1Y7tNxByoRQhWiCQnb4B6gbS0+75RNkBGaFWpCqg7NF3ekFDolY0O82N/oYcwTeWW7F9GdC1s+Ub0xspd9JB09Oq5FPfANie59ehFE760+pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727595954; c=relaxed/simple;
	bh=SGMK6VqdSkOH2Q73ovc0G+q98J5z4sFYo+RIySTKjLc=;
	h=To:Subject:From:Message-Id:Date; b=Icwzl8MJhu75L/1eeLyTiVbuImGDM32Ge2G6C7uE4jwg5pDNuHWjQqornQVOPVtLwkzUTkF/Uqb0zeEPRKom+lRIBTRrrQQx9gThZNM32Qeqn6RTJBzxoFNKzkUa1z8uhyMFD/af0yU+KiOGAHKglYIaKLMdobBX+HFeBuRREJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YN5SFBHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YN5SFBHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD314C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727595953;
	bh=SGMK6VqdSkOH2Q73ovc0G+q98J5z4sFYo+RIySTKjLc=;
	h=To:Subject:From:Date:From;
	b=YN5SFBHUhKysYtVDbe1U+4+UuFEihWXaFQnV9JPRD/ww4aY1kJbRng3JywVdV27VH
	 pfx4pP+WkRMqJuCQaHkHZM55Q8D1ZEuMtWeej8Cd/u1hWxeibuj5vjWy7M8tvIbqHB
	 0711Z7jh/t6hmWD3mou/+OWqUYey9+5/kkYGl4g/KuTOndpbco3FGffE1wx9iBaXCp
	 G1DQHMpT4Qd9U3YlcyZdrdeuXD9qW9Mzp/Kpa3N3urEpg0WJuc8UibvtCJAPsgMMkm
	 wvnxLh84Xn8ZGXOhYH4kHCltTTaw4MJ3UueZM6qGwqGrWOkvMrgSXl6xNFxD2Dt9hp
	 IBVQzpRP1UdvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C57CF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759595367.8161.11544525670088111141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf31e13a7400f859bd37ecee219df739f226f4c2653ff2242aa6094c9d1fab0f
Date: Sun, 29 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727595953
