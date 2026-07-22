Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3B433ADA3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784762374; cv=none; b=kABj5GaIpbenjRXuETbCl4IRu7ycY4wc1BXNt5meqjUQ9tkNoa5WDkOQ4Y6W092v8I36Rrw078DbMq/yTp+r4MQd89EhSQA+fj9uKdl1MX9VYglOMO5Gk4zSbflZhiDet29soByIKUUlmTGUk1oW2YZWcGyMBlsG/xAeuvBKiEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784762374; c=relaxed/simple;
	bh=/tC7OFYe4/+k/V/YAw3g5+eI4NOYtXDoT1r7sLksWKc=;
	h=To:Subject:From:Message-Id:Date; b=gjioBMbuqisZrTitbIsNjzgsm/c9TfjvyZN8Bf3tW5yRy2bdiFahyH30m4LEG1j05q4A9hmbVkOB7kdR/w3+HjcViEVsaNGJYE1vuCQD6iXw1KCnxk7nRsSl3jdl6hhHCM5uhl0Cd8LzYnxBGLnXmrsiBD+hLx5XsfxQYoDoQwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXLamFEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXLamFEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1595C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784762373;
	bh=/tC7OFYe4/+k/V/YAw3g5+eI4NOYtXDoT1r7sLksWKc=;
	h=To:Subject:From:Date:From;
	b=GXLamFENXIbIWMsVi4HVV9Hq5RquGbovMSs/Lbv5X0RW2eCzLQpeqrjtVL7cQ9Ukd
	 qBn3t1vIinahN2ohzzo4ikN4jVzbvTWd46Qy21e4oGWCbForbqEcPRzJRwDajSv4+N
	 Q+d9lcemJX2lHgFLMVi5QN89gy0oscIxvPmqTBnszGBI6h2HJhj74iTCKrwaT41KxK
	 8sARWthZ5ma4/AqzAxSQ8Ng/uiSLNcRSkxRI0lKwnD2K0O+WBmEl6V1WsDd3vhdPJD
	 M8VkkGOk1FMP3ZnE+9i+nCOgdgKgsmcChMhMDEbl/rCTNKiCmj5bcQG6FUucet0XaJ
	 ljJUCqzJ0qRnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB492C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476237369.8297.16307562815034509151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27f6ffe99f6a418efccf93d71e4d8b0dac63cec67e1107bf417dd9a7a2664da
Date: Wed, 22 Jul 2026 23:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784762373
