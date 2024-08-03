Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1CC13B7BC
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722662754; cv=none; b=cH98sVVmi9FCUYAvr+mESeBcSDjYLzuF1En2QzVkZCcNVvnDsQywqaex2FIBDgQa3kwrnKonSkXg+lSx+Mr/L10lwp5DgEV2OF9v3RFkHHruWeXsokdWbkdYgcURPq1lSuTmznak+ASnRgrRAic9avVwJwmIi3qSOOYDkhn+Rbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722662754; c=relaxed/simple;
	bh=IDJZRQH5FZ96d3msN1rOYbOCOFif8qaQwR0VrYg/H/k=;
	h=To:Subject:From:Message-Id:Date; b=tUZmNnxpFVe30559XRRPNLdMeieuiY184Jgf8Ym1wcDNWxms58DzkZ1YPameUCz4mf3bSeoQrSiX+eUdTtQcaSZvqLpeWjc/rC9OcTBNKF+JzH84Jwd4ptVBC6YnFxiUh6UH7waMHjeXcYvaYX/Cm5z22P0uO40pHsPZQx/zi9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+kB4QKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+kB4QKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4577C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722662753;
	bh=IDJZRQH5FZ96d3msN1rOYbOCOFif8qaQwR0VrYg/H/k=;
	h=To:Subject:From:Date:From;
	b=C+kB4QKm4rKduZK9XMPVHMSYp4p9+8z6sMOw4a2WX0lJK7JMLvL8rNt6THRD0aBx0
	 bEk/Hk1evpdPy9fBSec3ui9byLwgnixFxT8M7Jl4YQGZo4sz92gDTOpYgWKZph0WEs
	 fIHfbLATkpFswLIsEtHrl6/b2NyLOwzxHkRZn6EZHCPL4Z/002Y8j1YzjCAeok9s7B
	 UtmhQdll6wFHcRML906GBeGqtEukjnLPae6AzFMieq+z/Sivr5zvqmg4L+QpFTjQVb
	 /eTrpgC77Z5moWY7eOjtp6RxgTYKq9na8yqT8tHESlKZTCkCiWAU7sDIQQtK9ig5gT
	 Mtc4FDlD9+gKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11CBC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172266275363.25875.3779076773367971644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ee6ad839d17672a2f0ce6da56b9262b5b85d8648826df11943f691be1a0e7d
Date: Sat, 03 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722662753
