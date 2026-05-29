Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455D833A032
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780042954; cv=none; b=BPoBOvdX/HUfYR1JcGvI7SOLV/BdAwvud9BkiKTy3Y98WdnJhQrokWx6WmolLvsGNbSZvM7I8URq80GINk+GruhiXPvP0nFaERWzhp8b2gfhY1rLCO0YufDvST7rRski6FjApz5Gmv1+dHoh7JHOwLlTxKsctTHYHUDCO/CBavs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780042954; c=relaxed/simple;
	bh=Pak2FWyvHvSQ5AYd6mv+DJIyrVBVW/q3SY5ZKXpiiRc=;
	h=To:Subject:From:Message-Id:Date; b=E4nBedGO7wrZC9xIOt5blTqhYPHoy00SO22bqfgppTnDNrKBxi+2xyg3+j/JgY4fZu0HOWLeGzbM+8UJDJC6xjyWPtAzaQD/Jxmelo6cmllFR6RXirI9jJW7hdJZrcERg2ZROJN+ZuOFP8Dg62tBec8fwBrhAvBh9Tmarbb1TOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiiayJC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiiayJC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4BAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780042953;
	bh=Pak2FWyvHvSQ5AYd6mv+DJIyrVBVW/q3SY5ZKXpiiRc=;
	h=To:Subject:From:Date:From;
	b=OiiayJC0NO4tL6+afh+psTta3Pd7cj28Oq2Vvq+qFRUZOlOjS0muZlqd4/F5kzYux
	 HSB84LR9VVL4wspQwyFtb8qaPpU8q7QwdvB2l5QhmHM0awG1iKo4+BQ+Wp/oAvHjNW
	 w7n78i6psdXdpULmVHFOWojNue5IyTQGmGKY9VozPXqd0PItd5XjdHyybHw1I5d91Y
	 vUIbE9O/lKPyPSU1/19NEVmRmSzkdkW+n7P/sDSLfj8CKpBZkGMv57Y46RF2IPjkjF
	 vZisk+vi9rY03OzeJPJ5I0qnlCnB3HaG8HXFlqVbvefw0Xex2MTQmOKxipu2/u3l9c
	 cfxzTHHzs/jFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6138CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004295373.12034.10054471782011759582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e927fa7dce8f6bc142c2d81ab9456b40ae7245ec189ac716a2dd3b2ffc230f20
Date: Fri, 29 May 2026 08:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780042953
