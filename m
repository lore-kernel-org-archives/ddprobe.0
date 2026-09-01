Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D99310784
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788225634; cv=none; b=QheezZUqCXyU/brSdrFl0hGzzjrbLtogXlrKqzFxP4pT3pnnSYRzTNrvcGAfkgfeYrZip3wwleFedKesH8KibEqmn7miPxgHF3WkLtoNzLKBEf3ArKraLOjRcX/SxAMCh9Tf9nZFYhkdq6TVRz9goM+Btfbub5kRwZz8jtUsne4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788225634; c=relaxed/simple;
	bh=+J+zC5+R4YQFIPRRxd7461N79ZlQ7Dg+m066Rr71IAo=;
	h=To:Subject:From:Message-Id:Date; b=WKp16ZSGvVnGlEWtrU+Lxlen0lWk0m0cHUFvvlpvHoZey9WDYCg1HQmySXMR1D97btvlHHlQp1BtteA9OCtWopxSF+AnGRkft98wI9N68AJfmKeV64STS8uL0wnX0LC7F5mzeEabvp448r5jiSeaGz77pGj25nfDcr4F3o0wbP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgzV7ig5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgzV7ig5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7E1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788225633;
	bh=+J+zC5+R4YQFIPRRxd7461N79ZlQ7Dg+m066Rr71IAo=;
	h=To:Subject:From:Date:From;
	b=RgzV7ig5IbvF80YnChDwpzIPqyL9TqkGq0Q8BaoJ4KCrTpSpFRiB0TK66SBKoqVmI
	 COjboGuq3XopsjIuw8lFSUl4v4pCc5EzwXhq6x1kudj0dNVsthd4AaR1fixH+pGoYN
	 dckMbzcfhe+1zIvDUPj0kI76oxA69KKGnH+D6KND/vQzD+LxaFesliIsoLwS7R7WZA
	 W9Xi5E2dquIc9/DRITKzBaVLi51QX6K/sPnlCsmEsIppf27w1IvAVNCFHBxQFn/0so
	 ynT8UtEf3B2PyrSrC6STvftZq3C5MI2mcq3ze2T4M/TJnr4/VnM/iXiYk+swiaUxmJ
	 YK8WS57E2BFpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB6C624CE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822563368.21811.8200310500315771294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd223f4229db82e8ec6ade903e08099a014ab73b5c10180b3ad47a859658ee06
Date: Tue, 01 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788225633
