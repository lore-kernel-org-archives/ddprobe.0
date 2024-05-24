Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D7519B
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 01:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716514403; cv=none; b=j28UerqazKuJiz2gfEQkOKwfcNhaKocDtCUUhW2rPPfS2Rmp+wZcOn8q9O0hiQEaNClNxT96XgUEQRYJha5wbjrNpLmL33KbFNs09xvWDR97YINcr0oX1OzgecaMl787k1Koxm4oIPhw4MI0izNZjtNs25tmy8ZCAm5sue26eag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716514403; c=relaxed/simple;
	bh=H93rOADircOttXSm9WODXPs3ArgVxSEJGPjl2PlJ26U=;
	h=To:Subject:From:Message-Id:Date; b=Ycl7y5zsaTWljBMdufoKJck6oLsfJ81XmzI+eQznIBBhMb4ejJFxDaVvUVtsbMqm61ZIHAxdf2gY0N2maATJ/uFdr+sBfvgQVO5dmc4uso5htzX4TLo+NRFyyKkfviL4Igq43L+feSI6BrR6Be9MEO1qt4+X6vz+gbQvKTMif9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFHvHp4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFHvHp4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB644C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 01:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716514402;
	bh=H93rOADircOttXSm9WODXPs3ArgVxSEJGPjl2PlJ26U=;
	h=To:Subject:From:Date:From;
	b=bFHvHp4Yi/otb2OzTFZktTnFVp0MFZNk6KWmuhF2hVJokSvPDOn78wiwd7F0167zh
	 jDIsh4FUubn5NOeWKHHvc2FKXhFgi5NB7Rjr+vaPd67jhiLATKSq4IWZdhK8MbWF9y
	 VAoBvS2pkU8cGPB8b2SSOm8Cqwsc0f3HCJ5T2Y2xHJKqLUbqtGTdE/oBJuQaF7Q4pL
	 2BaVXb0+oZDKC/hEn38Jbuc0fusddnEHR9dfKC1YxOX4qUnAW1JKaZNAv6IpK6z07Q
	 Vg/iNuWJ3anyVGaxlLxkG096zNsfECUkWNIYqL8Z23uC9NeSiWA4X1cD9SrtEzHIS3
	 iKkyjn6qOycVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A70C25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 01:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651440277.25500.16412522828362492889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde4a9499a070a9c5091ffa295d64f8f58dee516f55ecae4107a78222ae804fb
Date: Fri, 24 May 2024 01:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716514402
