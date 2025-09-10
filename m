Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8A91DFF7
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757497795; cv=none; b=flxrFtTegPPSvghHrfD5Q8JHI2KqjnxbhYE7SpEsP6ZI3ELXieJCLzUfqF5uuZIyGuz1MkCthxzqKYhRT4Th7uWrBBD8WCQaSb9OutLoPXgwxFU1pLMF8bzEYCromEBLRe1izFVehXYDSVOwntkHSI5g73VeMSzR3G/ub8g2mag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757497795; c=relaxed/simple;
	bh=LyFX2Wq0BCH7z203vzpZ3VKb8vk0HmOGtTr92XN3c6U=;
	h=To:Subject:From:Message-Id:Date; b=gPEzfsHJvKfUorGAAuFPfTVptEW3peix4YyzZitca7xfO7g5TPPs2TuDI0VYLe5DM/ZM3fVCVjqWA8O0k54jNMDzecnlhjxaZZy4irMeyD19P6vAI8tyO9NmFT6NRnO9KAVcoMLQ7/4yze8etwG9DEAChojn2fPUaDndRBXrgds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewgE7W6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewgE7W6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFE8C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757497793;
	bh=LyFX2Wq0BCH7z203vzpZ3VKb8vk0HmOGtTr92XN3c6U=;
	h=To:Subject:From:Date:From;
	b=ewgE7W6MebGoJeTKPyMrECD2uNwOS9xJ6u6AUUE00yhhD9zm6Kl/KQR4r4YDMoj0N
	 eXFwMPdebOf4J2xK63PFzbfqdguXRuu7O+CM78+G7e4IAr8Arckw91h5RN1LvVefst
	 jEZxibo6NVJsWBXikA7EqTpfjgVKsooYBP2o/gk3gbCs7ijKjkGEMTxXZFqEAboUQA
	 aHPwkR+wtSCnfY5XA8H+waCVPbplbtlN80bnnSg9qX6R52VR4u5FJzHzOpjHznni32
	 +0i+I1zSOZU34dEJwoKhvB358qhBA3MeFN0RRW7sIlmuphiw4SFdiSWZMT3Esuuz9F
	 F6DDHQX2rEFyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A3CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749779358.21560.1598194265952301023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44cd1c5996586f89a9234c22e6baa5aca4da5673d0807f034b185aec18e10d96
Date: Wed, 10 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757497793
