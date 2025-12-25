Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62F0274B30
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766684034; cv=none; b=Iwuh4DnKlXxjUqX1L7NDfNj6efF9TOsVQg36j/F0VAgbzmItmfPCwk7wp+GwKqzTLKetYqccCOFSMiy2Zp5vzeBtrCyHomRx0Qrz8IaKP/+lLAfWaM0y9TPkQmt7CDK0ju3ol+Xyk9tIliUHdjbs8pJsmpVKnLCn9GeTsQ/Sq5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766684034; c=relaxed/simple;
	bh=vNfDOdT/fLPedTrzC0PaPAomWxjRxGxASHGwfBRbm7M=;
	h=To:Subject:From:Message-Id:Date; b=hsoBIyFhdW8SNtUoUFcRXAqEAZBhtKzHG1LNhc0s5Th6yenWrDs34eJsTvI7XJc83/uW1xdXUSReDcpdgtCjHq4iy6R0c3ksXptpnLd7WX0WF0Xvfqfl+ODcLryBbBTgfmbUmN3js/WC8xBTH/rx9Tl4rKx9rkB6gGrHIua5N/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vE2R068a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE2R068a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04ECC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766684033;
	bh=vNfDOdT/fLPedTrzC0PaPAomWxjRxGxASHGwfBRbm7M=;
	h=To:Subject:From:Date:From;
	b=vE2R068aZQ5nT04muQSPoreZIWipu0AJOu/o+ZXlkpua0VxBHIA5hpTd5o++L/o01
	 +w98xpYXh3xOek2Bvje6dJRlFxDVnKL2SYATOX4mjXYYNx1JMgWYSbNQ1c89Amgp5V
	 FiJgnB1UqZwzOR4ZX3HEmGEjGWe0A3q3/FiN7px3HmfnzAewMtHfcRyrmjPouamRHY
	 znrw6nQY8dNSHLoY0QBdRyHEIrv/3MwZZqkgmre9jW3BdyIkmWXnGxEOxPuya4B49n
	 nL6iGpqY+a/udR1B9h/YOTpiCjsTfd+o3ZK45mWmJdbmaJE1SCPB6rDPEA7w+ARNvF
	 sdFLAhVlYe4wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B39E7AD66
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668403361.10084.12545489803841317545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf56f9cbb6c033e0a387502f410975cd472c3f06f28662ffcc7e89609fe3589
Date: Thu, 25 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766684033
