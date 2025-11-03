Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364FD86334
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762142994; cv=none; b=bewKlHa1iiW54UV2iGm+r0/dC5SqUeomc5gimmzkOjsWOiMGE7kDHZpTZoCLoLgyVIrYlBPsjuYl2QI+NhmYcl5efHkPoAEhP5lJC5Ybjp4ax5LdNO2VzC4H6vCi0wK6WffL8JO62pZdsa+PEQwK5zjspFoDnomDu0yVBBfcXQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762142994; c=relaxed/simple;
	bh=HNll8HqT4j/BJxVu5kKCvj53euiw6suWM+bNA/Bv6G8=;
	h=To:Subject:From:Message-Id:Date; b=iIoQwoWOGC9qb2eBqMw1Y2TZMuThI09j1qUPlekpl3nS6CcVOt9crkv3FmNUHBSkUF8tc3STg54mW1i59CcwPnaH++B9cBW+lqfVN/kLITvN6+cLcI+XSTXJdXAaamY1tVH3+hawmi09MRe1V1CS79nGd8ExlBF94W5St2kKD28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alzMUQCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alzMUQCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4833C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762142993;
	bh=HNll8HqT4j/BJxVu5kKCvj53euiw6suWM+bNA/Bv6G8=;
	h=To:Subject:From:Date:From;
	b=alzMUQCzo/BMaxpu8Sn7/7dgIfFkzcBDONfuv/4cinFZ+D1GFIE2zSggsnbtKLsv1
	 6K0f8meWTTi3KQfRj1kJTi0lGF81rcCYw8Fd2E90PJFIsqObY17Yt5sDpBb1Vflhxq
	 41+a+z1td+3bVIH/x0Hi8irErqObB1+z8lV/5btuWxxU7sG5atrMz3CltksCLxsmX5
	 kEEeSCcp5Hc6IdkMcelnZrnTUJl7UL2jxdfEJyYT+Sk+eqnvrCZRyJSrFcrBJLTwJB
	 3lhY9V3g4eqi3yMJaY3Xc3ysrx/9Rw9yofdooTlDLhvjvpSmwRBMqOQGqWZAd+I88Q
	 RD39xDFMiFKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE2CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214299358.3984.5563565734805261273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22225741ac91156651479dcf7299cb44dc4b900839397b69ae6fb36cb5d13976
Date: Mon, 03 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762142993
