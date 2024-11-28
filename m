Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC88196C7C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732787154; cv=none; b=ZjiUHolGl+Gc1/h/5632PJO96KQu9OU8huCyexXtp5nEMPsh0D3+OYCcUABnj8/g6XkMIFcwP1zZaXdtXA7E92yuX6y4vIMaq3jk2JDlVpD6zkuP4oA8jVvksS/6FjJKGYxWY3tHff9VoxAxGyuFHW/9MP03l3oGhVLSpoYYJXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732787154; c=relaxed/simple;
	bh=RLjjKVIjeSSQNxIbStFPCDNpIILRe9UkNcr8MAYMgCA=;
	h=To:Subject:From:Message-Id:Date; b=b9xoPa1ZLs0Gp4e4qoRcXX7yDy4ZYHEx+mG9CVuAxCUIpWh0QrAbiMFdxOPGr1fOPL9qsra2fEP99JSrH4iG+MMBl3pzSjbRANcXvN84MO2pMFx1u+ye7d44Nk5NhU7tHeKjaZADvOp21//Qhi63rvay2eXcuvvMwvyeeoyTzu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4ndE+Y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4ndE+Y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD221C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732787153;
	bh=RLjjKVIjeSSQNxIbStFPCDNpIILRe9UkNcr8MAYMgCA=;
	h=To:Subject:From:Date:From;
	b=b4ndE+Y0Az12ZqaSBjZsc3V9ZrGPDrVPYpxI7izzHam3M8ee5szigUQSi5lEIIGKh
	 d8Xvp17IDtcccqVajevcPcBr40+RMTyZGWqYbquRbOGXkIkeW1SprQJ4NdlegTzLgq
	 I0EIKh4Kc2gcnclkglHxZ01CNNBlxbWnHOV9i2PpnazId8ST+wEJKR75cdVvCZmd6T
	 auKvX5oRFUb0A2Ct8L8dTiKcQ92o8wDwB5OZcm9KBr+9Wbpadul9gqGJL7HXnjzrKF
	 y27BhcSLAD/wtRT7uDmDVBPg3DQx8P7AIl5ny4/GXfVuIrFvhZhb+vv4s4gKr7qwXU
	 cyWEz6vu6vPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5600D690EF
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278715366.8324.14001113412460146317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2833b99caf6642eca3525e8de91017da8af5578d75d40c1721d175cbd883cdb0
Date: Thu, 28 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732787153
