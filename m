Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 829D333FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718185703; cv=none; b=Ndrf0lvvK1UdxYPrAR2s0oNuj5cmOejVaBPYutMFfpHlEM/l1aByFt8mf54jqUiBFALATTb51rgam+UZh0FHgD/aTSb5Pd/jUzRlYGNgpurc5PoYBP5WedKsM9MC2xxIXRa/K48tDt527QXqdkUKo7MGIc/3jU6lWqJgSnUe1OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718185703; c=relaxed/simple;
	bh=rXBo0tT9l7D7RFkCtkA5lcpSlFhvl2EChnYGXXJE7xs=;
	h=To:Subject:From:Message-Id:Date; b=OYPF0Uk+pvdkpQGMifQor7V5OAJW+1jGrI7s6rCbZx+9NMVPfuhtEfuTAkmov8FLCDVWKOb+/I0w1YI4oH92iuD1TdhM2X5Qps31d+S56hu2unzjrrIeIek5O7Qqc2KNMHKSYiSuOMgi/goLNIoe335OpLbk24oO18RmzF2yhEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtkS7GYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtkS7GYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 056F1C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718185703;
	bh=rXBo0tT9l7D7RFkCtkA5lcpSlFhvl2EChnYGXXJE7xs=;
	h=To:Subject:From:Date:From;
	b=FtkS7GYU3rYmr1w3M0zr+PvFMki1BkihjVX/2fYgyWFo9RSbLT5DdNH4HInNwq7H7
	 oatBezlcJonJkWGqFBvCwLKeugXGTHsuzu7JfGlgB/VuSlRYfjKmIf7SesxOXZwhYo
	 8XswMklUNxNDZnOmszNdhLSCFTAlW88Uu1WzE4Um4I+lGSrbU7M0JOIOufcjJUG1Yj
	 aht6l3k650s133aaXvXBMVPd0T8quKItjav7Cl5cJ13QjDEsUrGkZOR0oYVIlheFMS
	 X7tR10VuNu7XTGH4msBZRfVJ/rODQjROZw42HXYoIpaDq7RU7rTbtjIDFh29zcpGfL
	 airOn6S5C7t4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE5E3C27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818570288.24875.15233313475321204246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7190996febdb07c80df911df128d4127ca407e96a6294065024a7ef603a638a
Date: Wed, 12 Jun 2024 09:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718185702
