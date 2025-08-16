Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511FA3FB31
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755307194; cv=none; b=mDlkLOfSPc3WxIaExdZECtloYA36/sGG0HnxGeLBiLZQePUmN8BWdKEJ3SSxjbOSskFMAz5C59dj52Lebk27cESVapAoPqgTMyQCOKWHDKig2A8WCL1bR7yWfYOQveZBpLntVocjNRA8GrWs1nrpzbFsL60PvSA0OtsF89OH13g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755307194; c=relaxed/simple;
	bh=tK5/wOx7fYJaeuh7De1LJ6o0xoaZnoO3TMu1PPdlpb8=;
	h=To:Subject:From:Message-Id:Date; b=q59eIxbNSkTfj9CQqQZP82fYoj1wqe0G9GhjZd+valrBmJ2eSw/2eJNoniad2RNb5+YIYkwVuxHpl8XM8R244OyKBsvMJdS5oUYt1ynu5AicYbUzo0BsFNLs8asC/rTMpBx8pO+gyR4CZE8gn2p1ZcypV8sZacEf31V64aSctL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k40sBuBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k40sBuBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0216C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755307193;
	bh=tK5/wOx7fYJaeuh7De1LJ6o0xoaZnoO3TMu1PPdlpb8=;
	h=To:Subject:From:Date:From;
	b=k40sBuBnig8uTODECv/eW13u4cHsidktSufYGVrpG1wt0fXMYCaAh2PyEKDZRw4UQ
	 c50Ru5MRSTPgYOtzNLs0VRyAW3edsEnX9RPoOr8uuPF04L3ZdnhuMr5u5XJjuG6zgH
	 sQS8ncH/vnHyg5M5elH1l2c0DJihHw5VVHlyhv9ObjI4CAqYNHbPqVSrVvuxGsaG0f
	 DyZ9Ebm5x1c16jMFK2LrvIxWYZfMHILendG9vTdQ7P8WPzQeptH6hwBZE2JoYmLRz8
	 GCh9pQlxLlztwwRlgwT0JH2pnm8Ort1O64Ml4CsmnJYvzQHRp52nNwHTmEiAGGS33B
	 /8XoHe9yed+FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E597CA0ED1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530719357.7594.12364355781685121100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d160e2b1bbe055f50f5ed907acbeec88dcf48b06588b0a688a8d6c4b601dddd0
Date: Sat, 16 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755307193
