Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3002334041C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783693114; cv=none; b=aB361gFJ3tsVHrhoXGn9rHRv6SiobkEL5N7EhFB/9B+/cdDdTzY19nOOI5OdJHb8Vq7ovHeoknlGMyAsRVel5BfCqyA7AHpqajusA1JglIhX9aVqsCJ4KvTXQbySrVeVLYCNE1uFFXTrLlVwfjz5IVvSgPxExN0ibuomQ+1vC/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783693114; c=relaxed/simple;
	bh=z8BFezGIjNEdDh1a4AVwozMzkicJOkMelAro9137YWQ=;
	h=To:Subject:From:Message-Id:Date; b=Bs6F0iYnQ8HAl5U8tETupa/X3+eUeZJ9IPYN5/mI1dPWzSMtBDbIZRPAAwErKqxAtMx08jriiudY6e6oxqgcrHx7QUN4G53xgpCuANdn1cbCyzxdCOwJ//XS2MkkYSnFZ+yPn3jeZooCUiSVDd+Dfot3ceaAmMVrwidMMKF/6qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5OP7DQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5OP7DQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD07CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783693113;
	bh=z8BFezGIjNEdDh1a4AVwozMzkicJOkMelAro9137YWQ=;
	h=To:Subject:From:Date:From;
	b=F5OP7DQlpQfHDnZqyc/2+tr4Gfvrf3lpM26gHtIZHqOE51octgKbgZTqMRUv3OPVM
	 y6sVugZrKubqzv/i1QHmbTdpya/krx+c4lgX9m1XyHedFXV+de4HyVgxznUXWrmlMs
	 yCPzLZM2iOh2ynp3Z5J1PoAc/WNmTBJ4M8XT/jj66t/t97yydjYbM4C4i+vSh851br
	 KNEUCC/0SE/3rB1UAq9EIid3+3zqMOcWhH02uIt+/+yRse4iiAyr0DJClzKdDf6WB3
	 cEFCr/aMwGfjOUweAYhGth8hHh0ECuXAUwtMb9s+FsGnuE7Pryhg4Xqle8eHm2jzSZ
	 3NO0+7Iypj3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8820C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369311368.21191.7183231674955639528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad779569f5e4238ea68e91e99f76f912c9042a3b59b0718396eab528672a4cb9
Date: Fri, 10 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783693113
