Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE682376F8
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757993394; cv=none; b=GlaJ06509IerDwj/KJLG7nRUCtdzY/zL8jjgsDXJsaYJ9ioSN6/XqjiIPdTqjSM4uGSuOSOJ+NkPxQXfsWyIaF52zdivNNf8aE8Y7oq6R8fw74hCriS4nvdjMeeHvB1L+ch7U54hWz3B7OAsJVXrLffMG6dEBQnbWlx/t4Sb1fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757993394; c=relaxed/simple;
	bh=ZzvC2FJ4QVK65v1zIijVjR++AFmm8Dq9ia7ICdhsj0g=;
	h=To:Subject:From:Message-Id:Date; b=dvkDA0XgQHALmJyHCRdQjsvplelWIVGNVbi2zMXRsJIVkLT2+Oq/QnPXAc1GlxZq+1qCG1okOSCio8cV0KhdGZq3HOaGtl0hHs32vvrBrp20DJcwfoUC+hFF/Q5xqBJxsB1dSp9rH+VgQCoYttgVyLGF8LLlqeBRbBCj8/CG48E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zatojlgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zatojlgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A079FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757993393;
	bh=ZzvC2FJ4QVK65v1zIijVjR++AFmm8Dq9ia7ICdhsj0g=;
	h=To:Subject:From:Date:From;
	b=ZatojlgpcNN68aE1g4o8sQRUOFNIL1JVgLXjUhCWFUt1zN9XmqFiOK2K/jwhFqhit
	 TBf+64bU8N2X7VtjSVKhWI1fFdGgJi97m2Jim5le0DXb1oayW9tWYgjtFrRgBK2y8b
	 8fqKEMvVxWzOQru5wGH27AxMhvEPalDnfMwnakltgG/DiAAsIZ7Wd0QzDWPzVIG+rq
	 rlboIZqnnozzXejfcf+oSuD6qOBb6b++Uy3or4ahnaEaNG7TIcByEuqRqO+5NJoSr+
	 lfU0cFisZE9+/peHfv+eC3TW9tCor3RH3xY0TgnOLHsVawMgMRgU2SyWkqc9LzdauM
	 Us8q6qlrCqg0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C1CAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799339357.31813.11097606720284792904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec0270985749fe68d69316c8e6124b4db4bc5fb6d1055d35f9a376bbd19faac
Date: Tue, 16 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757993393
