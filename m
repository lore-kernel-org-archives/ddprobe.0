Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2186E20E6
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735094754; cv=none; b=C7fy9f1yWjOnhzYtQszPiWczxQMFnH40U5AGgTVvpAXZbTadAEz/N7C2cO/7aV39kx3zFZcwxbk3qyhsf1gyPyYKo5/yv9cO9dI2pA7KOIq6bXBzRn6Wv9YlkPwcokwmDYDZaD0iCtbKL53oAvljdEFcHk1sAFPK31RfOTB5AkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735094754; c=relaxed/simple;
	bh=qbNFPqC6BsuAe7qm95Punkb/dUxqkqQBCTfoC/1BH14=;
	h=To:Subject:From:Message-Id:Date; b=nCZKyNi3086e/Me0VucZZsp/poTX2mlonFvz4Tr6rSggVz7c8DdTccKLWhkcHkhBsriQTd2NbLUYocVQe+AXQpmX9CawWBsz3Z0COt5O50RhDcE4+4fncrPnikiJ9RthGtRMDn+PMtDjdvjZvwJDnEu0yqw0ud7NmaAV/36QJdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJJaYNCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJJaYNCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26D0C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735094753;
	bh=qbNFPqC6BsuAe7qm95Punkb/dUxqkqQBCTfoC/1BH14=;
	h=To:Subject:From:Date:From;
	b=HJJaYNCD1K8wRqVt4kHrQp8V5CI6v/4mTl7tI5tQY4VeMY6Eppg02PZkdnIX1vN/t
	 RMxv2wzS5nWgvqhKp49QEFCJaAydFTE+N31YZTsavKVowbYlNqkuQF8+S8DmATeiah
	 WCWQibNOmVPIhCp7Wo5bXboEdAIVjquKnyYTjZUuOyfxi9fH5btueL4pPNq2o6dhC9
	 YG6hcssScB4iG8/2Eat6SwCznkZ4XOwVLjZz4iGAY7+Kgr2y7OG8OasxhteN5UlvK8
	 pUE7KTZEbCOlaOXUWvdU74XKIFR2uoYKLKYa14Ac5dVcTqltArMjSWWVOwzhlUjtRh
	 /cOQs5tHeEJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA75E77188
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173509475362.26310.9920987590421515909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f47f1eb41ee4c50e268b245224d2d9dfc7694cbe76f09c3dbf7c7ea201858d6
Date: Wed, 25 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735094753
