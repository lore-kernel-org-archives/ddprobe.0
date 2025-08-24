Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1433C23236D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756015794; cv=none; b=AZfi3+idGuYJsqm9CW+pRPVjBaYZUCUVsrv4ddgnIWtupaWgvSP0EPDE58cQ06Jcerpl/1xIesGVcuISgUtL0ZPmYPvNrDBycsafFeaqUTJ7FW4SyrhtcPkdz0y9/XTtfY8/RwWXVK8tByP/zRd6NVNlmZO1K7xJWRVLfDfYSMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756015794; c=relaxed/simple;
	bh=HSbcp2X3hsnYHNfd56cs0v8qThpjjJPAM7cJ0Cf1OjQ=;
	h=To:Subject:From:Message-Id:Date; b=mVlqA+mebXni9Jp9qTL+datNsHmxBrtc7321WgK2683bQuIBTXxXzvVjMSUGwrED/6CsG6a8bSCSWWm2jCkN+J4QsLlhdlNzmBig2M6YfwcvxRUbmQIeUWehM2aYPAaF7JwLNu0XF5veO+umFggXo8Z1UG44lQfCtxCt63qrChw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGk4I5z9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGk4I5z9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C81C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756015793;
	bh=HSbcp2X3hsnYHNfd56cs0v8qThpjjJPAM7cJ0Cf1OjQ=;
	h=To:Subject:From:Date:From;
	b=XGk4I5z9MkgDbpjrQFgJzJ0xUCXbAyWEaUxzcY+bLjpcA6rh2Uv+gmKot6QCVvfZS
	 4wib5Q7Uh64sSfvxqGMsZhtyvkapJrYifcu39HwkLhzgXMPf+PO+Jjtvfsh5ebXDIe
	 Ts3ugIrPzdgX3O7orUnXo1k/ZAZ7gi8DGzx40YHmStqww5h37c6sLjq1MpfJGfq8PH
	 nq+wniF+58jeNgT/2gmIHFEmFEu0PsB0d1ohIFYTithBm2T0GmnQptrhfLK9QzbK3Y
	 BfOt8Aosk+nzGeRvI1GF/D3TmxiVXOuyiEibKVyUFH2FcbWtQ6RdUlDLpi7lI/jQpY
	 hrGNCNRpd9nSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F878CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601579357.31789.3051321432313967135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87990c3c08dda7d0affe1e12c76ba9362137930487d9cdb439b57f504ef8e47b
Date: Sun, 24 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756015793
