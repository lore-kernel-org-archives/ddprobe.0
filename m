Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE0A14A8B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775964454; cv=none; b=TWnomndpAN0Sdun4OqmvSA+vhLA2bXGnFXrhPHjfP19Fc4enSAnR5qS4uPS+WhmpPEryurd3XXroRzpt+zglq06ej0Ip/QEyMGjOmA/T1Ady4AHCueLhMKPODODdS7GCnN/yQ3mZpJKScLTJFQnL/0Ni6SZOhi5ArA7eQNWN7p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775964454; c=relaxed/simple;
	bh=GkcUoTvasA5AIcg77fvxnXGd7y1ijOkeuu5K5Ck4zsE=;
	h=To:Subject:From:Message-Id:Date; b=S6mOgXxF8hw37wn7v+Xu8r/rSc7AC0Q723jevEa7e1zenNYbXEqgCvNJbf8tCohL5h9JhrkbKC/86m3KMXRmUyCaFfH1k8Yi0QLTd29ioPrNvFCtDfD3mVobiAZ2fSpsVIInw1r7AZodYVwWYedqP2EbXmRWe8gPx8cWLDRgXU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWU0IBKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWU0IBKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C112DC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775964453;
	bh=GkcUoTvasA5AIcg77fvxnXGd7y1ijOkeuu5K5Ck4zsE=;
	h=To:Subject:From:Date:From;
	b=FWU0IBKZb/4h1Gw4Mk++2h/VWwMLPt/X5B3DEhjQBeIFj3IbLd8AoRI/WUE8wm78B
	 8FC9j/KIClHCSe3LrWsjnPqIYLboQCat5Dh4+lmAg/44iOvfaLRIu9TLA19+TrjRzn
	 oYVSJK54TJZbGmdEwADZvSwQILGzLPfeneUEbGqCEflBHh+Ekq6jbUlvoC4if5FtEA
	 gxyiFk4yBDz1h20ugtwYz4L81Za8df1edgX708iocHpypZYwBbNWLKY1/iJmW68eot
	 iPXgRdmKnnGEWgLQG4q3Hv5l3aOWCgJdA1hsWfbf6vr78ZcgZ4RBor9xQyWSrkNjfa
	 v0agODPRtp1og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC385F3ED63
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596445368.7354.6750620773303222945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f0288615bc1e9345e1105520a503831f0de5c8247ab3d11a028255785c9643
Date: Sun, 12 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775964453
