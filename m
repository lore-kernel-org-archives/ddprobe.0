Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D36374E41
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773664494; cv=none; b=fPq5/B/KzomNYVgwI/oVXSiwl8zUvzFGinwS4IPakxOgWayirFVHeArsDz1jMQMTUDf3rvSnFxXGgAHNn+olWTevqsDSwfXZJVxHfIeIovq4102VaaxbSxGBmjfPZ/zu1h0BOUiavE6HqjwPqwA9TZNg0UnqocnLcaKGsvgqBIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773664494; c=relaxed/simple;
	bh=zC9Asdu32U5n/71orWcyoJVOoNq9fCHpkjKmTOHbGNA=;
	h=To:Subject:From:Message-Id:Date; b=YtMHn3K7HnOcK9Gx1erj+MELVXHFoPPiIM29Pb3U8uyBPRaVLCiRKfG7blI6yYgDb7v88Vhk/VOYwMxqRH6g/NRcE+kLW6ehZhEjIxdaekUxs3NeOoP7ae0KkgR2hkaDbMUQCn6/EKfFq38JWKO2XEy3FLcbFnCRWKWedzWZWmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0mawoW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0mawoW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5C7C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773664493;
	bh=zC9Asdu32U5n/71orWcyoJVOoNq9fCHpkjKmTOHbGNA=;
	h=To:Subject:From:Date:From;
	b=P0mawoW5LE/2SDzVbwIofO+g4MM9fsnlzO5r2uCdy+gkQZ5EGX8uHzdNNC+5+ev9w
	 cLjs2MoEyfk4C2bpXqx/a4N7RAR350zVU2gRQ3ihwqFhG8GpaneLkcy5aR1aLkUcag
	 PooH/ogWaWqjTtiZa9s74YwqfHSqqlqMUl8NwuveutpV0d9EAiaSzWe/jx7AxlVwP7
	 IpE+LhXo5LFcsftf8Rc/KujKMIMJK4enJn63oWTh+AGxHWtf5E5hF3Vd7WleCZtzMB
	 ETC+FNDfnDTljGrkNUQ3xx0Y2FbMUJTDF5sj3qePWKWwT5zjMYfqSrubaSbOcl3PzS
	 0xKFZxjXQDxjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90333F506C1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366449358.28883.9351089970007841899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf2e5c5da70fa57d0297575fecd23deb32c1f073007197cc77a46d146ece751
Date: Mon, 16 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773664493
