Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2501E1A31
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746081593; cv=none; b=Jr3QSh0AefY/tRb9tYRopj8wu8Xk0It8h7HRsatnLO1KO+gUsU6ahWvvfTc64Elmfj/S744+5319obBomBi4mjmWFPnANdsR1IrVNNuynjMKSvC+veOp/f4fDZl3DQrocaPovZ47tG8+vqWUxm/9Pd92yoeHS6XOfn642ikaG1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746081593; c=relaxed/simple;
	bh=kmm5KI3tKxgLBAnIrQRZ8ZEOxRhufhich4Q0TS+WnRM=;
	h=To:Subject:From:Message-Id:Date; b=L2keJYQaPcezaJ19oR6x94UDgPVXEAcovS+4UY/dTnVJx9sQ5Gre2pOwA4IfWIxCAJn+vZmKHY8O9WCUeo3YmK3kvDAtvrkkH2M8ELTALCvjgY/y3Av+ZvgALmgleiLf0bAdCjE8SUMDv7aEAgs6K10Q+6OG/ZZVNHCI7rkgDbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvuN3/4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvuN3/4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD9EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746081593;
	bh=kmm5KI3tKxgLBAnIrQRZ8ZEOxRhufhich4Q0TS+WnRM=;
	h=To:Subject:From:Date:From;
	b=CvuN3/4o4I4J5g4lS4hyM+/qaKpVqXZ7JxksYLITECnthh57x9mL0BAOiXeIZ2YwY
	 5kI0O20GhAgn2+QNDEC17i7M9OsxZHzNPARGfGiki2ezDeF7TZM7BcWencI5mmSShY
	 LNi85gDg2nFoo1MoOTAExxJJ8oT4BJ5GrlcDmxLsdHdMapT8d0KMxffENH51RTwb60
	 MBHeDiL+ZARsylbypBmYZqTI3ZXdbJ+gF1a6jbhj32a+AkqOONStXGl+gaUTSbEcry
	 NF9Xttb0oZmu3E6tiiAw5ei/MCptlGK/2loQ/EuJs75eJWv7PPggYmIPWpuCNajW4l
	 JVDZTImqSDt9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DDC3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608159358.7260.482185644551600773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfccd3a4706a8cdba80b92e67ec2539aedd6f01a91308b3c74196de32092b48
Date: Thu, 01 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746081593
