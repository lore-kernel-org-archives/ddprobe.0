Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEEB1CF8D
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719660863; cv=none; b=gyU/WeXit0YW44v7cWUsy6j0iFZ8T7xUW5JhfMg8YNscx2AXmRbBsrB407cBRjuJhhT0yvJCEV3yrEzxry+EC5eJdRTRgHpOgxkuyh6Dz0FqL8CXIUtabKE5NcZRZ71bbanxyymGDY5DO7BfsapEgJwS3w4BDSJzYLBvj1SVscw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719660863; c=relaxed/simple;
	bh=sWT00Vjo95QZ8rGBhHJHnd3OcQBilihIpUyH0hgiHx0=;
	h=To:Subject:From:Message-Id:Date; b=sm1wPcN33ahypp+RzwjpLawhL7+u+y59dJzCpSIfMFLhAt7xgP9hCUrv+Mdh7CBeYiYmwxmN2c3jW/7j1JZbXZBR1Y3KTLEQSBlHeSZ7MJjKkyqujnicsyj6mHdRZHLVpCtI3sJ5sW77O18gfKX0xMr6mewExguHfwwzMtTpZUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ar8HQCno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ar8HQCno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC58C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719660862;
	bh=sWT00Vjo95QZ8rGBhHJHnd3OcQBilihIpUyH0hgiHx0=;
	h=To:Subject:From:Date:From;
	b=Ar8HQCnoTadNdWFIGOQJqtqwR9oMR2/qEz/8ubMvVUHs/FkGWptxgtxhuXyZCd44F
	 PDBQY6DpCtz1ShqPVU1Dc++hasn6BZxTqbfuZ8KjlkGaVqfqF8QD3ttaJL81fS+z1M
	 he6ajLNpAjtL7dzpZsHEcT3FBOQ2QhxrmnMO0xtHxUn0dCVWcqZcAYSnlbqaC4+jQ8
	 FqP4iBX/BcFCMjZLxJd66hiT4DWew/P+UPQl20NIYrJp1zwqVm8Zp9A7f3O+1ry/FP
	 6/V3u8UErcXqr4JoFFH1RDtvK1T4SZwc6haDQy/OyW3qjcSBNIntrFN7dOKTvIqpXQ
	 NkmKiseQqZnjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7619C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966086279.25949.4314634360740406861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb212cb8b58ddee5f3a22c69ee683fc5063ab0cf0c12cd4aa3c55428d7e2742
Date: Sat, 29 Jun 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719660862
