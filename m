Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5C93233F4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781128594; cv=none; b=Wane8nnMlqpL67WwJifWqSVB+HnivN2SkCGndxxGjW6cKXOFFdkhCD7sMBQWK4u2hf6hNk24XbmVNGnBFcyLYHWVpA1jVSygowTSL5S07DhXtfrnijfSWhDzCwwzU5OT/baXcXcEjzE3Cb6lUjXAKHMtm9pS1DwLdM+gpqZzBWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781128594; c=relaxed/simple;
	bh=AK56vMtTwnXBElElKydu3RjOkUZ+QTrEAI1EDip2r9w=;
	h=To:Subject:From:Message-Id:Date; b=UJrAsLmbMNYe2fv9uu1OGJ8jaZyj/nylekxh2evg0T2YBBoxL6tlDLH7NO8WudNIYBRv6ihaZU2IE+tVeTAh/wY0TnyQwmJ8MpcyhjXudqree5vihZEysBgBkNlP1gmDBdS9lE815waW449ylclNZEWKIaMSi3EYgHxj51vY5mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwMT5Dc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwMT5Dc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C389DC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781128593;
	bh=AK56vMtTwnXBElElKydu3RjOkUZ+QTrEAI1EDip2r9w=;
	h=To:Subject:From:Date:From;
	b=CwMT5Dc7Drv8nNXzuFMhX0SQj75oSvsfa4aKkHG1eJ0b2/L9TVjViTMURLY8ArbRu
	 uZuB+RXm4TkYDZdCSL7TENaokVMW0JAWIdyiXaYhuC0Ajo2SmSwae8K+PoOoKfIwRG
	 psbnOVFa/49xiDr2KmQ9Q4xKU7KTcKV3eCP7G9yjd83Pial4iWTyX+yA/pmjBtsY6E
	 y3SBe2X7dacAQxuRpQa7KlCD3IHxMIzbNGUa8S9bZrVAkJqLeGWe+mrfImbq/O9vk6
	 d1zKQ84ZX5x/RVJRSXLPL6bwRFbrVp/FEhlHUOaQdCbaq89/J1pEd0y4+oBYjY13nT
	 9Kyh6BEBTqAoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA58CD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112859369.18849.15054256101162587684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd755b3284f6120771c10e830f384b7910bfddf9e5c4f45ed36db07f1f69393
Date: Wed, 10 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781128593
