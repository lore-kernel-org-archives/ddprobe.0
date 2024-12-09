Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DD719F41D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733783754; cv=none; b=CVxYBHHHrhpPD2+70tWzZrGB0usZCQUZTFjWDZwBNqboH0GL8eNdquA1dGVUpp7Z6bHYIJIJQWrT7Q5rUDeAbmKnT/meudrK9jWnzOk+esk2vtS/xSTb4AuP1mqGQMvLPtynvncn+SNLGt0m47tdYa1NvFvKbncmnqVQLXAfCNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733783754; c=relaxed/simple;
	bh=8m53CmpADBJw9K2j787AegvESOKBi823e5tJ0fIkO9Y=;
	h=To:Subject:From:Message-Id:Date; b=B7q5eRSLZJcQUNQzoiT1b51whzNpIVOADYMOLrtgOy6SuXI2sAwevmAri5r4r9XVVIzsNVtmT8eqvgAU6mA7FiGPSh742xYnDOdxwIgKBRidPAcPUOVOgdvUdHvUxaT8EZP+dC4UyDNqr5sczwswe4Ud1RsxUPwvqt3K92gpwmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5ZQGcuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5ZQGcuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB188C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733783753;
	bh=8m53CmpADBJw9K2j787AegvESOKBi823e5tJ0fIkO9Y=;
	h=To:Subject:From:Date:From;
	b=q5ZQGcuOsrT4Mo/qskPmsIbvonv5JLl9Itw+F+bnFXtEFhthMpcEnhV3SKC7ASDSm
	 7jLpXJhb49yKy43SoKX9O6VOkZOoEevngY1ghIj21B7J3wy6SDuJcd1OiXY/er3/99
	 iW2EsahcT4UPpc6JcYy0txAq4qXXs38VOz+XazX9Io3iDVtzkptZ/gPLq1kXViSHDv
	 2c4b3dFfKAZcOr0fwMR0NnpaMi8NCSPooKExVvle3LW0IVhLo9K1px71HRpD+K3BWj
	 /nWevI+4eq81dmMHxJhyR8MsnIkKyoAC7VXirOI7UWBT7Hl/rZN2lhDlWQ6cRu2NBQ
	 eA507OROBOaMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DB7E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173378375365.24204.5950278091786245457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43ace9e28492a29d2cd18c17dfa4d25386560980c16a6fab337a88c06c296f4
Date: Mon, 09 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733783753
