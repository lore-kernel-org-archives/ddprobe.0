Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DEF2BD591
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751536194; cv=none; b=jpWNA1TTh3vgFrlrj51nNjoOI/wrBk+7tJY/sEAKrusHnT2jg7+2TSjzWLNJWa1x6YsJ3FGX9+PoFZQ1qawPkA+FRbP5S44vZ1C4XQl3nDhJiQBT+R/f4bF1O9JY4FOfqxrzAgs0fvMn8vl929kQXYJ6+BPXaC2c63NamMLmy7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751536194; c=relaxed/simple;
	bh=K2xWN/dKWh6saO94/bS9f5cKf0N33PQOE9HayiidSyY=;
	h=To:Subject:From:Message-Id:Date; b=DdI+9YOXJKBacMMwMgEwcol66FK+qkOIF2OpERzJ9oDDI70nxU/DUtSpif57yCkxuOn5Z3oCsE2TN1zoqSBWpySxkFV58QfBj0OUQTVdGLPEPBbUMYzalPDnM9geh8/nwvTicng4cFscWWwP20EF11xY7JKu+sgnu8LckErbi3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNURc2lV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNURc2lV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6320C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751536193;
	bh=K2xWN/dKWh6saO94/bS9f5cKf0N33PQOE9HayiidSyY=;
	h=To:Subject:From:Date:From;
	b=ZNURc2lV9C6Ht9XaPlDaCl0qClpT8Z+mp33esgwmiPd0QAGM1LnM6CRraV0A626+V
	 T9fs/5ByZwlxQz8upc0MVWoomHWP6qGKgj3bv7Cql+JDXrQ5ScPP1mkO2lWHYyftkQ
	 1wWpiW6wPgfxMPdC0EvrSr3DN0ot5KlO5VkgwBjEwAyAW9M+X9ej41YSxqbJemwvxY
	 /ZI8hVsLhS03/URwwZS5af18NkF7Zy0n9jBAtVAgxL1jr5F9Nm2HP6LXAhtJHEuxIZ
	 Q0oeWoyYQNSDZyWawVn3DQAv1MMLmWZy1h+gaoBDj4rfPiU8ogyt4iMq6Pon3k3pgL
	 eTipMv3IdKjOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AF4C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153619358.13462.940844109099752163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db24f045898219a9895f896a0e87b34a0097a324502b601c4cdd1f66397cdd7
Date: Thu, 03 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751536193
