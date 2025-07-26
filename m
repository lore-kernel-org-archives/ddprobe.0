Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0A821ABA4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753574394; cv=none; b=g0BKexuojhyaM0fZ8PqNxu+9nSr+HbdILLwNMi8VdjjJpuTEpEvC8Eas26KL8ecegYd3AXllQ4g804PtuJipYoy8rAAS00mCw9D57/bhAvw08Gy5TxWWzVJjjUVGPE52bwvEqZYrGWPzVClhaFtiRkQ3x+lT2euIUDfxcVAIEos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753574394; c=relaxed/simple;
	bh=VkFAebQOSwwZYSKSwerLIjSateYr6xTj+bHxY3gkWM0=;
	h=To:Subject:From:Message-Id:Date; b=V3Baek+ExO56N4C8GFhg3petjlzZuUH6KNdjlb6E+GaK4cgei7gmu8cscL96R5hHR+WrT/iyuBAIuAvC6Wg6F3GlkVWOukEIRYhvNiIhOsrohpEsEf2t3ti5whowOgz1aVkY7wqoXGNbd54qK2YjkZJWkiwflVFV89xjMLX75sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRqT8nrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRqT8nrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0269C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753574393;
	bh=VkFAebQOSwwZYSKSwerLIjSateYr6xTj+bHxY3gkWM0=;
	h=To:Subject:From:Date:From;
	b=cRqT8nrtKCjnVOjXf9V2vGvinUWwG1vzA/8QYEH9MS8vcAeo4cmpN5xqDdL70V/uX
	 wrCBNUB0JQqvo8Ck9iYVvFQNWE9eW/bCADpanHRvv/5hs8KpPKNrLMoMcf62JXrkuR
	 kOzlZIsSTCwPkPY+lpxU4qLnQyXuNr46PqmUOsFAenUwUKOhWMzlk2t4rZLJN9L/Al
	 tr9LX2HAG/pTlbvuH6r9TrJ+99Zys5sgyi7dX0EMx78rZgbrRbV7FmALojiX1Np8Kn
	 yFyGTFvf87sSpkiEwstjfzHmsMwllP9/MtzhA5Q2Ab9uMGsarcaEoHcfaQXGVUCXvY
	 Hge3q4CkD3RDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6E8C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357439357.19284.5983636661085770014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7582417feb2964fcdf3ac8a57b12d83b0fe21f86a2b5af15ff93ea8521c72f14
Date: Sat, 26 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753574393
