Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAEC42045
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717849643; cv=none; b=HvbCDqd1woS1qkgtJX8yGhXE70/Uln01EZEvSmius97iSqim5GQI2Ghi8+tI40oxBMurFSCi4O6emafZg/br0Oh0VSYayYnHiw+MOV3XOy+YSSk7sbzvpY6/bvf2WQ9Xt20QWOkDnDIJGqVSPRLvcKZtX5j1iDT1TEry1mILSkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717849643; c=relaxed/simple;
	bh=NvB3ciJOE+4b8KGeWQue67jwIkPJJGYvfvdi7YLJRqI=;
	h=To:Subject:From:Message-Id:Date; b=GHzCChVt6KrVt8EdMssbYVzk9P/blzr1PpJQcK8HwBtDn8ibzTCgPW7t0GhEVi2RpFa8pgfpBnkTiTo7bIqWSx7+pEVFUsG/O7rw9HTUARz8zGQyHQSNFEBmGl0wrK/UKqU5g1oZGoJJCErqEyuuD+9f12Nw+gwcFy/oCIX/QH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6HPr/t2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6HPr/t2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AECC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717849642;
	bh=NvB3ciJOE+4b8KGeWQue67jwIkPJJGYvfvdi7YLJRqI=;
	h=To:Subject:From:Date:From;
	b=g6HPr/t2CyfIAimr4a08I3HyRzAW2LKLGlSiPKCBiIH5cB5UPO2K4/I8cHLaxUNAG
	 2KVgxNLN+8IpLCiyoZht39USa2Tj7d5INoyUqOMRPLAOurOz2aAAXhCWbF9HbtzHFF
	 iqw9bV6075yiDZtDt4FJUh0/i7hCPoA4/JAVSFNH/lP4ouP9JJb6RuWxgfRKlSjBj+
	 hQJLBAzxtUltuOHaskQdAn64sjdgwQtWylnPfo88hvH6K2V/qUGRy5xkjR8yE3iiSL
	 e8lugPzjTiotxGmH6O1ZDxIKSFddmmJvgxUK1/vjycsSY2UT/h0PKhgpI8e3drJtku
	 RkMEUNnMcczHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C256BC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784964277.28494.7352766438140689371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd267d91e50cddaddef05aaa6a0f496329667d5ad38c742debbbda62998effe
Date: Sat, 08 Jun 2024 12:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717849642
