Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440D318DB0A
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745138394; cv=none; b=JQdrqJj8gd/oBVeMZx9ujO/VtF3usy+pZhI1rDOIbPCcbwawh9Pv6akXCd2/X6TN3oBd8+6zbBh9URVX8gFiCuFpr2fUsRvjiCilucgHTdtNMprALSGiE07AhKBU+RhiPOLZ+LfVrPhHYg3mEjFW5qPn+fqDvh2WvuppoUYBp/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745138394; c=relaxed/simple;
	bh=1TfakuMAJJy7AEBWVXnpzvwzE95UUoFjz7LnbicqP2o=;
	h=To:Subject:From:Message-Id:Date; b=lkX5tEvaVKzhqtbVEITABnpR9ohRNe7UeFGziHng1zxcUIENPoF+6rwJrdZf/JHCz7vEdqjGJtw6UkKb1kdTeoQmtO94Ds5at93rQIL9IWiR43i2kZfXoNIY/K0hYFNdvmkySaay6uXnDwIZNp7loOOpLoqgaXK4mvtu/T3Dhi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9ArmtD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9ArmtD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5853C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745138393;
	bh=1TfakuMAJJy7AEBWVXnpzvwzE95UUoFjz7LnbicqP2o=;
	h=To:Subject:From:Date:From;
	b=H9ArmtD+0YgUZ+Sr47fQiaFXtQnOImErbuEIbG2PO129+SuiJxwRktb7jZJV3yth8
	 0pfVcdDH55UK+53E3bx4s3f5OGzA4J3Bme3D6Sd1rrJM95WUkA5BdiYBDj39Rw0gq9
	 czTJe8NOnKYUH40hfxAckdBq77ELQbCXE9ngIa1fgoAOoxLcxFqC2XplXxYrSsg8w0
	 C8yHOUbyzeuXjVMnzE/CF+Mvxs8xan6wQv3XBUdg7AdccA6/QSz5PUF39Yu/L0+LWe
	 AfW9fuGII0UQVfowxM/RnkRfCa4updsN969u/ElfUAvv83esZlEzOVVS2wZNyxJpQx
	 xFbdlTRv+7eZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2EEC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513839360.6328.17396791363021202553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a62db0c91e3aeee4a4cbc00e013572978a2356cd18bf9f4ce045c790cac2b9c
Date: Sun, 20 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745138393
