Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5526C481FD1
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788281434; cv=none; b=luN+PIQHOqZpBExyLXH88U/4zE8BJg0RFO+OA5sVAdCrz/bkZGI/3JRctltAqHCgX42ro7xYCiTd+FBnU+MUiN3kWxvjpXmfW7eijUoz2OVDUvEk3QEirx31xqroN1mGUiLUFJKbbNSyaf5WGRxo7b0iOjdCkrLe0xvGiXdOpRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788281434; c=relaxed/simple;
	bh=VJ2Wj7Efj6fSAyU5L4BjT1oUvk2KHq5pSjET2lqQI4k=;
	h=To:Subject:From:Message-Id:Date; b=og0VdmvHRa+YqUDlg2m5fE+jURUK5/c7rERGU6tVxYJVWay7aSHuUzmzvMKg0Z7DpGy344K/kJvhZaHMUWw9d/a0BX59SOtl3WcalO/S6q2XO4uWrsEKQX/Jn7dOtCgFe65XhN2Y+p0LfMmhPtzkhKfh76bSkfkQVmvoV6SQnbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gr8lo/do; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gr8lo/do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04BEC2BCFC
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788281433;
	bh=VJ2Wj7Efj6fSAyU5L4BjT1oUvk2KHq5pSjET2lqQI4k=;
	h=To:Subject:From:Date:From;
	b=gr8lo/doI+oTK9NF8E52nUfmEPn/GdMDPng9SA9UOzlSitJLLKBmRO8bKEXe7OO0a
	 633uU1Huaeg+L3LRedb8YOQTA5jdligua5sxoDIBAKJHA2aabmXsOtjZedIqB4jCAu
	 2KqrLKj5dVOh3O5h/NkyvDbMBJfNTqGt+k6Unhr8soEfChkVpYkWhUQSWLOQTTXnDD
	 qd/Fuqv3YZqp/hgIscACDjpouFxeikFcso8ZPHxAzbM3LtXasHQd8AesluWODdtMkd
	 CWdFmPip/tAXu4hWgnXN+eGIhf7ve4tUaN9+Q/IVWy+Ht0jdaK7eMP/t9jXXIQP9yo
	 AdtQeTMWm4QNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB146C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828143369.2876.6874853926734685692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a66b08e747651f7e225d733bd4a6e7b352df4aee9aed034e935b612860dd35
Date: Tue, 01 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788281433
