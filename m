Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2895F396596
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776344254; cv=none; b=l6x3xCKCpQUQIihJnNBLpL2ogMTA9dKkgDCXlp338VVQmHvFFfJb1Y8no75EVcYIqAt0uDIHGlc0wF9260RXIZr9AMMxAdrLoyt7PactnCl3U95WAxcdRJS2JTgIMaWLRYhwMUGejHAIGqrx4g+u2NeCAekV9kQo4FrieWIYf5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776344254; c=relaxed/simple;
	bh=dIMJsvu3wTwu4rI14Mn7rDkxBg27KG6ikTTWsZ9a0Ak=;
	h=To:Subject:From:Message-Id:Date; b=AsyIORXTHwpiR9iDeGh1bX28qxqRJT/POC09y/YWWInLz+8WWI2I50H7vDK/Y7YPPniuWVFVVhiF+Rz1GPg/d7eMv3FmlaACglcr8cuwL5J+bWg8WE6pJ7VHOpF8U9RaJpnDEV5aJ4KqkMRskqDRF8vCaqr1YGWiTuTy+1p7Ok8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZWmUN/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZWmUN/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA89CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776344253;
	bh=dIMJsvu3wTwu4rI14Mn7rDkxBg27KG6ikTTWsZ9a0Ak=;
	h=To:Subject:From:Date:From;
	b=IZWmUN/alkHM9a/NJ7DjL0n55GjGgbZfKuzrm9+4wkum+BzTMFyMcoYVNIJl+pQdx
	 Dz8TwnjseyAyHgA+4wMv8Gr4dDRYEVHJytVyyfurwHOI0kKDTQWWNFbv9r4f5EYC9c
	 DVe46UslFE3g4Z1o98x2wqzFrVDT2NJ2mbC9L0qte3KST/TxMFMxlgzV6Q9Y8HakTL
	 ZfuQ1+1l0QEpsmZVeptMuHD/FQJoNdnQ7iCvJtdH3cYltlCnUPqtoJjWpdQ0iJzpId
	 EEbaQ+x4A27RHCkHh/03L2jXjdq3caWPclzyvgBFbZaXka6dXXihYGSRChUrkZS9F2
	 iNIo+T/J/FGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB202F8A172
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634425368.5025.8488431211595232570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf8c67f18c89131c459bc96972c66f896f2e757af9e4d608cc730ad5295feb2
Date: Thu, 16 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776344253
