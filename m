Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5109C1BC3C
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726403754; cv=none; b=ezYtSzmj9RxnJIh+SUfrG+SqnNm5/Jpho2JzQqq9WjEvwLYkOcTPe2dKKDYAaLdXoiXAurMGaiN6j5eDzj24ZmRE/jBDIugI9dnvkF5WnDwA+/pB+d6m3OK7kR43U4Ys2dcduI3bGohAzcjRXDl6mrKnKIvjjogPo2n039yMZFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726403754; c=relaxed/simple;
	bh=FWdP3AXL6uu8vpxeIr4ODP+NILZCLZGwgwKSVpou60c=;
	h=To:Subject:From:Message-Id:Date; b=qjhU/VTVlA9VNcjFdBqJuPkRyqF2Fvl//WEPjntwI0eaJUXfG3AFDAF3kbXPBQwJrMC40AB45eYDf+36HwTz1horQ+6fLALMFArYAqS0bhKWn3YPki7Dn8OX1j4z3SM0XJYye9d+9EgS9O3jeGbsN3QVuXruEOADiTGCWmYkSsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA1daCu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA1daCu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0052C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726403753;
	bh=FWdP3AXL6uu8vpxeIr4ODP+NILZCLZGwgwKSVpou60c=;
	h=To:Subject:From:Date:From;
	b=dA1daCu3EESJmmvSq4yE63EV/rfIimaP8mVuDsw+MewstKq872FacOUa2k1Uj8QH9
	 hLS9Ql4h6ghUSn6FqDTxBOVj+q3jmvy0hjef9in9h2KGnmx8TZEL4pUCUQKwmFdH91
	 b3HiOlUgyfGe4tT9+NE3aHTccNdpm1/GtUEKaIe7Bu21bo4aK7fvSXa7ZBVnOdk9lr
	 DgO2bIaakA3xEDjEB6MrUO6RUC2n0/SfEUblDhXm/dZvSRevhiqpks7Bqtc6EJc2Ia
	 OzoQqDMewTb0jsh53G5qtx+9DKjqd/FMdnR7RBoY9KzhsjIXMz45KISmsvFasUJlN0
	 WWXUY5R8lNojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BCEC35FE4
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172640375362.18903.10737268010854779016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61043c52f84ec7f33340dd0e6a121d63e1fdde112caaa3e6b94e51fccc925abd
Date: Sun, 15 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726403753
