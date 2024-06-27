Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A971494A1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719506663; cv=none; b=NeoMmw0fY9tN4rOjPUDSvvRA5BfUoBt+HwUqS+h2htdpIvm+HGT9v1jjKLMMxuhOwEy61h3tSQdYSm97LwX9HQZ34Tek7Rw1yT0r0fshTQagjdjq9m5hYBCYqHcmMObSrdEuM+stYeHu8KhpdRojwIMPvIzRvItolaRqfLqcpxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719506663; c=relaxed/simple;
	bh=yHQ+355luFpvU3oIFWi9u6LKyMEXS7DA+Pl2H7w8ypU=;
	h=To:Subject:From:Message-Id:Date; b=PS1sphuZ6+5f0HUtYKX6WZS6BWJiPxU3kEp1s8xome3hYuzCBDOiHZZEKygpHJBHXtD1yrKRkesC/yP5i0/+9EPBe6uUcuhocIGUnzVX9+wpWau7Fu2hMHOBSi1sL0QXN3DcyVAPYjcG4KxWIcyHbihhkfBhYl2vNrfVRD53XCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEJp7M9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEJp7M9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D364BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719506662;
	bh=yHQ+355luFpvU3oIFWi9u6LKyMEXS7DA+Pl2H7w8ypU=;
	h=To:Subject:From:Date:From;
	b=gEJp7M9krAtsrJg9r0ExkTKPuQVZRCdE49gJIPFrP5j9uunYXG4HEkjEY0L3juTbl
	 DLUiWVeIjr5JDO8qecCIHXSyxcSxqfnfpohrRqgCJEp8Zd1Sk3JVAW40ocM01kPN4C
	 ojkz4mXBha1jK5XkMj2ZkSCsvNayvyPHngfMhWY7tbQSErgYkubkRreNipwI0ZaJxr
	 8dbiLymJcl5TVaHDN5HzDi7ewz8I3Gy29fWPYiU6M7vgvt+2QrNOs6qAPVugYC0vDd
	 JIf2KEupwMXsWLj++LpMmNUsKwmwheS0rOG2YTIPUDauingGxyDSnQGMHCwPvmWN+w
	 XQQa9fI6CDjGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF24DC3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950666277.10834.16270657387193906507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49fb8e326e4f62a2461ffca080799471fd0230b08e80f90bd7fea859ee4f15cd
Date: Thu, 27 Jun 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719506662
