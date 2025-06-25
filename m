Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E7F194A45
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750831194; cv=none; b=nsKLiul6GzyIzyjKLhdOaQcRCesRDuGL3jxsCYRXu3QdCVQiWFI7gCrf0j0J57s98ifOBa4ADemDZwFHddwr3VN8CPRq3gbvH78hg1G1+hIkiF1DSK3imQB27BtpXbUdUnTPvBXnl6ulfeDJF5/nMSUxIKOW1k62T6AnD6HUwCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750831194; c=relaxed/simple;
	bh=c25GKpIPXXy9QluGrljI1S+GReQQ5+X7RRjJt/Cc1jM=;
	h=To:Subject:From:Message-Id:Date; b=glJes0vOH7yZwEjaDw7ORBpuRFmlSDN5ZW63CpZGLDuoMbWHCEQkncwiKnqd938BwvqUbdWLd+vPEQ79YFDe8srcdrAAbOmY1qb5lusNvxRFd6tme8g3cZgkYT1CzB1bhDEAWdSIGRlGn2ZNYtWIywwAKI8PCoD2yjgnxIB1+Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnY7Rf7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnY7Rf7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED19C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750831193;
	bh=c25GKpIPXXy9QluGrljI1S+GReQQ5+X7RRjJt/Cc1jM=;
	h=To:Subject:From:Date:From;
	b=EnY7Rf7du68xMQh6xEvpxeRPG7o1SDqbUOw+8Z3FYFWtuRe8lCgugZXHSdBdJHHNe
	 CI1PCjdQd88JhK2o9a2IQj1bhB7NEFhHbHG9e/wVMFYQME6PO8uX2CI6TC/qfH/AsN
	 EZ7A+Sxk9kSPSY5zykrbu4Wauidm6HndoUgkK1IsqTLXdMvtaCyxux5lftxUI2sRBc
	 gIBRU5EJNvXFwejK7bltph4efddY32mKi+LLOJ4lP0xThAl8f30Z6+MeOHSTLzNQxd
	 hcrzzqdYiBOZ2SHXpfOcaMT0ghu+xnlGhYB7L68+Vu5NC5Wi0oqgl07QQ9VEqmhB/T
	 UTlfJNSZaSJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CFC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083119357.19291.8414815847828207431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73ef08df65fcd8f6d96a0fe1f71cb8f37cd7ba26d2c988393ec3082c398dae3
Date: Wed, 25 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750831193
