Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9905474F
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788138034; cv=none; b=ToKiUVi3e3w7Lq2l9hWVMKmWA9WCAj0AEWiVf/3vZnulZLkpiMMgVU9nz6jgHVL7lamiiDmKeUG4mS6o8qGCuMzmCNcDVkBhRzIHWADtH6RWZwbu4TPey3mdMOkwPtzVBOEN4SavKJvWLtqzgnYiObdV94gHYHUj6SumTG8WzPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788138034; c=relaxed/simple;
	bh=yi9o2Mjufap4v+tL+6O/3tZZyjZG49wUZPb9nT8axuM=;
	h=To:Subject:From:Message-Id:Date; b=X1MDnnrfJoNKOi8ORcr5IbTkZSZT3qWs5v1mCKGOXD/ZUkLdRmNI/lk2RFsMtPGS1f9foZVw43nxDddpqiVAiVHLh13h6TCLoRNk0F5V+r9g4/RvgoyafoEalhYznJMNWVOq3XNyObMR7lfBEkt33umiqc6IR/A+NlfMcjBJdUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqTIWwpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqTIWwpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3552C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788138033;
	bh=yi9o2Mjufap4v+tL+6O/3tZZyjZG49wUZPb9nT8axuM=;
	h=To:Subject:From:Date:From;
	b=bqTIWwpmwur/8s86pdqJ4BFS/jNurW6Paach9IhQ2+oipcFwJKFom9VQh0435OiL6
	 UrQi6cJwvMvjO+EwUO20L0GogFkPlbtcFNKi4kIU7dWzMMHrZEfetQaPjPtvlqGC18
	 m/qLvQzltqNAC4nIueswDhtkxITF224wqGWqXSZBIpljcmxADRduPWPRcm3yW2nSnI
	 /3q9MZgl2P+soD0JCg+4JgijJhW+exUYIKU1PdgugjB1tbLpgtpSL/w9K9Dg0vlr5B
	 TE1lZPOKY1qbimSMb2DkeGjDovXLtvDrIurRKUjcBtS6M2M7td2zndJgjLRDM1sJZB
	 5ynDdcz9EkziA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B120FC61DE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813803368.31103.12149755069700662272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc28db3cadd110d0ac8bf0de2a33cae30b89d3171ed6ffbe334b36da25f6215f
Date: Mon, 31 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788138033
