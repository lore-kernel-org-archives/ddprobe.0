Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BB6B640
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766276034; cv=none; b=E7Pu+9ToglpqLhrammaUfKMsm+aIrRD3xREeNgBZDAqGV3DeeQQ3yAQLPLZ0bnlbxi0Otq6RhM3EebH3Bgn/IT2KUHP8Fxi5f5byz76lk+h4h6nFXhrgJcSLJccLbo8f8tTbTFR471uA64xxWOfEiLzMT3+R/4RvesZwY3zl+NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766276034; c=relaxed/simple;
	bh=kA6Y/nrN4yeSUxwAANc+5vuhF6eRjfhodUTITDPPoVo=;
	h=To:Subject:From:Message-Id:Date; b=d0jP8wmu8ocyzqJ1cZL//47hwnaEAi/Y2VEQCeJbiIn8nJAsY8rJ6fcsyeTWJTKQZNR9c/eyiSK1bJAH8XbXIhSCL4zWblvOs3OqWkChOJycTsiaTmJK8ZD22Xi0DV+vvG/JO1iC6GvmRSD4xdDFtIBXt22/Rf/+8HOvZWIXVqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOgt1ZCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOgt1ZCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6680C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766276033;
	bh=kA6Y/nrN4yeSUxwAANc+5vuhF6eRjfhodUTITDPPoVo=;
	h=To:Subject:From:Date:From;
	b=cOgt1ZCdzSPUc5J0t3EKEPVBvLDciYXtXJ16cXOn944VIbsVEzp2LxAQAJkgcsBzz
	 Kk/YlyIUtRWVfRpw6liyU8l4cnKPsJrmUZGANhYiRIMNpYFOcR4CwH2TU0toFLYiCW
	 V2VFZtLgz43/+OCEfDg1P1QphOx4NmAKi3xIFrhticcJJp06GWjC/9G0wHDTdHjcwP
	 DtM1vPHFGdt6VIkKiS1t3PhbTZgNW3AxjKQ7PdyA7Eh8SRctnFEsRR5xPB4FlXCWuJ
	 7FHGlgFxdlXw6G6urke30YoGoK3crFKTZYksjc1LLHlFrZh3oLbgO81FE9KODfUDhK
	 Y6xnEm+AXqDQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EA9E67487
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627603358.2271.13550852538211989804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41361cf1e02ca5639732a00dbc608d48155206deb7a7a6fad3fcf62e888a07c
Date: Sun, 21 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766276033
