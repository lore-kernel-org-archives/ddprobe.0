Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35123346A02
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783019314; cv=none; b=t9s59RaBKhgF7CY+IkA8g3VzvAGbA6MfLbipFDrJ9vzELv0/QHIOHYR4wrEZ2n6EwBQgWHxCjBiY8Ma0uFP7aAa285Jge0niDmf6x336s80z60MglLK3IpG0ffnRgLYPgFJzPIUR7FCB6Qi5+DMZXPSanJJyBzEq16wWQKppZkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783019314; c=relaxed/simple;
	bh=rYdZlkUv4OywrjKLCThJaIiH/0dv09KGr2C2rLGUixs=;
	h=To:Subject:From:Message-Id:Date; b=sWBqnC7FJoxxM+xLtVVO2D0Md07qeyZIMRK283S+b0v1C/RMQuwDnl+tONaJ6ioAuKLHWnV0DzFv6ZPjQzpFwlfkMzYbJiLsnD72KkZZkIYIxEItrWV+B53xAa6wA8Mt8gw7rb9zf5sLPJMXW3USjNiNTnVpKA+9/C+onW2wEQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVefuoPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVefuoPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE184C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783019313;
	bh=rYdZlkUv4OywrjKLCThJaIiH/0dv09KGr2C2rLGUixs=;
	h=To:Subject:From:Date:From;
	b=MVefuoPYbL45zpJ4RSWAD+AeexR2PuRV7bK2GN0EMPcLHxF6VG6GY/Mf24TMe//jK
	 3gTdlnC6Ec+KfQVbzMDQiWZDZdga6uNFVnloIHSsUjE0XVta9XUDB8GvqhLv296NbS
	 W9UPErCrvYAi3L71CrlpzsUUMMFvQBmhg5DgN3M5fBAQpYF16bquOVGk+5OQzKq/SF
	 7GusVWltpj1+vIQBrzmAffXCDz5CwqA+V7GvMdaeL0x/NX3YZia5bOKoEV2malGbYX
	 hiz1iHi0EP8LBe4lUSML8OqsT/RAsvYJ3ILb3og3Guu8h46FsYY72H3dhTtkVOJTqA
	 ENP/JtuFITE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA069C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301931368.16682.1158257125707645742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1cda358b3415a091e51f559237ccc8949f632217e7f5352b543471092c4d191
Date: Thu, 02 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783019313
