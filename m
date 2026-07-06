Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363C537D114
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783318114; cv=none; b=QUVXaXTK1xq9PsG2xXo8wDTPs1j8IpyP/OwUeYsA2X5Sqc8nBV847ZeSG0KdA6hLMxTJIXWd/kXDFUGV9udBNrQu5tcSZQ7c4jDuO1XZuiEWFUoWuFIwLwlYozL7iF0ogeCC/nqr9i1uuKyNmfti35bhHAZE5p3TXoYvI/w4lNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783318114; c=relaxed/simple;
	bh=Ffbs4ibBLkViGeILLr3hSbhi8sOqI1+fR23lG8YhICY=;
	h=To:Subject:From:Message-Id:Date; b=PZnMynbrFcXfI+4dquKSoswox2xtcjr/jZeV784ojYQNyauvO5axQlvh2EuSk2DQCFSuwcTrr25PNpqtqI/18ExwxwwJbsnzq2Awtx2y/wtaNyu0NnUG8DUfRnywRsiLAUbmFj8LYLALWxR1qS+rlEa6vZ+uo7KE3c/M/OmOH9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuR99Igi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuR99Igi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9888C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783318113;
	bh=Ffbs4ibBLkViGeILLr3hSbhi8sOqI1+fR23lG8YhICY=;
	h=To:Subject:From:Date:From;
	b=MuR99IgiP2WMyteISGEfdaJc5tS0NQzs78MNt6r4Au7R1ZhGY2o6m0OhJdMEbHllD
	 /jbnEsawRzDnl28Hbs6nqv/fYDf4XBH8mnSU47EoY4svm0B3818QBh0gW6Tz3W9eei
	 MfchZMSRh6PMjblJkLBog5bmpvPpH3jt6fLYxOFjzQLCNMyJNtBL9oLoufZuGmmDY3
	 KTKsgx8o9th7mXiahcPPfckQ7kuzc71xi4QorfnLhkYolc5Ym0skewxzVXOipmPDaG
	 2ZoFoguja1RHj1dUFNKcRuOKZtXqjfZz5PDQ29faRw55NSjZHNVjwlOdahRUKrvqSW
	 2z4g3VSiR1CdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8717C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331811368.29552.8100984184010369794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8897589c1d2c7db7e0bf3e55096a1937429e32983a28b2f38bca8d7b8d24ec5
Date: Mon, 06 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783318113
