Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A4A17B405
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719398003; cv=none; b=fqd4A3E6YS0emBYisxsXoaOnU9JOv+TrEPpyrl9nOrT6q9oP0NZHcoba5+rqbPR3zj87xjiNC25CVQgH6Stg6aqJ/lcuNEPwgJOZmmbxVALrhgWQRRNLSPg69FzYlZ4NO44PVdnrEtVd2GHQYYvrSKynl0tqQuML82SkdUR1oe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719398003; c=relaxed/simple;
	bh=ltviom7C8z60Uw5/ej13prcbMO8cVvAStpjGMLZ54gA=;
	h=To:Subject:From:Message-Id:Date; b=grFrIpx5NsxWekx7OEfjkjGRKNmJ/beOESWn/he6w9Me0lHpChEzlHuKEKdd+kP+2hdwWMBst3nnBM9T91YAnNBWy88X0VVenlElD5kSt3Y5Sre48rnaJLfLj931vtcYlXxcRM+syJ5e8SUymzwh0f8LqMHBS7cmSKbsrkQ0lXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2YuWfjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2YuWfjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11C0C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719398002;
	bh=ltviom7C8z60Uw5/ej13prcbMO8cVvAStpjGMLZ54gA=;
	h=To:Subject:From:Date:From;
	b=r2YuWfjntPXuvfH1FbScZkgdfVdK7IGkVJDo+5jjS+8RuZeY7+ozr5jUuNh0towFc
	 vvK8T/AMLByZNtVKi8Zr8IF8+tQ/s+sY1ix4qsxO2h4dFt9vq1lDfzGiJRdfWQwz0B
	 lGZXGh5URpclI7n8+viFSvcw+Fb4P9abWfDjBDaM+A2/zXQH080vhRiatU3onJCZDz
	 mfYZs1a8A4TmJpHL/chaMx1UPMaEBFDBJb35YFEPP5ruiEt58+8VSQGV0LOSwTMa1m
	 PepgKaispmEEPKE+ekH+YHBz58jdvTAW4k4RMNYYQMAUm2MHOZp8NYvODGtkOP1WYu
	 6Hi/jh50SUDyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C700AC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939800280.10858.5503807496501780470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ed62fbb09efbf09d12e12906d442e467b50fcbe2f315c032c918b187e8a69e
Date: Wed, 26 Jun 2024 10:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719398002
