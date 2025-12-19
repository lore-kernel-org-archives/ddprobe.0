Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1CF326945
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766144634; cv=none; b=kt+PM7o9rjBbtCGxV5sRCFvo6BBwPwhI6WdYwNwOpHSzNwIQUy4qC0fCZ9uek49BClkBlxQiGZL5xmlGVUWgjQ3MvEwO58Hs0TDKt3C9LgM1UHC5WFVN4HyDAD/u/Uy9qVWgTJMvLJPc3zppZB5E8UhthZuUdeAyiLwevpDUm2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766144634; c=relaxed/simple;
	bh=EMb3l9xg7tlPmww45xykcMxSB5btbUNT14lf5/L1kPw=;
	h=To:Subject:From:Message-Id:Date; b=c9OqsJSeH+Z+IR1SpmYt+aj5S6oPjWgjYCcomHIn248pzaWd61khvm6G4UQXtHX8epBgT6JPVB+AlSIYHveGK7hDBiL32aTk7Xcqv3gtEbwQYM2BGgVIkuYt7wS7w8DWlEe7phsmgvnY5d9EJEjFvTHxG8A9sBfemi9sBaCjlDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTqcRdx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTqcRdx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D9C116C6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766144633;
	bh=EMb3l9xg7tlPmww45xykcMxSB5btbUNT14lf5/L1kPw=;
	h=To:Subject:From:Date:From;
	b=qTqcRdx3zKBitJvtjKwkBYulzAfp7x05lCMzVhYqa5YVfgYWEq7BHGfdxrF0KQnKg
	 TsTg52VkaQMcsuHtASFWVPh4Zm5VKAB44PMe6XtX0qTnYwVXB0+sHeQYQeQreq4qvh
	 68fivE2LKQLxEEKF5kwEpxOu2vj9dCzfonsR4gFkok7LOoMKABT9lbM7XZw9m6zp39
	 m9B2fN+Y8H3uDAaOJDvCABwEasfd/E0J3Oko0NHOOr9qrQzdXI/nQvRVNZ7O+69xRj
	 X5ot7buAc9H0/aknujFa6nviPqY5hPwnUh8/5DtOVcASMCbial7iu/OJrxdAPN1KyJ
	 /2vN36mR0Rp/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904ADD767EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614463358.12868.5553689890922985455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24be304209647a458726b66a42f053565e4a3bff05b2dbd7f42effd63c85a6cc
Date: Fri, 19 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766144633
