Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F30F9EC
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756599594; cv=none; b=YuXhGQ6ngV74S28IHX5AXoCutAOYOiA61R/GYLiJ/s6d6HB+tasMDZMvSN7JDMeTJdaKpoyRhR80tlcvsSVSYMKPXwXZuJ1WcL7K6jE6QoK1rKvdgSsjq9z0v3azwN7kTE5BXGM5+mIF9lNPLYNPPGG8RXCvNKS0ddMsDa0WP2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756599594; c=relaxed/simple;
	bh=aX7y78BTADKiilctNLRQYMfmPIi8uSlA3Rw0sZ5HqVk=;
	h=To:Subject:From:Message-Id:Date; b=jtBjdmpoAIIcVrjAdp8EqAt7OLIPj2aZucwaJ6NI20dsTkg6UrZ0Rs1o49Li3lsyLOoqtJrRw93xQk2GBRbAf4CS04GnWQ9gD87PzKacpZ6uHa+0d1HVVHwnfY+dLXCbmtm9RwGiZVwj5E9amEu8OQGYU/+3sGTPJ0EgEOZWGko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSrGS8Ki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSrGS8Ki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF47C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756599593;
	bh=aX7y78BTADKiilctNLRQYMfmPIi8uSlA3Rw0sZ5HqVk=;
	h=To:Subject:From:Date:From;
	b=hSrGS8KiPXC4QB7us9vm5+1DGlIjQWuqGDmR6WXR2cUL4D+CaIhn8ZaHEeoVV7uFi
	 1WJ4WDkQvzCncMvnD9LvIOwV6L9iuKy7hc4QfkYFh4FRekDtQkf3D1kSS2Lqp1D+vb
	 J7/tzvQxc/i+2dbNJ55cz48DDXf0Pe83kLIPxFaIX9GIxwgZyzVD0LVrIerXIAslHT
	 aabpZCn/JXyWSWMDzOW/+nkgpANDLuOE1hxJPwZbyT4KHgZMAcYXhcyw/DHrwKKbdk
	 40gCE81j3GohpDui1HAp3+YGMlALaIu0Wtdpnjn4zgbSp7tvoFi0s5Ef6XnL7eHh7f
	 ITHuTCA9GIkCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B277CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659959357.14758.2231526980823086064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda8323aeb8af30ad28aeb4f941d2e5352937d941aec72d50fb7d235ad4ed962
Date: Sun, 31 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756599593
