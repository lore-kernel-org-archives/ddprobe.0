Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2711A0701
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719260603; cv=none; b=UTmgNQILM15R9bsi0/vBB5IMPMClwmhttMnr2b/jToOcOMjOKW3w3pmgWN5o9WEOxBMenybkbOut/sujaB8jxYtaZo9Zekoj2z8jVS2u3vRqlBVY/8yAS0wgsHncfSqWSAoHCZ/FRXvFh9/0fxcftKhmGHx9pq/qco1eXWgRNPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719260603; c=relaxed/simple;
	bh=qKB3talpynrrkWhik7LyQCvmHd+H2Fssj5QVpqRJge4=;
	h=To:Subject:From:Message-Id:Date; b=WaOUE4hcfvkvKHv1Ef9J/mW0dukwYX4glqVvyIHChmIIDmYlUsPTibBfgIXzvig0p/0O5S0ZAG96U+Elxbknk/A6xiJLThV6JEF/UjoeC9PrbT3O0HjDrjOZ+UT4cyjL0KVpEePVQh/ZZkBPkERV8n1JUxTEMnSxAIa7zE5phIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfbIFuPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfbIFuPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D039FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719260602;
	bh=qKB3talpynrrkWhik7LyQCvmHd+H2Fssj5QVpqRJge4=;
	h=To:Subject:From:Date:From;
	b=LfbIFuPckV0ve91EGmb/tXFQTjmVK9pLWZnx+25NDxNbmekmE/MfEeMKjwNHlX6qf
	 1DOKG0y929WhGYglvWb84kbL4B6N4M+2Vd409DZoJ4PNdd1eO5ddKgfi6LgsIStg0E
	 GaAwKXfu7xZgtRyqgba0L6PxrqjpUhk4ebEcAkZJvoPArjripYNS/GLhbGD9yr00rg
	 xMzvRoN6pRUrlpyGYi/5TxwfJZQpG80osoRQZkO+CvoxntZ+eU09LK+Lb7prjVphNZ
	 me8wo+i5/pXbKpXNK3G2M+3hnG3ZFmGvEs6pS6hM5zPhowDNSKCWO6B04sx3SMQDB3
	 2WzYG5N3t+z5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27C4C2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926060278.8109.16388263809048229994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb01cd3f161a0984226f1660502d87b181458996db0dce703a835fd63c8fcda
Date: Mon, 24 Jun 2024 20:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719260602
