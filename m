Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278D2288B1
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778312854; cv=none; b=Bl0EP5LxOH6Oz1YYv78GJOED4Sn8RrvqF111sockFUSgbPSTNjBRsf5HPR4CAgnr/zraECHE41Xbef5utycpTufVLE6FZ7EK0UVgoUlWUE7vjpuYI5H4snz0e/JBfLZSTO6EErUe6jE3+fmEcgEVsmxb3A8TEwzppDjfj/LVGu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778312854; c=relaxed/simple;
	bh=EmjasQ32L+UUNIrYZgVI3Rw9/Nn34jJZP9ElWMdwCWo=;
	h=To:Subject:From:Message-Id:Date; b=DeUdljJFyiK39LlaE08coadRtlnw5AnrIgwviUrxKXgHBJ9Wmn3sdGAzSvVS087DIDimFLkkeYylqJ4iFApbs0gjo3e3W6vLLKlv5J5qjzkcOzHnW4f/q5/xlgBJ4MAOfKXRj0GJUOO13fqfe1glV8/XLB3TvgiEy/DM2apH+tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEk8pLxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEk8pLxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC3BC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778312853;
	bh=EmjasQ32L+UUNIrYZgVI3Rw9/Nn34jJZP9ElWMdwCWo=;
	h=To:Subject:From:Date:From;
	b=PEk8pLxUVtf2MUIfvCU3Ztq1iger3WPgLWf69wu7wrsp24DTI26uB8Ew5tSqJRUDm
	 EzUC+z6vMjTzjXXccYIvj0T9e0ZOEeOdmPcdGc8ZxoRrQGsJ7cktx1JucLuTJhgLbD
	 ZYxNg2dZP+XyJ+TjL1dGL//FNpbdspPZArrzJIXJqieI3MTc31iiNn0XlBS6rqt3zW
	 TKRjVZ45L9svKmy9ZorDY7RcHRKZurplYu3Y9mjBtrXnLu6bamaRl5PqQotT1+dtXy
	 lLFmP+HspepHeM6DL4SKh14MFSSFHgGm3nDRYkIry3cvKPgNZcYBE9ovINgQxgOKG2
	 84q1btV76T+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD18CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831285369.7711.14645642699158779661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c568e3165a4f16d2e063595a69115c4d0c619c24eb8df6e728e19d050c857e5
Date: Sat, 09 May 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778312853
