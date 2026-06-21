Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588704C6D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782043594; cv=none; b=LgR1ixdjlN8m+Yk8//F8DdN49UCUe+gVhoez2Jko3SheOyCLO8ecY9tKrWtLsUxp6t9g6AvQ456tEIlNplrQlQsDbJRANc/kpCJNF/77Fz/LvK7C3wx3UPlKEEoRycZCIkNGxbQrhj6c2rOHLuJk8LqSwHSXG2kr/fuJ0+0jzu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782043594; c=relaxed/simple;
	bh=NPNTy4V/OBqsHV1aXMLyXPYCWOHhWOi0NZ8VFaXLB+c=;
	h=To:Subject:From:Message-Id:Date; b=I0GYcegctJXFuUWvKEmNZtZy2w778/UdMaCTLEQPOvIadKP5mRutuqIEf7JBzQQnhDHPja1DdiKOjqli3Krt3GWZUPynBSaV5PDKuiwb6Dkq/tf1Ph+QFpOYC+ptevyCAnUSbag8g1qUj11RkvK9trCSDhRIdc3BWsVUso8oVAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Grm8Z+bR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Grm8Z+bR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB642C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782043593;
	bh=NPNTy4V/OBqsHV1aXMLyXPYCWOHhWOi0NZ8VFaXLB+c=;
	h=To:Subject:From:Date:From;
	b=Grm8Z+bRboFd8+KZl9doaGb9Sm3RlNulF6bN1ntX1bdZVcwNSgCV6Bws6n7l44jRM
	 F5KFQNOQCNUiHe8H2HIf7rD4ru/fl1G9plJw9NjpCiXQ0ahVxdRrDekyhy6oMn/2wD
	 sTYHcKupWFQs+kXqr7qh/oW0xa3jS7QPdCqI2MsHPZm0t+DcAiH+Wq2j4/gjUl6KuA
	 OxVdCx9snihY4nGBK6hCuJKt3UJMPneVQWHCkjb+uPs1QTL9vMLApieXmx4Fepx91C
	 bwNyv6E1NvnsBp1EYj68lYCiC326CmJt/e2KJa0P/Ilg09UU2l7ZBwwn0sQM+M+f97
	 7vjgFPiGbeVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3A9CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204359372.5886.4871008137701224884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8c91b2600dd26088297a7c0b5d7a0a8b19d813b611a0bbc38be7fdd0dbef1c
Date: Sun, 21 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782043593
