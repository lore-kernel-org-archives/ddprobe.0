Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7D8BA33
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738856754; cv=none; b=QzOg07AsPkF7HwCu/CQhPRC0JazGsgUv10qqKRWKvHwlvw51pmAcgBcrM6zm3CiRwN4IiQ2kiqmWcYYsUrHj7GK93a/iAZKgeFRDG/hxFJ+N/cY5KaEabM3i9N2a4EnGvoChIfJM30GNG8/jdgXOeqJx4KNlOpg8u7SMozqVpWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738856754; c=relaxed/simple;
	bh=N1JTicnuAV9nNjOdZETp59zKe2cOCyjy35LkUaizfoo=;
	h=To:Subject:From:Message-Id:Date; b=jrqTtCgBj1ocjAb2HE+CS5kuD7Q55OBgByQF0qA2W+LIVlCpRGlc2Q7ixhwqsBlAcIb8laMTA5Sgu4se69WDyokW00pMgZRAEjFWM/WBcqLZTsZbu4BV0vW1thJC2/O9kvJUtSqUoV9mclAKP/AwhQHUxweNZMk7IocWvROcaTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNxGWN5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNxGWN5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3199C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738856753;
	bh=N1JTicnuAV9nNjOdZETp59zKe2cOCyjy35LkUaizfoo=;
	h=To:Subject:From:Date:From;
	b=jNxGWN5WhafUs4dfbWHIaVLUQ/jzIpqTrZmFzP57jAo/nrYTCnR5bJJzYvYX9V0kX
	 LTDZxEidWRtXqz+tb1cOI1LU6GKBGCkXul7UN2WG0yNYAYrKraOqKCxYPgQP6Kng4n
	 SeuIJj1tpY563QFioZXd6fwr/dyjv2D2WdWImMmuajsZnNsT0SWQWlvvtTIrtCEI4D
	 zuXqoE9OMi/TR1YEJYaP48r0hNQyGCPw95ne3v/pcXM+sRWRYc5dXG9dTmn88OG4Fd
	 O8SrM+RyzIzXErApeeKmtUa/4pPDY3W7TxpJbxtA568d76rDHCyz410/LM0awSpc6q
	 VqpzijNiF3NUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE573C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885675370.1102.17600583689264536436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2690e939d2be5d85718890d08ada2f3b8a741060ec813fd1d45ab81fb6871f36
Date: Thu, 06 Feb 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738856753
