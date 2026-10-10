Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387612DECBF
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791623434; cv=none; b=Bezfftgd8CL5wABpVPu6BsJAMDr4T1jTNAIAXoJGfy5cXKb9MpKGXIturVMLfa78nYT2FusDE/iJzHCm7i0dqoqcOmQ6vTGt49ZNUSm/76uoHk+1Qxx1f7pyuNzh+IcXadK0TIZlt3SrObhk6/SZGPrARYHdWJJ1zIlDKxiIIQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791623434; c=relaxed/simple;
	bh=wPGtB4QbI+/nhuMx1ruL2fqDDRnQfwzqA4t8t8eLLug=;
	h=To:Subject:From:Message-Id:Date; b=UdphkLfiC78T+JehZhKb4xeNDDkfkfd/qdmqur7ZFNRNWXKXYeYxTfwabL+7XsIg1B17C6ESQiUon/sqYNtVH5ELtukPw7L1rMNaXT7A1vF4/MSQF4cH58R/TYVttnX58vP3kdW1WwMi4JI0bz24+9vs6DUwOP94vHERCe7q3lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENcYikrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENcYikrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4023C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791623433;
	bh=wPGtB4QbI+/nhuMx1ruL2fqDDRnQfwzqA4t8t8eLLug=;
	h=To:Subject:From:Date:From;
	b=ENcYikrHFQtNmX8ggALXfVnARikwiZA9+l2IEiRDaFc43SAx434SWxZPAu8nxvA0q
	 HvBZ+iC+MWfTVK1ReZ/TJ5HnaRH7AFPx+cYOMuu+06wF6oJb9NtErQytiaAVJVov70
	 R14Sr+DOx0AXJc26We2vzRoVfHKVG817/ynjDoc2Tjbpua51m20AKcCM5pDw5HuURC
	 9F4BAIN/MtFBPQxGcwHecNviuifVxcnFt1a7kXoquE6v1djVV3lfMkvE2Upf5NPBVp
	 qzec7Ym8PM8iHqOK9K3w4drZddWdJfz1hO/IKy2ZcCj5aBeGE+3BYbLFoc0DOByDiJ
	 DoBuTI7o0pPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC22CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162343369.24901.16833561154588396880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4654ce26b76a8fd5f2d8faecad36ced438ac9e48171d22be2f183516021343f
Date: Sat, 10 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791623433
