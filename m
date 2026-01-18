Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337473595B
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768698234; cv=none; b=a1ass5UmUhBzLLhDwRobZz3dvZnwuVRl/fSq96a+wAh2+wUwvgrf3RpyXmW+9XCAK8RVWRh5PEtkjbGbwu4tYR2pp7jYttNjaNmt3bQYdzAttEdzxITZ7v1HIXuSCYXOmbrLtWqIhTDPAFvbaav+uXmpKtNnbwXOBNFkgUaig1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768698234; c=relaxed/simple;
	bh=LKy4Zv8cfImHg2b2hjNSayrPwKwFuvWTB3KJN9mHrxA=;
	h=To:Subject:From:Message-Id:Date; b=FZURBNGOCacisne+2CDI0OyycWwP0uq7LNOKz0M9Wo1GhDnsrEjQt2uyFNPH4Xe+Vu/eb6un/MvGbQ0lD37SNsFbqZoJEWd6pu3kmGm5mQGx5wt53VTf4kLgDzFYaFeSdtEmvxEZAHig9HvdtBPuTbCVVbp4+p9kC5WFtEVceHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5sf5NJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5sf5NJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60A1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768698233;
	bh=LKy4Zv8cfImHg2b2hjNSayrPwKwFuvWTB3KJN9mHrxA=;
	h=To:Subject:From:Date:From;
	b=N5sf5NJJo1jquGwNuGkqpnNsI8wGKJZxl4Zde3vsmesvXKCn8vVUCyLz0QGSOxEKw
	 c9Ro4vmAPcbiuPEM4rh8jCiVX5dds53dyVbBoQdOGZCZj4DmJ0sWOQOIhtmJ03FnPT
	 +jHiEMxHP/HvM0P2UEYQen9GCnaT8x/pBuRmWbU4pz8arq+LhugP89bPTf4ncRcUx3
	 oHcK0yi9/1E4n4ClCC/Cyf4wcifLTw9mU6uQ5sraNUmbRMdb1c254DzXoHSOiltiHV
	 0C8MHUDAXqKuLReiWVVOtwaaWAj0hM5ADpuUr+nTykD+3JDVRU6/0XRtTkQ4S6tb5X
	 euiVLUWXUO4DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92918CA5FEB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869823357.15429.1432796555792051850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7593c587c0eedc7e7269b04c6fba44fa45bf5bd0d206e785373b92749b0e675
Date: Sun, 18 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768698233
