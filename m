Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DFE1CEAA3
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740692935; cv=none; b=OrkDlaONwlGjtrszC4Jfs1zcXMO3YXL0upYBkQdiTraU9hSumTV+2vpEbqfnQ8tiDsZ5wY2U034PSehpuWAR8nCnipJaUBddfkM+6STx7QyRlC8x6/t4SImbRDdymlpCA+L5WePVyjbJiAdD4z9LX06h/E5KGzyk2AjvmOzYhmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740692935; c=relaxed/simple;
	bh=rDfls6gE2uSIxxOpYsPyKQrmXb1HSqUNtBCSQgCKQcg=;
	h=To:Subject:From:Message-Id:Date; b=NlZookHtG8Rl3KiHbLM52ogTh1AdZ7G6XbPetg8LtOEnrGtsqtRlLCtfxSP2TeNxbbTZq9sFLgZDws/5pBuQgxUHshvGmmDhzUH6kCGsZGC0u/plnZ/vBouO5LB+qdfAKdK1SiZ2xp1+oCImdJXmTTmKgFDyDvZG60cLShXDC/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU42pQUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU42pQUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEF6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740692933;
	bh=rDfls6gE2uSIxxOpYsPyKQrmXb1HSqUNtBCSQgCKQcg=;
	h=To:Subject:From:Date:From;
	b=DU42pQUmqE2ERyzAgLFhLzZR/SBRcWLTvxSUP0zuHxUS7hFqF1Y+DXILGvYUF8YHC
	 3gubo3W1HNCnL98Xw2vtG4MUabHlb9JnFHSssfshY/AuEyC+CjyjnSpIciNJpdp5Yg
	 rmSuxfzGFw4/8ngOwMyOh8OadTnKOXO1rltthsUAWj5QCGIRT3uxezPj555UY0EEE0
	 OjhQzjOIpaWP+IrPAcUF7UOqgsexfAXw3Qb1GCw0FWy58Un9NuA2TMaldGfz4P/gvR
	 DgyqAoIVVnt52d2ktwexzZuXHTpJZbjVmWZouecA1BhOoCnqIZgY3z0vI+P7Uno4f5
	 O70S80STkz45A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99283C197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174069293361.3821.14960427800284638548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fbe39d8a3bb617abb212eb1295e6f4e7657832328c4b3e29025c1add51ab04
Date: Thu, 27 Feb 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740692933
