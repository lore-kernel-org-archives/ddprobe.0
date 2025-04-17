Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D8D1B6D08
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744905594; cv=none; b=XLQbf4aoyMS0NpUphnRAtFgwncfyNfw6s03Hil9HwFBVenpLu8VTwh4jNXRjAO9pZ9tz4ODnQWxQX9jZbaiUWnN/3MdC2dnHR/Zf06hym+FKaOPcioSjbLpcpLNzslxb52z7nxJPJx4vv/rNtn6WjPNGPRklFjM5LLGc9nDhVsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744905594; c=relaxed/simple;
	bh=ikV7yGrjwag5Cz4yivx/mLIoErpvWSrEx1NJfpTllgQ=;
	h=To:Subject:From:Message-Id:Date; b=Ta4yimxp2d6tZDNMaX9IhpdQhx6Cya32NLf63FrwHgywMmwgAmyYDhrB55ZuQW2qPMtXvKSX/cJxfY2wau5LAY2gATpEk8xHlJJ4CgVTyjsuR9Lt0pvbAkPuifyPpyu5mlW5EG3F78n15paJ1GNwXm6PJsHPRfRm7/QMJdM8sJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIpuHIUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIpuHIUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BB8C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744905593;
	bh=ikV7yGrjwag5Cz4yivx/mLIoErpvWSrEx1NJfpTllgQ=;
	h=To:Subject:From:Date:From;
	b=oIpuHIUIYZH92DR1j9uiLano5DTMmO86ME7oCa5uuvrWwnVDUm3wp1VV2I4DBif8a
	 pNMhGL5s3XTVItxLySaO7aTqCvhT7WXzTZo50bb5cLQv0L4SVT4ejCIu9k4NWAmcDO
	 Gy8kYsE5PhfRJy9clbvPSL89V6bgQL9xNQNLiNzczM0v9xjUlcbexxibb5czk3CtrU
	 tpmn78xa/EJMrnCt8lbZER5qDgZA08SbgOuV2tJ3V1v3mO8PBXCF/DMbVqj9wuziMV
	 RirmbRaZ0OvGqvvCnPKYB6O77jEqCEV06xatHPbUOQB8S5JLngy0+fERxmSf4xd68Q
	 H7zaevQdpYwgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E73C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490559361.21027.10310997789900080226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d2a8df4b767b92bd5b945e79798d4405a4d6840cf6af2bbe2888bc67e4207c
Date: Thu, 17 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744905593
