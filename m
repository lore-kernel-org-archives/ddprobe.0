Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672E7FC0A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783172914; cv=none; b=jR0Kts+LHfLT5P07Wz/NHIUv7Lv8/JDxnR4reu4CQQfkXH4/368VOH4W5Eg9W150DsjUVjSxbcJx+0iBZLN5H+rXKw8ftACK4irk6Ltb78NNgqqumQ9/OSMckry4nN1luiBbqNvS7wklgLZ9PcObhfGrHuV0FmcBvMCd/YudiqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783172914; c=relaxed/simple;
	bh=y+tIYQjeSliGnpPqWG1LrW6HT2HOerOOVMgn63Tt9ao=;
	h=To:Subject:From:Message-Id:Date; b=CDGgNfkFnpC1QZ2L2pnhnQ3ZPDVF3T07Cz9FczbgOVc8kXAGbKKtorqFVk27+SxLkIM3aCFfjZkHGlAQh7hbiaq7MeFG8xL4CxYLVw188gHOCvJIPIf2RcT1NqWDYcQXXqcR8LaFEhj7C1v0LXDZ4sZoGnzoyZGGZtMoJaKtIG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRsobSHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRsobSHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03E3C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783172913;
	bh=y+tIYQjeSliGnpPqWG1LrW6HT2HOerOOVMgn63Tt9ao=;
	h=To:Subject:From:Date:From;
	b=GRsobSHQ5p36EarCS/rpfhcg9O64E3F8xPEteOHUpwLJ1WgOsPWvMORFocFcJWlT7
	 3PtmAEqcw1UDHO7IychfifdDvUVhke1b9AulMtEgm5Phn6Ef4VXh3h2NorfRTkofyl
	 6gWUqvJgNcxTfhN45h2l0JLmdNanDkZ5wf/ODOvdn2p9R23NtKbmmHXfWZizFkanVD
	 qD0acyeYPaJ0seLYSU5mPjydp9+h20NpcT0Z363KCkeQEl8HvKuUtyz0b41FmuTthb
	 9ZQpJ69zs7kckopXnuOV54OuAUy2gXCqn69RN487eSBblOF7mwYIxpgF2rpUPSJoLD
	 nWcdIvmRR33Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE891C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317291368.13248.2294955258944997709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38dae1d2fc12ccfbba7f83a06a856cb97092d7502ae91be0d514bb6598b24ce
Date: Sat, 04 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783172913
