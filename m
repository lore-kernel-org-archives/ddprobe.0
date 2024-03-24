Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AA4944F
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711256297; cv=none; b=Bh2mu/EhGXTVuTVNDfG4ToR6KnVHJShVSbhpcmEFOUgFzeZQ/nURN3THLHU+Vkx9mPn1HF3hneGUR0/h/4U3oeqQTIC/9fL5gf1njq8K5k7bxDNETRpTmorDZBr20pyFeEsM8HsTVZM0X2m/rmjCpAsS9klGVDQ3AJFTULcueO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711256297; c=relaxed/simple;
	bh=mlMuuoh0pRHKl3StD6p5gHoK9Ibq6hBZby+IXIlEmDM=;
	h=To:Subject:From:Message-Id:Date; b=uMvRx7iEnX4rb3KueBP6juRQ18Rq7pgu5p6d5qGhjHy2eKeM7jGldrLyi5sqy04QWOHIeBdqZ/XlS/JSw4jOZVGAqKIOvQoCNUnUlm8V9c9gJbaKsd5W1Vwhx72aEmFyhbISxXMoKFaPOWUatPmoVWottXzlTffneIVBZiNTXUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbZteKJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbZteKJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94738C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711256296;
	bh=mlMuuoh0pRHKl3StD6p5gHoK9Ibq6hBZby+IXIlEmDM=;
	h=To:Subject:From:Date:From;
	b=ZbZteKJ8x9ZxlfOOwiZ5yFn6fhERd4qcw7arAU+ShPjP7UNQOtyVVL43C2g/CU48x
	 AkwgPfuFIstyCdnHV3RCCjCwJ/EgryL0FflsNKSwc8jOP+ZlQbGXftopWm1A6rJedq
	 dCcLogqTlM2XvNldy7vNyK0/cntuthD2Z5o8m7VWlvy4bmcY8Po5XWCsJSwV8F+phc
	 q0CSPo73SKgmG/qKF0Ig5fhrtH6V4DgwHYDqGhR+2KJza9CHZG2azSc8hQz2MXRgzR
	 gucFYjqgWU7bwe/UHBM9DX4qXfLrZBA0Ml44bs6q1Z2z77M3CnODMyhs6WDl6mz2/v
	 CxAD0BmJ8FDCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 703E7C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171125629643.32585.5432163237653772184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13f28194a466984f53e7dcba07b9b84d6bdb91c2a7d059d4587b41be525d900
Date: Sun, 24 Mar 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711256296
