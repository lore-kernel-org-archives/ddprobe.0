Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AD02882C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753786194; cv=none; b=nUcfib8Qs9dGivb/2hm1i71nkKuc5a1A7+DZICvl4bcHBmVT64VUlzvcr7dznOsNOyJfEjE4/Yr/GX0kHBYq649AcPRO0I4LxquZCOiaZnwZ78CkgyfYlb9FH0zZiofhqk4Cuj3peACD07GRH/IkixEBLXItQrzXSAO9Mu5CiOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753786194; c=relaxed/simple;
	bh=Z3/ao101qYV7gB+X3GoIBF+EVcrkSTljKcaMMMCa3gA=;
	h=To:Subject:From:Message-Id:Date; b=iFq6SUyfatX3AufSkSkg0uP0O+1kVs+UGAKx1ZtDKGIOCHgedKJEfjEIkAraRr58w98jrPlVSFNEPHQ68WCJNL8mm1pEeBFj86rUPrdES3rPcXf9ZvJG7/RcbTQUmL/VJcXcd8fQ11f4s9EO9HscWS6pSJimxrJr5ikiMxAp0o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHCuB1B8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHCuB1B8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3DAC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753786193;
	bh=Z3/ao101qYV7gB+X3GoIBF+EVcrkSTljKcaMMMCa3gA=;
	h=To:Subject:From:Date:From;
	b=FHCuB1B83yObF3HnXoD+hYjJBqQnSSL77DZsw5ADGVMuwXpBihf+KSA0uIfz8MhcX
	 bRvKXORsbsS5sBSYCK/8VKLbZUSlnx2LOrojCi+ppA/NIV0FgKtsQo/mmaY5s6zyca
	 euCVXFrQGq1MTxe0E/QCcyiD3ZUV3u4xzXEm4VV/bwCjS7R/DDsZjbZy+GPBsSZTgd
	 6XnziXJM9tQVhQxQr8VFbmY1P8eYBDRdKeOlB/8wRbtDD+XDkeXRRJIhHW1gbe6WAA
	 Ty6I+Fg5vVSXtJbAAxYN75qrtrVbZsyUe95EVNdp2boucoRFEcbxwM7T0yS/zIPro2
	 zDmXMytUXwIwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA1C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378619357.31822.13646367995695904738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e66c92abfe54fb59feb35053fde74a6470a449ea2202615b5ecb32fa025f9f2
Date: Tue, 29 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753786193
