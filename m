Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472A9101C4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720835363; cv=none; b=jO36sxF2ck9w3O3BNSYFV4gS5oS968HTJqp5uvI19+GyksiYc01Y2ei8Pb9ePvx1GfYL869Z5FWTq6wpKRm1AXwOqAvHvtm/8ac5PTaF7cFXXcL0d9RRT7H0SgkB6P3UJZqNDGa5rYOBeJaBL6UyKyh37PAgeju6yYma5yX6N1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720835363; c=relaxed/simple;
	bh=xCpl4tB2VhMxis5VkEZ+crBg9McjShLKi32/Ng394rw=;
	h=To:Subject:From:Message-Id:Date; b=tMNPwy5IIQhDIiS2SXOVx0tEqaD5JXxscH6rwn6wkJaq53MgdPTf2xcHhU/O4KL+V017XGpFE0CHoaWxHHi0M8fSuIzUdqI8EGKrq+/ejSiAmHcuB4EztIaZVdOsPM5C8TX/dwRCt7hgj9YDJ9smTNo7RwmN9X3m/ehZ7zKxX2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b41tlpMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b41tlpMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D719DC32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720835362;
	bh=xCpl4tB2VhMxis5VkEZ+crBg9McjShLKi32/Ng394rw=;
	h=To:Subject:From:Date:From;
	b=b41tlpMXx+lGNqlLQzx7dHpq8C3DhXssfAV9F2jRN5QAiXDj9UG+uvUa9Zar8AFAA
	 P6Alhwh8Yum65kEjW5+HkcxLfPwJ2xt2+8/rFhhbaWfX1UeeDgDWoIkKsBgr5UQXv4
	 Ztlb+kPvYCk6xixCvSAi7jrvCnmbRYEJaqwDk0MPHHGj8F8HPUUk2AohPfVlPnwy+z
	 OrSmBvhkhEKOcDJlOhgD+lhdygYsRs9hRhTpX8nrwuWbwQhciFBzPL/jCDNpk8xrKr
	 dMlJTcVhS2S3z9vAJqpo3sCGdrhpS4JSdCcnz69R0a1kPv7iDWLc40tINKB89dxg37
	 E4Yb/4iyLwNDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B95C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083536276.23778.454909757599790804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f5572530c7b927cb121606f36e2de6dc3fdb6ffb3c8762eb08fd399802fef9
Date: Sat, 13 Jul 2024 01:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720835362
