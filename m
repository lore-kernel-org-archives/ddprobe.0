Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B3F1862A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758247794; cv=none; b=IFEvw/9CDCubzDzGULd5v8GA3ImAOVwZG+ETZVFP1LgZW3GcS26xp6oh7RI2X9yxV14HlZWwGHUCR7Cq6skQgkTBC40gPg80EJRpBbWCvqyr34C0//4z1RsBsuM3PsgygdT/srvkLOyxYQ2cRSP80XXuA3bouhRTvW4oGAMDRO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758247794; c=relaxed/simple;
	bh=wIJaxzKeOM8Re2eTb8oidlAepEEsqsysOfNcF6NBLqk=;
	h=To:Subject:From:Message-Id:Date; b=NYuUZq1LQEsuVKSCgGSfxL6W33TJ0kWXhgEeJfi2tcmGpQdCQf26vGJ/SwQHjlAxKqvbedmI2BLUuxU7R21TiI9O1RRN+lanHPo/yfilySRpU0/tcKFX0im6Y70wkARM7S8VW/XN1qlinDRnX4m2QhKY7IcwrUMTWOEiFBWNvOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvEgjoTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvEgjoTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E4DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758247793;
	bh=wIJaxzKeOM8Re2eTb8oidlAepEEsqsysOfNcF6NBLqk=;
	h=To:Subject:From:Date:From;
	b=BvEgjoTeC04989qsaKgeB330HH387dhk0to26q+ry6lURmM6FcnlsUrnGaLv4vPAB
	 rOubvp2xHwaEj4vU7NB0QLT65LlTvdi87XiLLG5HhiRM2L0vhCo86arBBD8cIqox5e
	 QtmYQseyfecu0yX2v1L1CtPmqp9bWp8muHACq7EreC0jv9gKXN0LFHPkrfBLHBahLe
	 +3zaKciX6jJSckPaXRzzqp7X5CMf0nfk4rYlLIvIAH5CMlZ6sFpG+S0r0S+X7gUD7H
	 Ze7Z0OW/kO/OB5UXVb+J7QWZGA/9s7b8au6mx86a8KALxSSnjotU1c4+xBXliFfruz
	 mZ1TbW/Y4PLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C8BCA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824779361.1639.5645322651772312036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918b7a930cc2342c01e7139925b686587376512ed9fb341d75aa30e14f38e249
Date: Fri, 19 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758247793
