Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE161C01
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726623954; cv=none; b=CxXsXeNzZwNOIMPD4g+A+mZkt8EzGTXAszAjgs6y776iz+vVry0vXyBz2IOwIh1p+0ZTbAsCjib8iwOJwPbBXDZe0g837hb8l35n85XtlOCNYzuUDTpuUje36lY6TcZhDlNBnRABjyPxV+Jve81Gk8KxAcwGGvYlsPkvGuW7zS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726623954; c=relaxed/simple;
	bh=6HqFO4Xl6jaaxEziWw1o7ygugvS2kloj548TskOh6xU=;
	h=To:Subject:From:Message-Id:Date; b=G7nCew23UKLLuy2D/gf4HZO/UqdocgMtRFNbFn7Bv+El054o6VnDxGXFnrEO4NUOI2LGPdAZZEa4lxNAixZmHoRtQ2DLlDIujbceL+9upeSzvUg+wadE8wJXRfVlyh75Jbwlx3C/jOnbIKmvs1K+sTf8E23IbXDpCClCN4w1M/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZh9ZIuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZh9ZIuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C2C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726623953;
	bh=6HqFO4Xl6jaaxEziWw1o7ygugvS2kloj548TskOh6xU=;
	h=To:Subject:From:Date:From;
	b=rZh9ZIuK8io3pPerkgUtDu14Qlfne+W7BKzYNxZnviv+S4UXOXFouwGpYrea/DkO+
	 pZdJKn+L3B511K6GNX6E7vYCYO62LSPcc7bf6ppfDMQ5H8f7BRlM6a+LzTs/z2Uegw
	 nH/0Z0H/Mr2TXaDNGWm8INS2esRSqLX0qbHKMOWxAq0fBurB3S5WiDP+blnPu+NcJB
	 1QByVxvJ21PleW7WcdnDrlgqlQ1bgE9OKmgfpEWz0UhlSEOgPjZUfiflQTQHjd7hAm
	 3RCEA2Wt2gEQbdQs/X/rIVlcyND/BO3CzOSnMJysrTjGMA19GsOaLEqgJFzZEtbRYt
	 mmIwyp78bWLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9611BCAC598
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172662395359.4877.8415160466070799510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06cab7709449a38025a6777822247a1b72ee2ff0fdf898778379bb286d8407ce
Date: Wed, 18 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726623953
