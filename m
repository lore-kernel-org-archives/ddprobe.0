Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353532BB15
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743143994; cv=none; b=cyk2MfWdBlzLorbZo3PGmhk9gkblBUoTYIb3+4Er+IWNZ5fTU4SWZ3ekE5S2j58OEq1FrrqvPCv8H3x/NbCGLHFLFcCAjd/KMD1LuovuLcq9cbrBdqbr4+QnkrLq3FEq2Ijn+RqVfsKDGCEjE2nx/35ePgDmlTGbDccutHv42vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743143994; c=relaxed/simple;
	bh=cI9fiog5yshaF5C3NOFM7UiFerJwgQG+JJKkEZYIeok=;
	h=To:Subject:From:Message-Id:Date; b=nnFfKEe4gnL1g5tFcvsmOCCtBqb60VjCY9hoGCrRkRsF2e6ZctFmfelnl4p6Jvf1tF34empzYoBIpTlXJ0Sg+XCTvC/4Nu0NZCHq+C9xf1oQt0IoWm30rjyYYb1ypzUNBQ2AcFMXZvoECXonwDRefT4TF3RRqBljU+HgpjrOUDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXVquRY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXVquRY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743143993;
	bh=cI9fiog5yshaF5C3NOFM7UiFerJwgQG+JJKkEZYIeok=;
	h=To:Subject:From:Date:From;
	b=SXVquRY4VR92TwhcXWyUpzne3Eu2p3bnLcWUIFxWA/zUNJbwRJ98QSHsiXUbIlQp/
	 mYm7qkhsyPcoPF6TYNBu+GKXBOElIGxd6VCejwQ1ANynDqvcyr3r8heS0I3bh6yulp
	 v7kMYFuwzjAfkhQnl+KM1bhyHvAJUSufo96tAUybbfal3aLT/4HtIjtYzgeNWSNiXO
	 6nNiHCJrW2eYfzk/CpMGgWYLA95z1d825bUlgz3PASvvH1PTHVUsijexcL+jaMVon1
	 YaIi41adKjnxsxijm/axIsOkimAm1V5Ogt+STWeLnNH5YavxHD+LwGGieRJaurU1Uy
	 aAqCYzb3oMzzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B3C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314399358.29749.2175475411997829981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72f61ccad9434d10b2dcce00ca81375ab8a59b0a2c8f1929ecb1794bc5243e8
Date: Fri, 28 Mar 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743143993
