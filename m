Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2BD350293
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768468434; cv=none; b=swm1UT5lty3qFYgbaMnlUubVn1AIZVJ69reiVx+9TSnwDE0VYJ4apBfTlmUYAZyi9JRzcKteUi5Nn+oepDaD9BeNHEy2JcHIruom+RcIU1ik/vq/RmsRZAbbiVoVPhPGE6+0jNFIkwj0aX6kV7IpoBG5l8zi4uGe8Iq/GIdY3uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768468434; c=relaxed/simple;
	bh=qJXXvEENcJP99L12g+GIe7X5UbzWhkBQxdccNiZgr9U=;
	h=To:Subject:From:Message-Id:Date; b=cUiwQYBxen08dwNLJ70ud9qjhji38bLR72DyO2hPhWcwXAKt+6mn9igHKvOozgz8kL1pfYbDl6VkffKgr7trZboBDoX3j8NY2B+RIHsDzAkcDtN7Ff5qINYHuF0OHYTDxZMKj5u+85d4Q94+/vfybhEJ5KcZR9Uwdjt7mQBhCa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C84TAwrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C84TAwrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C041C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768468433;
	bh=qJXXvEENcJP99L12g+GIe7X5UbzWhkBQxdccNiZgr9U=;
	h=To:Subject:From:Date:From;
	b=C84TAwrsQIlj8fNDMex+Da5tZHGOL6wBJv8rTmDAZmqi4YwMKl3xny9REN3bwAumJ
	 ilp5yJrRTgu50/YReQKfts4hmhoF8SPoCUz20S8WRY1iIyoEEv/2ArCVQbpK7e2bA1
	 39jx62EqZ6BxH3iIEaCwSYvus/RNCURgvsAPmx0MejzpTcCrW6WuwoD+jl5fMo0eJH
	 YuZq7QX054NQgRG67pReIG7EdZLe5KA2no5vd2PIz95aBTDK9Jk/AX1m1EwSE0ZklP
	 HxVJn9WJHZEdjSZ8bIewS9caBTpZymBru6+mX+QZbSmjP1BYZQOe9UUXOlOTozTpcc
	 IUt/BRtdPRtug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F511D41149
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846843357.16484.2255254149008644887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9738eaed59661fc549bbfc2d22f843e37fa06cce1321e999520ac231f641b1f
Date: Thu, 15 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768468433
