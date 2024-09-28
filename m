Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D60B14F119
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727516754; cv=none; b=X+yqisfZ5HCpSOLE5htSEnSoqwMY7qc4Q1HV/PrX/FOqXZksicNL6zdyzYpPnOhbRDXsAZLcvm7sBLTevyT7Q4xG6orAKVk8JbldarCPEz6uiwZL18OWXixP6sXm+yq/k8QTkduI0xw6NiAvKXR8VTZ5Le72ys2m6ma1/ICjdnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727516754; c=relaxed/simple;
	bh=TBbR5NfUVtKpg9zSMkv/SRLmNSzvlX4AmqsvCnqngg4=;
	h=To:Subject:From:Message-Id:Date; b=OsKg6YAKhSaplhxr8B1ViuAjAExFWopiwz2mAtHA/PUtd2CcKAZH0v2KxZp/I6lmYDHdacRzBqfFNSApV+ivIzQrCDXrWyDyaWi16ZhIdWb+U3/TEEMGUf1HQzLZ5sXecAVv8cniajEiqw0AaU22KTJKUvDJHtt5jTodOOF3POo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixju6u/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixju6u/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A330CC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727516753;
	bh=TBbR5NfUVtKpg9zSMkv/SRLmNSzvlX4AmqsvCnqngg4=;
	h=To:Subject:From:Date:From;
	b=ixju6u/qpxmgmwEix1GjwZlvBMI/P3O65djqHz3ZySci/CUlc1Dwrj4U23ujJhBmQ
	 D01qI+piPEfhb0ZPPBq7eQakuuWamPbA5I/nHcjbIcZvKwiKPZuVMU0NkFHhBKGFcs
	 dSGJkZIRCG9TuV/L9xc6UIgoYINokbxL8gpvGDmJRDRuJIIlQi3VPMzI/tMSby39zq
	 QNd5tGDMWsIN4qFmk6c2SL/y/xI1IXPYirmuCoyXk+oG2grdU7tUcMaJ3+YKX3V5I7
	 z5+LzoWQxzJyokgzArWUb3FRyUeQXPtPcayrIxAvi9VQSBYvxyeYY3AdtIH+0kJI1d
	 vZJUyjpn0mYoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E1CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751675358.15866.17974774423961870313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ba9a51260349eb53b4e37a83700ab8364a60d76ce455ca793de707df70d375
Date: Sat, 28 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727516753
