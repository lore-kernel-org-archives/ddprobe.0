Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C952CCB9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775287534; cv=none; b=RRLT2VXRifQjMjPwMquBSuJCF6fB8jhmLfOipFGsbuN+9MNiLJWk6mNQXXA9BtK6ge8CNEOoKPqEatlPuWOtYM+IJG7b7pyel5qVHZQDYs5+6Bz1PQ2Is6f57rnoJoczBHXsseMnrYTqymd9Gen4SqXr96hzNup4mIw0J+A4BZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775287534; c=relaxed/simple;
	bh=gB+lDYQ1VhiIZScvu2Ts6qCwRgzUz5CYpaTwT83ylBg=;
	h=To:Subject:From:Message-Id:Date; b=eisHaSogoLCsY9UN03dy2wuTrRVdiBNAWXAmCwWvVTVAf/r1KUIRDFTLt97nYlYhHoqSI9xW3WrQpWLCuGe5dy78LWsXZf1wjJMCJBg36qc43EEN5XiGpUmOARakHF1H7osz8rpCfxCDM677T6VL3gFLhBf/IKasGX2D8FqSTVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrQDoWKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrQDoWKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C71C19424
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775287533;
	bh=gB+lDYQ1VhiIZScvu2Ts6qCwRgzUz5CYpaTwT83ylBg=;
	h=To:Subject:From:Date:From;
	b=BrQDoWKpEdi5vkrxgzOojwoMzsS/DlZw8HwHCMqAr55LMomktYpRIKfJoHsyp90Q3
	 lPzov/Z7XCXNUoRgsLsffVEEYO5ZxVf+C07FLUYDJ4/GE6ASAhNw27TWjiJIfp4PRN
	 tlx7oitFXraq4xIfZ7Wr/NQweNzese1QQL10afhCCRZUBbp6IlAmvJzA/gEXkciDTZ
	 ldACxl9fxNaJg8NfP4RrYT/fG4Hs63OJ+MqP54CYc3HEwdZS3FxfO9EjF+V09+Fp49
	 KlovZnFBQ+4h8sbFCta4vXwU4sG9iFEzEkw9+E31xRyrZQKLDquzcbzsTNFgjajwgX
	 bliqDHbkfDF+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD39FE88D87
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528753373.30653.17534932630831827190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af35d243d83412db42e4f9d67469f11222ddaa8e6836399ea690b343b47a1ede
Date: Sat, 04 Apr 2026 07:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775287533
