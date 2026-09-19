Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C4936197F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789820434; cv=none; b=c4yyf4ORINDVHgwTz7YZ4BKxYwaGy34Q0ziPmFaiWY3NlGdDwRC6RtEmw2XKyWIHe4iYZtJfbSxEAirZHsKAEafOudSnsmj+xix7e8gIAbcFQfDv3bP9VHU5Xs6D1LQQBu8d6JuwGRLQ868Wz0gCyCooaapaQodUnGLp9JLeNik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789820434; c=relaxed/simple;
	bh=c9gKCxmqQPafs1Sjg1E094lTUO1RVRDX64N87jxPAuI=;
	h=To:Subject:From:Message-Id:Date; b=Xqx7f8Bh5sMGXQ2kk8ngyckxbGumN4C7PCJMy6pJOQvHU/UPnwhlPY2GoO6IZdCpVn7hBDb2acQwmdfKFP180uz0XvLdRU/1FjwKZsrZ5M/+8LnUBdbl9sf5UyARAKQ60p21HW4HTQR3ZwLJkJ2uotUjwVBBb3edtbT+puMG+JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1nzFkGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1nzFkGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4574C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789820433;
	bh=c9gKCxmqQPafs1Sjg1E094lTUO1RVRDX64N87jxPAuI=;
	h=To:Subject:From:Date:From;
	b=g1nzFkGuNzyzxkxBORAwTBCE/x2WxEOV4EHaE8RgAQIU7tZXPJZ7S0jtfw8PUPkOb
	 2hcRkSFgzAyiLkgCLcirD4u5SU0vt10xOyOYCFPgeH9a+xGvQ3vaAgYUMh3Oeql5j6
	 uR+L7O/oerbqcRNtB8i0A91hxblSrSCMvmINc3FSbO46mzTzQFMaHeyzYgJ51+rIHo
	 W3shaWRLkr4qQZZIGXeDQhhpAxDLy8D+9kSfzUDOqVbxbLn8hKanshd3eXsii0zSfc
	 Nhmuw5BiM4eGuIUTvJ+7zvgEVbr6ZiUkNreqHuij2OFNEUGt3rS99acDY1fwRgpbrH
	 C4keG8XyDpGBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF39DC982DA
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982043368.29539.3956820632678729085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee03a1355e0299a32b5ef217ab98eb64ab9b54e1bf753495c5379ece6ec6642d
Date: Sat, 19 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789820433
