Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB633264CA
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778878834; cv=none; b=A9s5bhbz/T2m2TeFfPJdVa3dBRHrYMshbHIGiQgrP98+p+r4QavTbVxgE6Gt1GvZGKsWpQ4BIsGtIN+0yNDedGfPX45tGlAKt3RWMBnAOfd2qVIc+HeWyjXCk8EYaPEre6mYQTjUK/ZNXc1miyAa12V9329IbkbvIkIIOAgnPvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778878834; c=relaxed/simple;
	bh=yk9OGKEHAEvwt/esoWXsqEZyZtOAw9FA72kosaXmuFI=;
	h=To:Subject:From:Message-Id:Date; b=cp3uGFCwc2aYImU4yBqSH98S4eCdb60KhCLjEc2RhLMYFkP3jNI9LjPkgyMkmnJroeq9D0/X8jGkb2OiIxSTK9Tyo/QjHQJUu9T8py2cjpcRn0DVr+2j0kmujR7vldK79oakV0HdOJJj+C84/FXeAsRMTYulhZ4OX2oc5qZprPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8Utaj2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8Utaj2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD534C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778878833;
	bh=yk9OGKEHAEvwt/esoWXsqEZyZtOAw9FA72kosaXmuFI=;
	h=To:Subject:From:Date:From;
	b=m8Utaj2/IFG+Zw+G/p7rtC0Lq7aMk0OkEJnT5AXRasFxW8ya/KVesyL3aRI8rwl4f
	 IFD+ZBsVsm+MdTr+k+vnChzSAhxdtzgmmu3EmrE3Q9gxfOHt3B6orHzbDXgbz9PSR1
	 quuUujcm8POppIBdzrMadw8mpwg3AYvSbjoDWqZn1E7gFFyOfqxTiFwaA6t9FmOqZ4
	 b0LUH6WC/wlc522rB7K1U7B0KgA1zISs23prO3wqrwnPGMkweXueedoN7BdopBvs5C
	 7sk2sSNoCuEyMcX+fBWXZ15AZKJYWemxpIpksibLXOuAJwNCTN1lT0yOrMkQSrU7SR
	 Us4bCmcRplfnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA09CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887883368.28315.7153435542975696156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95fe06ff6788e92051a5e92878cc3899c72131e3219108a86bc3a11ef8cb623f
Date: Fri, 15 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778878833
