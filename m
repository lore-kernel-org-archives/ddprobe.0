Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1869339935E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785258034; cv=none; b=Vm3hKop5oKLrvOZ8PmFPLsexngQJzhKwZhvXcAucO+jQrAV5sA7mH2fF2c3179f9qw3DnDj8OkKNEbxwXddczarSbPWfrrKD9GGcZEOKl0JGfLpGJ1soPi5LsXvy6bBQM2HJDpBr0BYXz5W69Njyfs5ktgNzGtmO/9kEF86rfkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785258034; c=relaxed/simple;
	bh=MyUxJGWBZCH4ftvwYIc/52aGbqgbnuQ8UXQZArDZMFI=;
	h=To:Subject:From:Message-Id:Date; b=THVocKAZ9QwCG7X2WyHdp7pizgXkAlI3p3WKbpPgi6Go+nGqaYX3PhhcjWXyda2IJqA1zeFDFBek3D1e5DfL3Zpr/dYASCuQ1Mc1mnpdSdkN2AQPXhLnYSlYpsj5l5stTJjuDdToXvtfcKayorUoNTfFLMlViQNmePiMIKEtzG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrQBjb5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrQBjb5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB7BC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785258033;
	bh=MyUxJGWBZCH4ftvwYIc/52aGbqgbnuQ8UXQZArDZMFI=;
	h=To:Subject:From:Date:From;
	b=VrQBjb5dVHoD6IODLBSc5foddlSEidP9ND819qyZSHgk7J+zrMyyOZnw9DRDsZCVt
	 aeGBq+KEbL1ECc1zn3no2U9Q/zZLRVEyY8Rgh48bE4hzgXZkKIAxemBDCszLlRh0It
	 H1L2oVz1ty63XmsuWKlbkgMQbpFnKRa+tNnw3yu/AV6xyOcteFqQXngSu8IlMOJWPv
	 chsqjmkWV+k5OwLCpvOT/JMOzATlZ8s5VoBCbXszp3+/hgBMu4JXJzLw1qcxdpa/cy
	 AXquSt3kqA9A77qLUPYmIw8Nlg2NJQTliKynKCZxQexrdoL6OOab5RodiSnW+AA/ks
	 L67vHuBsBh/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB287C54F54
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525803369.16482.17367675550411531537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08acf6c5714bf6c0402247cb43c16138a34be0f21ad4b52416bcc1caadca9593
Date: Tue, 28 Jul 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785258033
