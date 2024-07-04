Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1CF4431
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720082123; cv=none; b=ZQHQYNeMunRyTXOTU7Fv/5PifRVwnqeBlMkbHRIwUyTlsrP+42jR7ITOtyfHrOX/vrMTekaUo/ZHbH7NwNCi0Ge+aOhlq4P0MBJRSY7tFmOBfXSt7PVtpK3AR8aechT+GOg3Qyg+ut9Zls6PQgf5iDep++k3m92/fyOFaOm9ZAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720082123; c=relaxed/simple;
	bh=hF2TEWw2//zHN2Q7o/QkjwYc/2pQ3olr+q0xk9fHpdQ=;
	h=To:Subject:From:Message-Id:Date; b=CrAUPOTndcEIfzqWznf66W2FgytOeMwzaJ4MC60NLtnJCCUJfnUh8LrVYmGRetQ0eaL7QBJdDTdiEgsxLwDYd9hIOgShdoZSs9mTcPyZFk933gPA7g8ivC29aBcji3qyY9fMFCXMYViKiJFJNCJMEjEEjzeYY8mIqOVeGN2I8/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9oyTRwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9oyTRwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DA3C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720082122;
	bh=hF2TEWw2//zHN2Q7o/QkjwYc/2pQ3olr+q0xk9fHpdQ=;
	h=To:Subject:From:Date:From;
	b=f9oyTRwEKYbcD9sjh68+Zq05u1F7Dx3sRD15i8igR1diR6C1i4j6HxP3y9s+wG8OU
	 NIehCUjNHwaCD1u5Z92c2NAAjzEcxec+ktEquQp4yGHnOQ9YizJ5oCM48R5Agf3+c0
	 gYvva1azvkATzXU+uSt22Q8sGwErgYwQtTJQllpHlD3ri1/97zwIjtWojmZ/qKMdMU
	 ARvoc9RJpPgJwm6VJXJeZBkKGz58FYcG6hWnK9lzO/j9zE62W/dau1L6BZCEwgUm0j
	 hYG+oOR1sapuOElTWKRr9qdYSP2GzjcgXKOk2uSdWj/2mGqSowm40Z8UXAaXF/gpYa
	 Lo6Iv4mRETcBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3306C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008212278.19133.3854726881505677734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7477d2eb7f1da1ffd21b8284f37d9d45a1c3b32ff91053de0f8295d38bd2d7
Date: Thu, 04 Jul 2024 08:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720082122
