Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB221D6DDD
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744176594; cv=none; b=qk7fEkHKYM74dzePSKhm59adxI3cfDq5FxXptrRGCjTalco1AneVldkmlgJP17iHUviHAC1AQvgLsE/f9QiSTB/e/1S2fLbRUFQB2WxtO9JJ61Of8IwTESeQPTjG6AGvBLlttkzWpFmSUa2dpt+q0Znw84nwLNtnVMfE+mxOtGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744176594; c=relaxed/simple;
	bh=qYEDNQn80mSYvzhbkhQdDiDcEvVg1j1x2VOq/BAO52A=;
	h=To:Subject:From:Message-Id:Date; b=Xf3KzSdJh2ZcGSiiVpVNKTKMEAHVjKuq9XeF3Xfr0AlE7vfPFd4n9zOzFTWO2pJ44BVcPqfKHewnV79Aj6oInv9mJ0MOvF5PcorWexLZoXLWVNT1kfp0Z+88OhsvW8eCgGz0hvsk+BlacdGNBLOpWPKKGjbdsw/DqqB+oyNHJvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gY31se5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gY31se5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5552C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744176593;
	bh=qYEDNQn80mSYvzhbkhQdDiDcEvVg1j1x2VOq/BAO52A=;
	h=To:Subject:From:Date:From;
	b=gY31se5fHz0PHya5fepAtiO+OL9tIx5WvegeZ0RhQ8zr5UbhffeQWVNhSgjY35x18
	 SuJ+thSsLLFClyRIPMF6ICyYr48B+vZMlz5sPCFHaXCvmgUjo7sncFwpR/PXcbQBxo
	 2NRBbBG9iTYgMIjUFS/soL9mY5/P3Y2dXG3JP1zRkunj3POjEGsbKfJ3nBLtoFCAF+
	 iTxl0rUp9NQiPMCWb4aX8iDmrw1wAeu5eBE8y82vEzQv3bo8eibQKvwolr7BQZmhZQ
	 ZISEcpEJghXtQqR6ubC3GOcidlRAWHzdmO3kuF9VGN8r+XqH8mnzgU2pM9VfMQiIY0
	 G4jBriy4iOTdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C99C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417659359.28519.7756273802923050063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef3fea2190deba8112a146cd2717bd197314abd225cb9442bce847451b3cb60
Date: Wed, 09 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744176593
