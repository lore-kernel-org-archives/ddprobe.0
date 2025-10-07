Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E952B9B9
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759805994; cv=none; b=IjFzgbw6PUxCu5S/yhoOBerppujoAAmlbSflY7/keHRRplNKZ/nXP/J97ZsTXXU07196e9/8HfQSVyjWfb+eh4ccL9Dqp/IbrvWOu8SN+nOdMAPXBvPbD2WrzvqC314jQlmC9KvADewAgnnvYuHWkythLLLnMdgLeODKgAn2gYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759805994; c=relaxed/simple;
	bh=kCMC3kgZI9ZCr2q0Z/Vzxld0e64y8ByNHntjFjP3A7Q=;
	h=To:Subject:From:Message-Id:Date; b=gc7MWYLDKhxDi+TMu8RzukpLmjmbWV/XvXnpFejBU6Jwbc1Nz0YBZ7/Q+hNyf2QwF83gbsnNy+p/0e8WaJRTMpvvvFqsvgriZwhMdFJQSB/lOs20vI+Ir6nAhVO7VBhYuIqCEKRNm4wF8rnsoYbJJjOdow6+yAvGO0HXMl2YG8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAl7n5hS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAl7n5hS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7661C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759805993;
	bh=kCMC3kgZI9ZCr2q0Z/Vzxld0e64y8ByNHntjFjP3A7Q=;
	h=To:Subject:From:Date:From;
	b=jAl7n5hS1FMWJIqIsgwfY8nkbDXnQyEuWty/ik1cagbjrHujRKt36yHob2mUFCgXn
	 Qad+zY+CvjVmjfrD1EpYGNYCIYxjWHvoeck3jI3aektsJiWNH1jvVy9n3tvIyx6xSY
	 MNpn6jpoyTbRzIbC8Vq/wOYrxsDRTx0i4ISTOK2NAMRcQaoA2INbirz42bsBusUtyx
	 1zwCgQHXkfiW5ioVgfYWoMBTmbpAE0TMqfE2rcvE58YvcDtc3LV+bqDED+hax/ZgDI
	 KREKxC6n/Y6Iu5QGAeyFncK913BZcdWpK8RRbVt5rp8b5tnXmE9G/2RrmrCgw9IYyT
	 oL3hC9vFRQ+3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95548CAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980599357.25952.14756631710898190334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93436f30e43706645372e0788985847dea6c2f250d935836fee96bf334df6f41
Date: Tue, 07 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759805993
