Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5259A187357
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719413003; cv=none; b=dEZ/PcfwVYOd71pfSQbHeE0JZhfzXeW648f9HQvSBcarTwLkzH3NJygqHzb6TktoE2cJNk4mpD7WdTinjT/7umJ6t1Di/boPkXvoj7c89SaUANYdGmI+wrjbZm59jy1KAxjbarSFU7zc9U5m+s0hLdhDdxSnZaGkyvNM+DzeB3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719413003; c=relaxed/simple;
	bh=kVpmHMkKZ+sVyeWB7X8au/00CamOyO8RGy6y57Bcmeg=;
	h=To:Subject:From:Message-Id:Date; b=i1wPQ3feKYPsqw5/jk5JHZ/IRN/pUAWdJaZzy52hapt4w7Wq3BO2d20wh4E3UY3MCwANVf5rhoVvzHSQ3Ds8Ym05PfXIyS0AMCatavBVp6IQDzmlTtn8Xhc+yhiZxjdTIi3CRDJA3QmMnNa3sLQ7Xl42fnJ3snoI0gXgvccwrYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAxrPVDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAxrPVDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C75C32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719413002;
	bh=kVpmHMkKZ+sVyeWB7X8au/00CamOyO8RGy6y57Bcmeg=;
	h=To:Subject:From:Date:From;
	b=uAxrPVDwwPOcR/vpXnoXhjame5WuMVAG3BizIMZ/p/rdAqagqA2ZmnOc17PLZQoke
	 D99GcTPLBTuZaniVNrC4N5xhV9fXOAsQTkWy/WmPVud54Ncag1WVGtK+NleiFhcy1O
	 azbVM3TM8OS7u+ws7/AIBEQa3lI1/ek7vIYZKbQHWAe9NZ6podkAaL++8rlxsjB7f5
	 /kST1dYhMBwRxDQ5NdGInp/clFcgvkMktHEStPq00u/1BBNSkvHbTFwG70IS7cp5uE
	 xTEv3iNEIALa0DkqUThqW3QtVmIpsmHsscKe7AzJj6d75pgv/l6YSlorcWWS7mymdb
	 InxcVnZ/bsOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC1CC30658
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941300284.8554.10758172921000122856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e4cf5284050885993b31373102a649273af0a25b95a2407e0eec9df20759ba
Date: Wed, 26 Jun 2024 14:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719413002
