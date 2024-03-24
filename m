Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B955C911
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711324097; cv=none; b=Iva0s+etSyCCRh0pldyKOYTSzRBfL+oKpJHIhD50FFNGj92WGSP1ZLaz+Ea/mbsfueU01hsRj3Gjnuzp1OmXMA2L2omdKYrPxWPkHG0zLcxNgziMIUURhUfAeh2eiIS9ncpUht4jS95e516UZ0+Ba/LOwhtvPwYb+Qxm36FIFR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711324097; c=relaxed/simple;
	bh=JVRL3Rf81dOLkJM+BORis5i+De8kEgQ7kvgoh4XNiLw=;
	h=To:Subject:From:Message-Id:Date; b=sUPNauzbsUYEQAoEsj0Osp3iD/wqNpl3Rh0z9qWV6TzFW6lWu6eFJs7hk4hRi7OxVgGZx5Uac7Nk0CfhYPJNakBBR0j4zBkH4ZSb6xuerlUrECUn4PDGKAMbeUfOltymSAytYSXNqtVaVc2oQ5uGDl4gjehBZ32M5j2tHpjwYvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNx0Kbw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNx0Kbw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87AD0C433B2
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711324096;
	bh=JVRL3Rf81dOLkJM+BORis5i+De8kEgQ7kvgoh4XNiLw=;
	h=To:Subject:From:Date:From;
	b=KNx0Kbw/02gPl8JrQwvsCqJ/a96OHTM4/A03RqI1JtJcmxZIyhgPfq2LEuK5t2qmD
	 BMCa7mVy6jDmu22z8VKizSYuY77x6w25jmvHwCWVRDhpuHSBDcIMN+z1A9Xaa9hfI/
	 QSysOxuRHxvPPg/TlW7ZRwtyQExPE0ablpHQKznVH/XjEc5mHm7KHzKlkxz+9Zf5qe
	 59NwK6ur9VW0BBXtNrDGjblpEHmu09AvEQmYaWrEhONQI7kPjmskc9Mw12RQe7B6xz
	 +hBySs1Dk1+9FW1B0wbUIM8CcHdst+SRbJF+kupOecsTnCR6lvCIPvFGTp+Dl/vqos
	 DXcBmVrLcAElQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72898C54E58
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171132409642.13224.2372680427263335453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095b9170fecaea63b295d5c4b1b6031e4f996354fe25df5c268e975d0320864c
Date: Sun, 24 Mar 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711324096
