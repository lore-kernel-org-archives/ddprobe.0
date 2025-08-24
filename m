Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB3B1CAA7B
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756012195; cv=none; b=p3uc+ywRcULivwwCsY7+drRpVj26gZhu9Iy77Kxk8cmR7tPDkPpqczemev/v0yHmL9jYAiKtuV0sCLyLkEcQ72kmgJqfpqRHuLPUSxj1bEQX18R3OTbOPZBxG6NlWlbQobeMh8WSs9hjT2it501RGCRp/ybctPrAtd+B3Mi2xSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756012195; c=relaxed/simple;
	bh=Q84ZZ+MPGgbRpoPFCUr+1X4YmOcQyp0K8c3duAdBRRw=;
	h=To:Subject:From:Message-Id:Date; b=ChYZcpyxuE1c//i7rv7WhMUNf6in3G/qHt4oAld1EBnhwpcDOjw6aB6RaxKgzIHfraO0qaHNIR7QXT7BHZuMn6EL1a6gVGnudnB+v9AEaY4I0Jcm0Zw0+UXc5sX1YmUZYhoi8P8Uhj0Jo6VtwWUj4dXylkZ/ZtfEc4s82QpnXu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi00epCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi00epCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756012193;
	bh=Q84ZZ+MPGgbRpoPFCUr+1X4YmOcQyp0K8c3duAdBRRw=;
	h=To:Subject:From:Date:From;
	b=hi00epChSSLwAnsePwVd742vz7bytB7ftIDZcVjwHDrTfOncwW2mLt1v6AsyEtUkK
	 fH5XkGl/b13rLaKO0TrAcycMRhwb0DTo93Ds9LRnZnugHAwVoSBLbu7UirUiCbct+b
	 af3E8wUTCqdYS4+djke/SRZTjdf3q32uQTvgRe28uoYMe/7t1dp7U6AiyBs0Lmq1lx
	 3EmqgGbKl4gi1l0FC54fxFAIMuXbZxuGw4mqVmR2noq4qCj/bEj6OvIR7e57Ho9Rfr
	 s+yO0h2Q5yL6zVBEML1rBq7fCqxZ2TJi2UJhEBzI7C6bfKT8giXlCqwHtFEhL00nTD
	 BSBZq/UzdVhFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92164CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601219357.10038.7819298251825274907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55196afe8c62d2f0e5610f47a20109133c207678d0759739b48398380a04e5a4
Date: Sun, 24 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756012193
