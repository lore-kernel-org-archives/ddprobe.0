Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C63D22F1C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719514463; cv=none; b=t412mm2E0nPy48nld4jjF4SgWoCoJgcxyh33VmVByura6Plz4/5ERmw2eNGsW8P2eiJOAxM1YnYGkFrM70Pua2J9tOqibI0i+T2RdYjmzgq1B36BjfLb1s5OrwQz0jgexl6lHQ/0WYaMW8b0hYUSa593yPRm0OYr3oxdT8tUBSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719514463; c=relaxed/simple;
	bh=SsZDYzrMirbr/ItLHJHhCsDaGJyC7IV6t4BnrURVFMI=;
	h=To:Subject:From:Message-Id:Date; b=oJOXI2rx2Cly2m+mM2sQz0ZyVxQzhexJSRTxT28mrWe30pYABj9CMwb6/WdHd3ktCXGGhx60KpVg1tmTG9MJmM0nDWJ8ClNV5vpiZByrcbz9cmzqASJyNFhvZcTll33bhs7FvxZt01lWGVqi/GeM1dtrV1LJ9MMfwqJlUnL/njM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OET1++K9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OET1++K9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2094C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719514462;
	bh=SsZDYzrMirbr/ItLHJHhCsDaGJyC7IV6t4BnrURVFMI=;
	h=To:Subject:From:Date:From;
	b=OET1++K9OtzVYkx+JuIXWrI//U1VcVrWo3fqyU7tJ7tVgiBZmIWqr5Yd7m1YqU6pt
	 25KKnbNHkRJ3U0Ki52RXBPx6Yd905E+TdLQiCELMMJ9oRI4Nd3iifdktk+e27+t4oy
	 mURV3ts1a47Oe4+M13qkjlb7uLlwElZmiUY8BxUjcopTEtsI9L+XPiJf5+ms/szwYh
	 qcKi2UoIBOSiNN8z6djYvtKNEXoptBzBomm8VnOyNrRZ3oFWtCvOf6ctVktR0hK9eI
	 nkAC3YjxuyA3wVgWcJM8pKZxkRUYwTC9JnS3GGxbKtFPvLQZnbOkTbRHxIMW8qWqgS
	 wq4zN62EfPbVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E95C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951446284.17685.7813206265659010741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266fbd58d227a798b260a0dea7b686cbe8f55c5658fd83e40cba4ca9761df119
Date: Thu, 27 Jun 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719514462
