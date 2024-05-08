Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E24312BF20
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715203943; cv=none; b=BVXCjeDAjrY9TjOp6vnOFLseeFWETJZ8oJIBOtdaMF8TOOqgB4vQbZgQ611Y0Wr39PSVI4EzOJ2SjtjQEPy9FGdgET/PRvMMRuNgzrkgat4WpmOjrHdFIFT48JmAMKfyqydxpDBuWuPXApicwIHwDx18DvUWtRdl7V7fMSXZ+rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715203943; c=relaxed/simple;
	bh=8UNpAK+k7daasxS8CSfpQvNR6XziPEcrz6KK5FJh7tQ=;
	h=To:Subject:From:Message-Id:Date; b=ho9pWGEVRrrkU9uT4FxkkAiidUsG2odn/eoboRt4qQbisKKNQ01Ng6qFZkj51MyrlQme6Ti4neFTPaNW4Jtcr04GBKIZ0TcF3+PQbLZpATtn8U3aI5CImFbIBfZ0oKab+gcMSYki2+Wm4MFXSlzOy/gB8sWkwiHo68EkbYmvh3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gyky3aVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gyky3aVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82E8C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715203942;
	bh=8UNpAK+k7daasxS8CSfpQvNR6XziPEcrz6KK5FJh7tQ=;
	h=To:Subject:From:Date:From;
	b=Gyky3aVRCf9RtbctX3BOR1qh9w4lOErxJRjvH8JI1Q5aW4O1cM504o8Nj8YXHZabu
	 UPlJqld+EFMsbHB/g3d+Qr16n+IMC2qizLE6Ms2nTvhtQTLR6eg7j8VrPP6qEziEwq
	 5inrKTPK4JJd6h1BgHKMU5aXt/EZJR7vuH8z0KjNSiHeQ7Ld4ekLAut5YTZGwyJY2t
	 RvBDYUZF58hWvAFBg7MFDYfIXdPrrI+ui0hiQy9M34He8ZZ7rg4ZYi6f1R0OV45/S5
	 uxb7WjJiwZKxXYNMK5zUjhfgoks9LqZC3jzKDYgK693sPawhqLJZIvDuuvEWfTgPaf
	 OeE7m1OqoZw3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1225C25B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520394278.28586.13622542580656896405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8f0d9295106ad4a8d8a9906d31cff6cecae0cda1b8b16ac3f30fd218ee28b8
Date: Wed, 08 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715203942
