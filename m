Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D0F2E03FA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753897194; cv=none; b=Qzj4O1nQtLVrniz+HlZmiXcC9rmhoT94lhyhcDuhmTZQYYUK0F9Ek43C1nHVZO5oOAwfLsD9eItE9uJVpEEqwiQ/w2ogl6rPLviC/l9q6+YxoK6DkBzKj7geKomr9pmd3Y0wWTbF2CUyTtx7e/Zljdd0f1OCM97aVl4IRxqUfRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753897194; c=relaxed/simple;
	bh=+PnweyVe0FMg/2vB162g4jimp+UwqNLKz/U3rVxc/jU=;
	h=To:Subject:From:Message-Id:Date; b=Fej/h+bvwrM+bZP1Wo9y0zgWc8fiZu+WBFvXfwYF1LkpBmEfQn3iiH4ZBzhzUnmeiugw3qeNHbL6iXJmwMTSp5tGHWlmFvraalos+8bEJGxLJcDncSj1pAhGRHKoGf8QPlMGYmawRTzbajIM0rW16YGpXeWcaLzFhRmNj4lDfqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOP5RlMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOP5RlMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F19DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753897193;
	bh=+PnweyVe0FMg/2vB162g4jimp+UwqNLKz/U3rVxc/jU=;
	h=To:Subject:From:Date:From;
	b=lOP5RlMvUxuH1Y1typlWRt3DE7CVSq69NuosjSIuiRHgv7OVl70DMzuiGfYp5jZ8h
	 4LkA2ztSLZ6WEQN4V8lERGlvhk/fQymMy43Zse8xI+d359irYuWzc03AWdXAwP3j+G
	 OsPY0eukVa3AxgGdk3Fw2ptVeJXfRnZNm3yRUr+tw9QZkygLts6dPtORTMQNn87/Mp
	 PwSiAQRTNmwia9oyPXcCZkWi6OLSbusFGkEN4Bs3E4LhK14VFS1fpdg2iku2BjWddu
	 gjXvzsfuHhFP0OYvubliC61eXqywSelVY+4tz0HJwvOfKYSfJFL7CsROfG8zX2DPnz
	 3AffRM/oezCew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBDC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389719358.26194.2352038012583997743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba7cb4ffb1b6bff90c486a97a2f76d394975862ffbd29e487b50989296f5fa8
Date: Wed, 30 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753897193
