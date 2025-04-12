Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A5B18CC08
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744460395; cv=none; b=GfzLTsnvUR+Is4rRFkePft9gHLk8oygxe80cCCI5LNmkCrKE1tULzyyMIwrwwg6wXhOUWISrwnI/BVCI3XpDWuBy4ZO0d4Bu60TZb13S+FyAjGQYUDtHTthFF/Cr4QMn0W/3MR/rsMS6USL/W6IWCh//mDMQhUEMejaOr4ynHfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744460395; c=relaxed/simple;
	bh=I7Yms/qnCt1hd1XQGcBh4xwaovCRVIRo9XvSEr4jTHs=;
	h=To:Subject:From:Message-Id:Date; b=fddTsqyCmUJhZQRdIiT1FEuNq+wbjXAD1MJLropBk+wJjxl17nra3jrWQobNDrX84wkhdAixWoOykp5eDbO53Dn24A8aKDudskPDNOYn8r6rFjuuUJNbeCwSvvJrPgrtKHEDuNbnyE5ri3VUgIpGD3V9VqJg3ut3KxyXW0AB+Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnR8RskY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnR8RskY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBECC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744460393;
	bh=I7Yms/qnCt1hd1XQGcBh4xwaovCRVIRo9XvSEr4jTHs=;
	h=To:Subject:From:Date:From;
	b=OnR8RskY4gEkBluc+6oEjzT2MM10kQQib7gNpmTuJpDSReTFzyx7bvHC1+CCaJLqF
	 nzJdvIqke3d3KAouZG5LS9Rs+6TUXSfiwmi0+egAYwQYAboyfKIbbhTs6j1JRccQQw
	 12PT2NK31NyB8T2+719+SPQn4z3S6S8KiLSqqmqeO7AOL3cnps7Lg3jNtp0l2YYnWs
	 K5qrBBRPyH1HSdD6NXFwy7OytyUWAtEKdCBWo6vaFkNaAxz/U3Qk6gBXcTFyDgKE+1
	 rq16B/xPScchZcffCNQ62+RjDpLpVfaNDLmD/JwBTBs3I0q7K5nDtweN29P7QHH913
	 ovY2aO3Ge5/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCAC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446039358.2483.8321904390259943945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b286ea8c16b018f31056349ebf4a19101e3996a8eab60fda3a7d30b707b194
Date: Sat, 12 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744460393
