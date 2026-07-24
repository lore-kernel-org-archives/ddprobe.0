Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55483380FEE
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784913034; cv=none; b=WdgAj0Xkw6S0sq8L3mewdWzkByBHYEzcGM4Zsmmy6IRHdVSQ5R4D+snhgYk2QDoP23Ct6BDnhJ3UDBirdEpgu48d16B/XEYITmmCpnMNdMmy3PjHdSGTPpXAZtIJfRE5Tu7eZaqqHNsvKMWkFqF3mvBjEpRMH2IoSQ8UK1JIsro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784913034; c=relaxed/simple;
	bh=B9BgNEm7q8dOCY/nqV7eJlYQgijdOR/Sel+3/98QhKk=;
	h=To:Subject:From:Message-Id:Date; b=M4GfAd7nRXEiucWxGvP7INkIhUhwTc482QAS7C5aVeIhPxG10juccBGeaUimu6D6u5B17kA/LAXA0BZFT+LrcvmCJEescEnUUgDi/u0wy8kguRXjZ2+oWJL5I8/65bRZoS7+lLsv6jziaPXeYqYPNK5nUE7dOhKs+0EdzEIlV5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmwNyaYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmwNyaYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2B5C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784913033;
	bh=B9BgNEm7q8dOCY/nqV7eJlYQgijdOR/Sel+3/98QhKk=;
	h=To:Subject:From:Date:From;
	b=SmwNyaYQFW+oYjhIMoK0yj1aUmdCt6SWhk495T31LPxamS+IO3yyMfTYiKRbmmU97
	 pmVvQjfkrrJ1VysTv7hOIQe584E0nbykEJVskMPH+S0t3LdUN27YBO8LloXYrT5Zxr
	 HyUBdaX2hDBRv+OKluux6kFQ/oiYJKyOyZ99LvshFaQXPe+CCejSBadHeihqdZykHk
	 Y+i4jwNzo7CDbGWHQDfXgIhYx7QcfjxDbDw4DPVW9aYhX3qPM56HvQiNSMtLR0ISh/
	 IG+X6tC6mKI6q0PcbCVVsaWXb0VS/p0nyGLlxIA4u+iXdOt6it1SMmmjXzRY7oLFKg
	 2WhPI75GGJqPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E85C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491303368.30616.3484383052001392447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c196e50ebf028e013fdb0fbba7d9677304370f44eb57480dc689cdaa6d8972fb
Date: Fri, 24 Jul 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784913033
