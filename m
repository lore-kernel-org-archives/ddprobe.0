Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16951349AF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775774254; cv=none; b=FwAEPUh2ppfwFl/dTHss+oZBRH5WzlPRgL5uAfqKanj7OU5aaxulPucFn8s72+qLEEFzZETRNBHB/dYqiHYnN3z3RoNMRgSo6ZuqyuK9ul60b6ZXR3NhKrAYiIw24+IcqMPV86IrtCwHw7m76JqmVEjLVY0Miy8OI5PMX9BFgbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775774254; c=relaxed/simple;
	bh=aSob2OiYh9/DtVdm78gp1jI7mkhNF/9UIxkAjwbBj8E=;
	h=To:Subject:From:Message-Id:Date; b=Z/Ed4GIoBO57Cn+r7GrAVkwNalkdHcmXAFaC/FhLS89wdPip6RNRBqUAWifs3+v9NYzf74vGPMooIexYlTMRCrkWi0+UOL/MxG5SQrkAppESbq3HSQle3o/cO6FDDT1q4Q0+4PG3H0ZCKhtwWPD0qy7chD4wa1TEXxHf2zcpS4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHOLC2R3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHOLC2R3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DEDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775774253;
	bh=aSob2OiYh9/DtVdm78gp1jI7mkhNF/9UIxkAjwbBj8E=;
	h=To:Subject:From:Date:From;
	b=VHOLC2R3AjYdBFOciQGl7OKIl1qoVRYDCeY6tBvY4SVmSuhBAUDXikILxLIqP14zI
	 +e12Le7l0J3eGjI0aYVVp8rqP8Ry8ai10L5NHVizevPay5PoqnZu/wKEb4DzQ/3lrq
	 +KAlMgvcK1pMYb92ew89f3ntQMnRlKU4DptCqctgcbiakwUTS8TVOyX/8IqOh9/Qvz
	 SVjzZVGKWbuwlbWrcJO/Ae5xrKtp+Q3Wyba1oLrcTL4u2NAIeJAj7yI0o7nFHVDtqS
	 5bbGwmY1775I+7h58nMJc9smMyoZE5D3+6o0C4YCvii7Pg8aVssPevYqDJvKBW3rDa
	 u+dvET+WPtksg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A71F364CA
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577425368.20379.9669238631525228121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cac6cbb3160d26abde24ecd91a357482599b3dcdeec6f892059f9d45f2c84b
Date: Thu, 09 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775774253
