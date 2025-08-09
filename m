Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1CD15A848
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754738394; cv=none; b=moQejQ2I+LcBBOz2cBnCpxx6iy3lCw+joIEsoIyT4NUxUhBvEO6C7YUjMh3wPjm+2TQL5RXeqml4I0JfZSZLrItOUNwp4flDLd3CV0zlFFPOc/yb4rZjuuu1v8yLzr9ThGU5tRxu7/QZi3dPCFePc/zEpZFi3IRs/foc0UawUcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754738394; c=relaxed/simple;
	bh=NrvNSXXlS1yAzO8fRc1cOKN3SdEPVSJqtbeO+aGMw5g=;
	h=To:Subject:From:Message-Id:Date; b=BqZtAdQlbFtcWsA+xb52nwYkZNmF8XywppQd0AGQBa0OJO0HxcE14gOynNvIHIeft35ellYP+pilWk9yByNiR3v7LRgZuf3fY89Q5qmKccPAdtPr9D04P2prDPAZilW0meornFH9/UJHRLY3TvKfX+0HIWwP0nXVwCw7tItUbGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h90ANuWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h90ANuWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2034C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754738393;
	bh=NrvNSXXlS1yAzO8fRc1cOKN3SdEPVSJqtbeO+aGMw5g=;
	h=To:Subject:From:Date:From;
	b=h90ANuWOnLqDbPE4XyVEB5eK4e333DEXL0XzUD/DwrrMvhwO0KF4aYvShYsFdoQiD
	 /wXCTIOwQzfZquOfyHbemmo7B8PQe8ve4c+aQStq7RVQGUykWNa46q7ksyvkBvjnI9
	 cL6i5nIegBiCTPtLA3dSxHRJLR1rjnG9G0NvZ/d/A97lpQoW6xuOrHqPge2y48fT7/
	 aXGSzI4m8k5rPUIPiJoTrKpHyds7jJt+lQ0TLjFnXX8nfVD2jKRbsuY1aovFVScWo/
	 vTjAoiHXHQIhfovtvkRj0ncMGy6RFY13zRyfTD7vU4p8+5fBzBiKCT0GKD5u8tAsH1
	 wt9+WWKxjXYaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E01C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473839357.12021.4962628552364676585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211da2c0796373a53520b274a3bf40214213e2078c9e1b6cf04506fc22907da1
Date: Sat, 09 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754738393
