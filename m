Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416E52F5316
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750199994; cv=none; b=EF6elzfYjpLZRaPX075xaWFH9dQ4VRm2WdU5rvRzrek5Van6VBtILrOjXgQVd6gOd8+7xCJbbT0Nw8Og8t8Ea78Vk5pl70637MlinW8XXXRtjylPdxK8ie2nGlIJjpZ/84dD1nkGzbfUN58MKosMEbxi93bjkBXDKbjs7vB0lB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750199994; c=relaxed/simple;
	bh=tsNAT1nbDk+cGO2aiHm6DMiJYtZS7oNmzBp+MHeh+uM=;
	h=To:Subject:From:Message-Id:Date; b=ie7vsBYMQQbl4jcrcQEvzKpXr0K4x6wUOZk/BizK8jOzVu87Btn24Ce3vXPTlh1E2PIO5YUOHqG5MOboBQdmChP6eeLWdE3LqdLMu/wmNxFQaEJqTjGN7cuQJyLqj+LDkx9i/CjuVPDgkftt3RqG5b3YQM4FLXGbgCbv05AgKg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pwv6OiLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pwv6OiLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D33C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750199993;
	bh=tsNAT1nbDk+cGO2aiHm6DMiJYtZS7oNmzBp+MHeh+uM=;
	h=To:Subject:From:Date:From;
	b=Pwv6OiLk9Dj6WG2yR/Ekyl269Qve/nznbtwsRIbud0/RvaGvq2oQZ9k/Hr0HFHTDD
	 StMIKqpSxDQKyS8wwx6Z8gWPpC5XPLoPewqkXGj5qDjgLhAVhj5s2x9REd+75qH7cx
	 HLU8RY36dsn82gbixQnaV/u/fOYZlLgMZBVhxc3Ux6QFJZxv6mxvudyuWf8D5FvxYe
	 TcAauo7eDSmtGyBMwJRWI66FATTB+wNcN7PM1N4Pv/rAQahLV8+Att7yjBa0I5JowW
	 KkuF9ZvHGOYDMeL/MczKLaVH7L0a1UD13kfseVjQFEmQmvJYC7DNRhZKBLWL/rODrq
	 NZHkKdRcAJAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0CFC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019999357.28487.6978133850636603836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef91a2bf89f0078fb9b0086141090b39a53769c0a54143c51153a43e9b5deb44
Date: Tue, 17 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750199993
