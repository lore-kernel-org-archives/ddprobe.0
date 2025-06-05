Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372C727C854
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749148794; cv=none; b=KfiwD/Z2uQPUa49dtXPX3I6MnzI8e3yiCFKDnLpJFoR+LQGO7Zvr1qYC594kxH4d4qgnhIdD4ljThn6Q8UqtowSNSr/TuL6DiUhn8LPEkDwQFj2jyq9/XVJGYHnkpPHpJXmxqezLvOLRoiM0QxvjFx6hcU8gmD30pOc0QFEtxUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749148794; c=relaxed/simple;
	bh=MOilLUsDhLWgBJjhosh5IlNau1Nsv3Y6VaoNKqEZHnU=;
	h=To:Subject:From:Message-Id:Date; b=D90bxX2QZ8OL3N0jkuARVjnp7rVguFTr4MxRUdBc4n2IjP+sdzypMUrTavfJQ9t21YAQdKJsWd75ODjRuuqf4MqQZA3F0mcw+1PI83PJsXaAoLo/ASjiEd20igdpVcYHKtCNYMb6P7InDDltx6txZKaZWbhn/ZqDK+dR2UhtCTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxzMq70w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxzMq70w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749148793;
	bh=MOilLUsDhLWgBJjhosh5IlNau1Nsv3Y6VaoNKqEZHnU=;
	h=To:Subject:From:Date:From;
	b=rxzMq70wodowcHfB6gEzOqs8JPeyFZZhCHr8T0JZR7mtxxw4oRBSc8yNOB7QDxRI/
	 rluKfsJ9jH8RcHepJqMawbtUYm4Pz8T90RoWmVdsYlwgPnrpnnkm4iYmx6D9EehkRn
	 qqsG/g3TKkluZcXf00sDr1cQ9Pg5LJFIViw2CrNzPhdJnsMJADnHhupGvQZNvHzUO6
	 HQ8ZjbH2urIV4M7854kerOy7AEKReGMGJsngUStVW+evjq5TR8CeKsJgl5ZiQ77NdA
	 AMpTi0w/OO+Fm8a+Yc3una5UzY2/tSEFvC7dgIqMgAcNKRUl1tpPLW0NxSkaQ4wcrb
	 WUBGKqPnuKCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEAC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914879357.21641.5350816474537334441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7b3cee03c17612c168e11d5ccc614ad0e79447a45ad7cb043921c9a360a01e
Date: Thu, 05 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749148793
