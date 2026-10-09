Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6614A1DEF
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791583234; cv=none; b=IAkBT5NIa5uYKI64dkXBhsw1YUFm1AJpC/VobfUEmNvFN17li6e0SQ7YaoQolxbWxG6OGcvOvrxMWxT8wpcXEqBYlZy2x6qe0jaAlIYGYpM99bdSDigVocu8T5UYU4RoKeUTZfKvefq1IobaYvjrSjYgYBWwsgUZI8bK362CXNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791583234; c=relaxed/simple;
	bh=tu3JsMTlV3j5e1z+LTqxtVKhqmTbRHmOQHhLMfPRXEY=;
	h=To:Subject:From:Message-Id:Date; b=rdMRb7RVDyZGjfY13CTBmNF/0QRGHqwdbIQYeWK6fX0jqmtWDdI6nipCKtfduadhKnVOOfWjt+qLH3YJHviUcT1ic0n/sSxsxVupIfK2Yr+M8bxrywUkEPwFt0gZuSoACe3GrI6VFRFjfKxRTypNesxLhFUNKUHrBzV11TYXBK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3Ji6r5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3Ji6r5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3727C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791583233;
	bh=tu3JsMTlV3j5e1z+LTqxtVKhqmTbRHmOQHhLMfPRXEY=;
	h=To:Subject:From:Date:From;
	b=G3Ji6r5zhK3gmk6WOibtGhFFq+sznDmCQyLDo4sq6hLzIeWNu+eV2acaGpckey4r0
	 zMpZPZDmJ1bgXK/Vjaed1/hdRL9tKbekzhjTQdRdJQ7wdmXmbuu+1dIjTMg/3qaInH
	 GjgA2Gn5nPOnIorMHGDkjHacf7fyYiw0fzAyfDUqHMEtavStLSSjUZTOuPjcTVsOh/
	 rhSn7vXEKTI+GQbMRmF1Z2e84rO5/bsEO3w2cKhuD3W+le4IxjGhiyI9iUrIwrCXMO
	 lUAIrKXxpvr5MhqEK6p48uBcYIvsH8FYYKYrnp6Xkl0+t9x4rzJnT9aIVoDDvvDvN5
	 KcugFtCz9+tsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC496CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158323369.27867.16101510470559806428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27f482090a6fe94eafb5c2ccba8671cccdfb195761ba5e9b070c9b6bcc8d57f
Date: Fri, 09 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791583233
