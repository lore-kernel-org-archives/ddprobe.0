Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DCF1F2BA4
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757569794; cv=none; b=qC/ELuGNLrfCYYVgf/0dqTnq+o+chDWcGJQLWKvEaTugwFQ0tBlo9fQF17+19GQ0Ur8GJgVimczYIB6Qpx+8Nv3OYmDML1QIwCCN8EAYB3ovAQeWc7kIKtm9o3wJmxZAsocMa3dLqe9bwVFvPtyU9IfCpiJvel7Qm/PEs9ojCyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757569794; c=relaxed/simple;
	bh=hPCBt91YFh3jcr6jEJr9cS78vge9PXCKK/2Qktcpe64=;
	h=To:Subject:From:Message-Id:Date; b=dev37J6rMzlnVhkD0pXJ1elZyhDsiQrHB98tYgG3ZuFYnDyxCvI1XPQ+Autpx+JceDAU4qkCP+GwXqJqDE8vGs10xR8iYWkFuLYnMsuXEuaQ1t8FX3xddPmRSdcgTmm+sYJ2NJVtJQWmEjkmQ38s2Oh9WzVRefqVPWk5k3Ye9/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7tUuryj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7tUuryj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757569793;
	bh=hPCBt91YFh3jcr6jEJr9cS78vge9PXCKK/2Qktcpe64=;
	h=To:Subject:From:Date:From;
	b=f7tUuryjWGdu/B1A0QuzcVm5W8tesDhVdXvbxMgCATrcynxhVdZrJEGYwzOYUNDd/
	 6BW6obWgIYU4wgJNl+oLAQNfTBC4hB9cH4bofepcwyGGF4U1gfGMHjJdWx3os7wDS6
	 WHFJUY5VYL4c6at+r2+40tvHew0e29wqLRa/HpxdELhJ5Bi/VOiavca9P1dxSWhcDh
	 BU5g32HBsNI+vT9+fOlqfJ0wbxLmuua5TlMHrXOA89KOCPeyOmEhTcc7X2x2he022I
	 W9xbZt92Rr+UWS7er5SZ8Cbn/Q8FApUchbNm7Re+AlHL9n5sT590YnI2ORDZuX6vuj
	 tj1a3OERqgkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED34CAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756979357.18455.3545822942442143832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad33640ab38d61b6c5d16d8741c98617a36d4ba8f9a5c88cd215d00849f3d8c
Date: Thu, 11 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757569793
