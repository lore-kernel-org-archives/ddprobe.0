Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5180C171D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726851954; cv=none; b=IApMJwQA61cFXKQPEtmAzjEQInF0P5LM0LaU59Pkv6ERQ39TuqCeVo7lBEE9TXMzZM6QT1ZU2JZyJNTnVlD69AyDFkvhggB8sQPNHkLk1eZeTcoCyEyj5uMN1PgdXF3Zr88fm6Rd2v/IzE5wc0vbjXDXRYqY/bqLJ7M3pEF4RaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726851954; c=relaxed/simple;
	bh=rcuul2xXqGm8mhpd7zlJWWISydMOC3gwUhzij0sj8LU=;
	h=To:Subject:From:Message-Id:Date; b=S7hOVPSxB8tssGiWcICzj4QqJb96tgzf+GR5gk78zrSYYGtOvY4q9z45Ap40OPTLBd2aMEvrV1O1Mkl4fDkBLLaUj53wdHmOZKw4+4NA9V1+QBHco0AlB7G+GuftdpcSEv9o4NefR1h9UzDBdzcBKwixv6krqSoSqEYzO044njw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePtVZ98y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePtVZ98y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B8BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726851953;
	bh=rcuul2xXqGm8mhpd7zlJWWISydMOC3gwUhzij0sj8LU=;
	h=To:Subject:From:Date:From;
	b=ePtVZ98ykELVcYr1BxWiWUM20T9/LILSZ8Z12fenPYhyZiE0msNmZZakKKcib5qvr
	 4lxplLZ2aXxwzsFZkDCwXGiQ0Q3XIWahOHun4U3PIQWhxC09YA8g5xoLzvMBzca7Ik
	 fc9OMWeQZ5R4ZX9/biP0PVa/dTJJWCuiGnebGJhOh1Srm2ATusN7BpSUGJvhXHDkS5
	 QdBz0jfHFo1NVuZoDjn2z++YRchWsr+nYoBvIPSg+ofosQYc4kLBXoL8a6y4sbU5G0
	 uAA6DyZSBZIPLnr8ElKJMGry55cSu0hsWI7tmTMjsMAS/ETOL63SWa8QfPymenz+JW
	 fe909CN9gUukw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30F4CF9C5E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685195368.31877.5276366370638318352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bd457d0da2a0e3c7bf787d6760a504e148766fb0900e88507e255abec5b12c
Date: Fri, 20 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726851953
