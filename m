Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91474302E1
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787753434; cv=none; b=SlUueDxibRHCIyODd2WrnJ9YbCQ6MaHaB1fEY9hv7k5Tz7L/uKdMLOCvdCLvNx3ijdJGkrpXxl3demeB9asQxaTM31YJmmOlfE5zlcvkmcopkOyFIIiChGmKocMHFKwwYAVDvVgchJO8k4teYmX1a8ag0ASSE11V/VNgwb7Quds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787753434; c=relaxed/simple;
	bh=ytbAbVwOVHnBjuU+oOcFStYjLPbgR9l1SDHaPqePJk8=;
	h=To:Subject:From:Message-Id:Date; b=OdFGDp5APWg0ykXgyoU+HAP/HAzsBdy+9eGA075ZL2AUB4jeU/YjROzGJsvQ+u5urvC6Aw03k77lBkK2xIaC2n2bpJwPlMGKk8sxDk2Cia7EF2DmoYaar/85Bw0zSQDzF4ku3fVdajpzCOW0zvAnfpuzGbg9AUpG9yMysdDoaIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLJlJQTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLJlJQTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E96E2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787753433;
	bh=ytbAbVwOVHnBjuU+oOcFStYjLPbgR9l1SDHaPqePJk8=;
	h=To:Subject:From:Date:From;
	b=HLJlJQTYCRDx0HNKUjGJ3cAwfrrL4ziKpkKZUuhscF/a+UK2Wz4rQd3Czp3rpTaTz
	 nZ81292UUpiBrKo5+vM9X5/kgAiRw436vt8Fkt5VPfUB9NAAY/ImJPccPFhx231UXQ
	 CTfgnnWQMV/+QEHVgRSWK2+xZZvP1MYRBZ64pCLo9VSclhPAOVEiNlYH42ixNEP1yF
	 JRZ0EjMfXW1dxjWilHBX5ZZfogkFCJqHVDKgdAh9RXchMqK3D/yuMrTZA26Cwl9Qse
	 oMVFcRY7F3LiI8uwu7tXO+jMxBEusRkYpPjTtv3m2OdOmCpVPoSuEB/l1VHYRcJxRe
	 OWOqo5jl+oLXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD78EC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775343370.2699.14445875219787399178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ca23d8fdb14d696ecbd05a5f2b5c41941fb0013a45dce79886b8a04e5db988
Date: Wed, 26 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787753433
