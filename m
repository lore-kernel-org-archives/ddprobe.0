Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250BD1F5842
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764731574; cv=none; b=pBoVz/mrywtaP6KmKiRte1eCEdq8m7kxnwH2UINhPI8RaVo6amobcCBDPsSJLUIABqbL9Ejo4ApRnQda6fAuc+yBWiu7C74Wjf5MAGyWXSSfamybegUm8tCm/s6Nup49O6jumbLoFuZQs6KsnBYrdl2A27S6R3IAr9x99mNEXok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764731574; c=relaxed/simple;
	bh=eQ4U915VmG50QVorspf/Xs7nSHh3Ft1sVLGgMd7VzxQ=;
	h=To:Subject:From:Message-Id:Date; b=A3COKe0CE9SMlk7q+E4hWKvX+FofayIR/2nshilEESi/pPgi1i77NhFX4dykuBqaAwAXFBzXz8VVw2dgjbDZ9s0UQ69Dqn+rCuXSSpc74V7GAnSVByO9mCzdcYfBqkLcRAgDcJTB0mqgpMDsWFjQ+snF7rV+JV9VTaM5pDiKIIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqcZ7L4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqcZ7L4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764731573;
	bh=eQ4U915VmG50QVorspf/Xs7nSHh3Ft1sVLGgMd7VzxQ=;
	h=To:Subject:From:Date:From;
	b=FqcZ7L4r6SaKkc39pmJ9U7jm+0xw3LHEfKA8TyZVvV5QuDOLthvY0iBOyBtGUKhYY
	 Jx6zlTR61HF70O9cxRumTexHslhsFT58dsDK/Z1+1Tvh9IeQ9H25ShJ2uTaTGscGJH
	 CEOqNIXLIxZdTxnLnJ11qPbCtpkVPzKJ28SfTmwjKT/KKoYsZB3RX9GOpso7HeTmA8
	 aMM9uBUo7TDceKfP6iHaR7aRb9lFiSFS6Akwoq4a30UnOx2V7+hJ5vjoxQopziGBZ4
	 BN+vTFU3OPxMi2Qlj+6dw5qXIo/1UE5nhiamDL2O+8f3eq6Z3ESLVHc7wBxEKbGtwC
	 JghEA2SLO4jSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95785D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473157358.5524.9749006763621182859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74d502fa6b678c0002be062eee9cfec67be7b01aa4f80385bebb150b47eb6ce
Date: Wed, 03 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764731573
