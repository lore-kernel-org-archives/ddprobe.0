Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5DE2E22B5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785815434; cv=none; b=L8FjoWN2Zb8UIa4h+8mthU2emEFls6pR6z02Sy7E8qfiWpS1mOlza92wQUPzJIiQY5RAUy8GqD299Lyxx1UAYl/HIJQbI8HdyHxdbyfc3iR6DG21i6qn24FSplvW7LuKcUIatzdSJNgUN6Pi89Sk76vo1xX+Wd6qNOvf01kXsjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785815434; c=relaxed/simple;
	bh=FmNFpBDYvHfz1ev3n40ZVNRIZvaUgMlgq8G92sWNUkg=;
	h=To:Subject:From:Message-Id:Date; b=S886DUFrb9uZBfo+CI0aVFUZI8GmuxF21Iwlf+vY6ehSLy6c5yrI6/cRhKmydAuT+6B7y/Ck1T38F+jM5dB7BwXxL+2PP9vTzV0DNrF81HlNTp1X/kYuIGsTl1sYeEE5tRfDefSx/a+Y2lNi0pFdMRKRkgPEVxYiiNbWQfFE/Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elHrQFoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elHrQFoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2256C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785815433;
	bh=FmNFpBDYvHfz1ev3n40ZVNRIZvaUgMlgq8G92sWNUkg=;
	h=To:Subject:From:Date:From;
	b=elHrQFoov/P2h6Vue/GTlVEgeyle6MFcdyoxJoCG0o4n6nxi666CTHSQlh6m6RkP8
	 mucem/e2juV40Anjml4mTXJHHbKSZKx3Lajjsj2DTc27DVClPG26K3IQlMld602U+v
	 j1Y3K2j0w8LczhXbLDOI4dTtVmCpZzD2GBlDQ178tDWqneT1Jq0TQ3dMUiV6k3zh9i
	 4FCWfCj06Q1pcB+fjAaP7J565lDVnHmMk5u/uUeWfZG3jzm65SiMtq2qHXy9nHkATr
	 RwIjJJRGhF4Im8zZGlhK3YYGvUyIbpS7FtVimOgb1CygrGo7yBteZ08VRsS0BIFqa+
	 uSHa2ONbFveMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFBCC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581543369.22707.10675221924527056294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32cd8ba10ef719991403c55fab6c12a6893717b498714d5c70516944ba61ddbd
Date: Tue, 04 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785815433
