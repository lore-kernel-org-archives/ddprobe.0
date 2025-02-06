Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D251E5B8A
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738853754; cv=none; b=M9KheXcbk+YoEu1iadl2RbZcvl5wBQ1mepf/m7vjU3u/kUhN6Wg4Xkx7sK1QMkNMQUJMtjh7OrFu4dDxwnsPnQJIYcRP8tQ9dzMtxpwNNYe6G7MfMmLzq6Efi12u541yzaaxBsjJupS1oiGA7r7IWhDuBW8K4ZNhPWnPaelHKA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738853754; c=relaxed/simple;
	bh=n5nazymOJcW4zYI1AIfwdgbHfttnvD0D1jVvzkMMjG4=;
	h=To:Subject:From:Message-Id:Date; b=iF/RyF7NXJgyEYn4w4tNIEtmfASK1Q+/o77dj/Em+FF3yC8IHwCE1wB6QnSbRO0nskCcd8S8cWdtOe6Az/gdtFkaR3xyk1wjqBFlRC7b73ndNbW3eiGjShXg0AcLycTpEZAqFp40VW0aIGXfOKC7v3lxQbiTEpZutn9NByw85/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5CJz4Ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5CJz4Ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5403C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738853753;
	bh=n5nazymOJcW4zYI1AIfwdgbHfttnvD0D1jVvzkMMjG4=;
	h=To:Subject:From:Date:From;
	b=q5CJz4EaWWyv4UfDYE/LpUJQ/7AobCEfcdgNemyIAGvHaxqPK2ttfHQJplOWtvFf7
	 4kuOMB3Sj3NnsQ2sex+gpFoIcOK+E+yiYnISg7VuJnuufAIvSMVT9H+ma6coo6ZdIX
	 qsWGFFO7ClAPEYzOOmLB1e1GVWf6HbxLDBRJPOEenOcZmF4jcTTlzIdyPxbV/oSX6f
	 ISUisbbk4lsqyqInsaa3wDW1dNRGGDoXQvSVeODPpIYnJLkgrU9p9Z1G38Etf/0Iex
	 rFovX5uatY8rRUzDuxJp8yuAhBwDWFQE3nRAhMWph/E83VJtAOniDnHfOMg4tanfOY
	 Y7cKgQ+WLqkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F4C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885375358.6296.3559803961015403875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5f3997873c0ef94b53f73300dcb1e9d11e936d9e705a818fcc9edb256a05d7
Date: Thu, 06 Feb 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738853753
