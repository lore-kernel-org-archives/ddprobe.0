Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BA61A2C0E
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742308794; cv=none; b=o6vwNtqU+2Ze0REuYLj28t19ug6kjDfWvexMcc3RqBMn18MMF+iYY9kw1iRHecfn5QtQsOEYicUb8TBzvwsjMimDSLLYy7DyJ74YYi9Z2l/EuqJDgEUQ0CyYaz0UlRuzt1JZuYyzZPjU3g86j4t3ktn+qBpRCu1CS2+q8xZre8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742308794; c=relaxed/simple;
	bh=uhTtt9CxgPQlDOLY3L7X2xgyX36em74u0G/qJ6gkLgk=;
	h=To:Subject:From:Message-Id:Date; b=ZLvVCe22Us3xXz2Oc2n8g+XFl/3T1TzgXQd9yOY/7RSy8OihMQ8id0aaEFiDmyE8qzjxRr9KXE6YVSNp5djz9n4ESPeDPspERincVBVvJYNSz9ND2A1RDWN8mEEltMkBrYfGfoI4E2hkpb+9pfjGA+DKJ4E3frogKUGIdse9yro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjhC7Crp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjhC7Crp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65C0C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742308793;
	bh=uhTtt9CxgPQlDOLY3L7X2xgyX36em74u0G/qJ6gkLgk=;
	h=To:Subject:From:Date:From;
	b=BjhC7CrpLnbUwKP1tH8RHhpPf1x15xuc8DAF9UUlojSZSE7AFXowm7FDpsRX+XJ8r
	 5u5AzZVG80L33unqGFd84G0aK7NXZxEkRYp97I/EcRcUG/yoHDbxBUTdOWdFJ+gvVS
	 T0+7FZYF07HJdhYs2oiglxihZgJrH3ULwF4ByyiwHvhFbcHREPEinFW9nAt7uwa+34
	 mQzI+utJiW7M6DVD8QbHn/d8Oq7VBTZpAMJ3WzHMCS37V2MJ/oAorE+Tn9W0Dp7uc4
	 l+ppNxd8+wLQ79+9qq0ej0tHHkt3K50S9cNgIcMeoB+N5pI2GBBrVrnz269xihsI+9
	 fRO4LZD+RQDBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCE8C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174230879363.30430.1653894182069295559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9425325f3db7561534b64d67abe5c72991b3e71e9ee19602b973f789289ebfe9
Date: Tue, 18 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742308793
