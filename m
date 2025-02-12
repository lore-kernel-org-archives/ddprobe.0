Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E791DB375
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 03:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739330454; cv=none; b=rio5SaUfjbv7C/AtQVzRnSnAPq6giyhlGLDFWfAZlvRzFnZYga5GtIzd/qtp8Z/c2blSVcBYbczspv4DSE0nREuMEhKPjYDpA41ms2g0vrR4ZSG/8XkoW+R8BV6X+5MyCK1XV+EobOWKLNmhdsKsDqmwt0fxozHoCMjygBj3B/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739330454; c=relaxed/simple;
	bh=4hjzbXy3YjPelGd4H2LbXV9xXnIGsxsYqpsuDkD23M0=;
	h=To:Subject:From:Message-Id:Date; b=cZRDrKSwUp/zoD5XEog3F1hFror0iH3BcVayK1rQhfuWSRZuo+W30UsHUMrrAEXHD21dBORwY3BcLADfcngOCIAA6MN/0OTS/aTZelrnkx/NfCPztTYl7R8+1Ezw7GLTuFG8erVTh/P9qmLBhqk8S8XrRisq9g/d4QBQ22mtlRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKcRzbDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKcRzbDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20EDCC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739330454;
	bh=4hjzbXy3YjPelGd4H2LbXV9xXnIGsxsYqpsuDkD23M0=;
	h=To:Subject:From:Date:From;
	b=aKcRzbDhXl8Xes9UfrbdpRoFhl9aE5LtsOIOpC2si5hvAcOvuMjDF6EUPJnLoeZ87
	 hkO/b96qUTD+2pKzzZZtRPjL2NscGHrOeFbKyRQSGLUvOD8jY120Fis7/sLAFj5TqH
	 666gfl1jxp1+yniMEva2sZfb02pZLDtcvzsSMChNNnM6AYvV7Th7BHAdkNpqHc6+TW
	 OkmH9S6qcbSb9hSfHkw92uTGuPl8uY+RDaMI8y4fbbF2GcfKfHb4fjAY50j3y0w9jG
	 /58AlZ/heSOEnQtG9fnsFTMB8UFoWMY/2X6AHGMtCJJ370HcXAsNJeIAli6VEabIFB
	 5ft0pcxB1tXbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6A57C0219E
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173933045382.10397.1016066111737322006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f317a24d5bb9bf11849530df308b0193b94e31359799d13b725bef89f1b804b
Date: Wed, 12 Feb 2025 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739330453
