Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4ED57D203
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788889234; cv=none; b=jpryOrkQhzv1m0rJ+cc2gkv4EahzTy8oRYpKOAlauwrGC0XxxA4hCLXH4giyrbG0CPzGf3nDo5aaKws7mMa+pRqqhyQwnmGMQDSWGP8Eitj+0WErUI1N846Dzz0kXh07swBB4Jr3uW3rUZKfcO+S6cNZnfUWKTgNlUGJ4hWrMjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788889234; c=relaxed/simple;
	bh=Bmay49uCipwYokyVpn/b54bwHQKChq0L/rb418G+Xx4=;
	h=To:Subject:From:Message-Id:Date; b=NhVwSlPALaE3NOXrxNwiPF2WSz5UBlSZpVP1I2jfhxPjjlth2hqnzcTz/kfsKgthi63Uxk/fwMLtHRzFZy2/E9IovwzgsRONGk1LIxDodwY61bMwZVdLZv0gFHVr7OUtjEWVDjIoQVMeWzW36V7c/CbMUv3S12cF5G/v2If2/oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJuKpXcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJuKpXcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FC3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788889233;
	bh=Bmay49uCipwYokyVpn/b54bwHQKChq0L/rb418G+Xx4=;
	h=To:Subject:From:Date:From;
	b=GJuKpXcYKTf3Mg6hJMAKfv1Esc5eP4sT923pW/WCHMk/UfNKKM+AyVQAb05fK4FKL
	 6Hf5F0gwcKPO4j5B3JG9gpiK0bBACwrWp9L54bbyHdzSlwsis8VVQPjg/QCr4ulIrd
	 OhG9Cp+Fuj+NdmznqWkiUsbHCEQz9oI+qWMvo+vpgvlWPK7hUMbZCqcpiIiBmREC3a
	 1K/z3wfJS8DNX5Kpr+AJZeR6ZZwHyvfaldt+/fBw6Qidovleg6iKkc9+9+B3EitOYC
	 RS6jH4nqv9Ijr5CC86RR47x7XETT/rhfscAmHr3ycMPT5HW/tzl2KTR8rj4NfH5Pzv
	 9JZYnZK/0wSJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6DAC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888923375.9915.4443439872582164553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6321539ccb4824b9b0ad422b45b468da29efada0e61a356df7d5805f88143c
Date: Tue, 08 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788889233
