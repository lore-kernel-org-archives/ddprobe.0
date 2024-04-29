Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5715614A8D
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 08:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714378343; cv=none; b=Q8N9iewwV5MFZw42qqx/my7Nw9wT2HkkgOUenn91thyGxMdghGcPWWnHAu497zl5MqSvZuJcXmZRSYhBUYUDvoF73bS3zWn3VI2jhjMYsXp3+n7QJFxqh3ICMBve5j6BkkliYDpy+VpLIDpz5tMH025H+CEi8wDFX8SVrXL2+/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714378343; c=relaxed/simple;
	bh=pbeC26QSL47GM338XKTpeGhhJppSDmEgcug4xRMjLFw=;
	h=To:Subject:From:Message-Id:Date; b=DGUhWJTBvU8Ze+1UTUWAPRi/SSNfPYwMmw/kczJURuHdHmXjk7JPZs5/EILGEoYYGxtTcde2xnGyzYlR62MgrZLg83XbQP9a5av9UVCnSV1KAQQq3TX+xgXPXY1Q0/m07VPdzA5NvGibxBMJ4Fk9yiChwtTDoXcwaYKmnbYoc5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3ZnPuxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3ZnPuxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12B6C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714378342;
	bh=pbeC26QSL47GM338XKTpeGhhJppSDmEgcug4xRMjLFw=;
	h=To:Subject:From:Date:From;
	b=E3ZnPuxpiZrJ9oYKKEzdRzO2FLdErryTV4nmtX0FKvycdD/dS8+yBU9mJyXxZXc+g
	 dEyXRD0sYkOPr+Crk4xF5FrQoaOusfFGvrOTZJn0IaOYAq43+Ls9ihc66zrJPICuab
	 j2a+dLiS43K8BgGd8GTVNVQYm17yuodLGinLTQy8myti/UX2FV+IkjykWh5jGI3ayc
	 cPR0XoAZee8T2Dffca2mgtNQ4VPLtlGduUVF3Hr/bLpHcXMwdK0Z4K49/YR3tq4f9j
	 LMGjgZaoJmtIQXMR17EXbaag1dq7pZ+SXyndkMB6ZIQnH5E0Iq8Lxv6ogF+7HIpq7V
	 n5KsVeMYNdgGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB564C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171437834275.21235.11653712836698488535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03daee90fa1f4b610c30f3199ba607bcd71811bdbe82f22500ef5c36aacbc97
Date: Mon, 29 Apr 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714378342
