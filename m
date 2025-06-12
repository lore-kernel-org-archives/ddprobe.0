Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224A4298994
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749748194; cv=none; b=PdZdsn5MMw3AXbNtd1/wOnf+UDqseuktwNltEDtXWlIddoVjKVixp+COJ122w+gt0If2ln9B+J4vRJA0YSFPbLu49yS6imrt56+ftH5UdoQAuiMsamTXxs6KhtPOFJyd7lc3dglUXnPMBDW58j/TSO97cxebGpK37REE65TlKRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749748194; c=relaxed/simple;
	bh=VR/9uVHmF91yD/Z32FSY/5drhNa7Y6PvvKt7gZ2wT+U=;
	h=To:Subject:From:Message-Id:Date; b=us4veFGwlHwpbFXSH6J2Kliu2W5M08kyXima/qF5D2R7mPch2FC09JZQCh2dDeBn562mLPnIrm9bd85HnHwaIxdqsauqhWbS9ahaeHm9TwGS/0kSBDfplsGi7SqQOfsS36Ose5kmIXC8lR3Kitwb+U4O5z4/zNMhtgYc9yeLYNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkEE6JFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkEE6JFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749748193;
	bh=VR/9uVHmF91yD/Z32FSY/5drhNa7Y6PvvKt7gZ2wT+U=;
	h=To:Subject:From:Date:From;
	b=RkEE6JFKFRD6pexSewGJ8SzN5bCK4TNeIDwNxxH3VGdJ8o5IKe44+moHtdqxxM1iP
	 bRUso9ULdha/uRjseOsBPyRfER3Hn6qnj12w/T+gkZe7OEQGM0zE2CM2Tx/GVffBVf
	 fc4qmbw5oKgriy6ewZoUl+J8J1irVOEQUpbBM3mAPrDxwhxvClm58o+zmk4qbtHSaY
	 vu1dUKlHomoCFV6O9UX5m6CZmREwt0Od2Cx08qnpmj8kjaS6epEekub5j1cWQnGfCr
	 ULikytQqR5GfAtvwWBHKEiNVGND2FfjEHg37ceKHdMGiJj0bf9E6OHm8XwOQN6RzMB
	 ZquogCn0X/hIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902BDC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974819358.5295.2075141251340294601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c8502e852fbb87ebc11f07fd1f5aea0375a9721c9b3d2235ac8e36c82ccb22
Date: Thu, 12 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749748193
