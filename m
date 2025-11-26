Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4EA249EB
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764120174; cv=none; b=lZB5ty7TduiRPG6ix/pbnIUDxjKH97E2Emia1tqwtfIiZx35HL/dSrh6BYoEEj1kwMYCPRi4f0gjmS/l0epGYb0xeuq87jz4oJsmcqRF86O0fPPK70bbrtGNHaq5woGP1/Y7OTe8Ro2ijAmDJds8RLLFY8CxwWz8Pi7pBFEezzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764120174; c=relaxed/simple;
	bh=sDER+bKlFGJfukVNqOuNxc+yv/PfiKNsArofFRT2rOA=;
	h=To:Subject:From:Message-Id:Date; b=T03SMpUc7r1WPqfbxvmzu9hG+YURTV+maz0v5Dq35JNwf5bRysT8ikb8nEgA24QrqxFWkX1tfnx1DyMYn1sILKP70gS0Hjyuz2m0Ik/j4HyECDzwFE1Y8qR7AAkPSgtOVa3tI1zEqrWipMR5HL8D1pxw3kcOlisHvNuO1LIZPZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXyknPyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXyknPyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77AFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764120173;
	bh=sDER+bKlFGJfukVNqOuNxc+yv/PfiKNsArofFRT2rOA=;
	h=To:Subject:From:Date:From;
	b=mXyknPyZU6bbwJ0m5bUm2fPY/0m8QdI2i+qo6caI601pMZqVRZD6bI5z29S078hyl
	 QgyFvb4bB5V4CPLiqgdfEhTtDfxIrxQwon7xeXoq50dY25GUOFjlinllzXGILTKw+d
	 s6EWqU7bV1HYd3QRtB107fnWBE+hyNgc+OV6eJRZ1omHJOSDgeIFXcKAziltmsiF5X
	 kIXomlv/05JSRMZfquR5XApWU6n8lR3e5BLvb2YAvCEqc9+51FX/W3sIM5cPj6qDXp
	 L/+NDMakrCt9VP8JH2VNU0yui2HQs0xCUtBn+M+mX8WCiC8PlcvNwzBCeQyye5QDR9
	 L1z4Nt9kfg2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E28D1036F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412017358.17889.11799585879942865464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811b490ddde224ac148523126a400e8852ecec86130640d7fc5ad72e166ea865
Date: Wed, 26 Nov 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764120173
