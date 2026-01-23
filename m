Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1869E334688
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769167434; cv=none; b=fpi12G2YQ5aRbaEiRVG/6gZNg8tYmTWoXcKgrXJi+YWHIgs8auXZm3/ES7kzUomYVZdGXkCx2iAy2s13PDTfu+MsImvNMe4awdwtxGFp1Q23fWl4Xm+KKpp+Pay8fQLfN3iweDLaEu9uF1HQ5QWEVsqI0x6T7bgJuu49qOsbv1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769167434; c=relaxed/simple;
	bh=Qgt2rBiDoyeQO7tW8/kjo1AO/ZVhp8HEX7bXXGu90DQ=;
	h=To:Subject:From:Message-Id:Date; b=Y0CTx7jnriMGULuBezNlSojoAb/aFgYM6d3T+OEfhmCzgykCIxhE1WhjbOMYLsFb3dGVjrSJlZBbW55DbHDGlATdvyEZkpch0+VQCNMYa4aB6DhSEl+BljyhgIBuAdSY2Gp+iDnw+Ucj+p1VSgIAmT+ZMy4OQKSqns7QlqwYQrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX38xjtU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX38xjtU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A019BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769167433;
	bh=Qgt2rBiDoyeQO7tW8/kjo1AO/ZVhp8HEX7bXXGu90DQ=;
	h=To:Subject:From:Date:From;
	b=hX38xjtUPUmRJEwKcvZMsZAYjEW+jfSMerOuFu7hl4EZ6I9ntoIu0pVWdw8C+quHl
	 yVKjn3SeuHCu/h1IDjryCATcy0s0y1zVBkIolBVZOOdkc820HC7H2PrL5hyobMJ77y
	 rExj5pzanPs6qOl1PGxKxLL5LH+N0fQXPMp63LH24gHj+fLLam35Aah8U1PYpua7DA
	 wU+W9D4eHVcNjDb9pF77X5dSCjjVLzJ8Y5iCQbDXeS1g3GjT1hk2AYkNa+i5I+dE9b
	 OVBcN5G4oV1jV/8P1zyPqFl302vzfmyNFg1x+FLQ1c6HeEbDjZqDc/Xl2TNR72DHzW
	 1LOQezfvdWAKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0FD72379
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916743358.18612.365332037958236290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa6fb57fc4a12e25d1fbe006ffa6fbc7303656b0ffe1d3205998135c049baf7
Date: Fri, 23 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769167433
