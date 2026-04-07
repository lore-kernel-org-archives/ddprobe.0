Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3163B38A8
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775563533; cv=none; b=b4+SKkGrkUSpeS/OieHGQD2SU5q9eq3zJBK2RqLihZ0aSr8djWUgzd1idkjst0QkBdOH+/XYk0XFZbKq26Rg+5yOQTz3W47wE0+NGqy6KpzDxSsAb5cclLQ8m6NXFoh5fwz9mEqNe2TYhAfR7UAJpnSctI8wdkN1TiPcy37j56E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775563533; c=relaxed/simple;
	bh=3FVoBdYDbFm4QKaNLHlJr7Mr6N0coIcPE8as7ne0ICI=;
	h=To:Subject:From:Message-Id:Date; b=Fm23sKHGnUcPgpYwJndeH3e38VxfUT4RfTFGqOVImG0ifQej8Mb3wwjuLARSnB1hWumots2pJHaytSNCrB5pqw7RuBmtVSkmjacCX8+3lzoR/FET/DkbwQtZyFGiHOy1UTtx1RNQfuAQvN+LAxnszDpkUuaDFh4HI2RtXPpv5mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSF5tA2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSF5tA2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C3FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775563533;
	bh=3FVoBdYDbFm4QKaNLHlJr7Mr6N0coIcPE8as7ne0ICI=;
	h=To:Subject:From:Date:From;
	b=kSF5tA2Fc/P30fgRNYrGZ68q5i5WlxpiZs46HYkgKIUQahjINdHnuMPsGNb+5ig3Q
	 2diGADIkuDZoggu5KpAj+mpcxeKeisOi4vze50vqzzL5KZu1q9fKfmU+sVpxeK3chL
	 WJa4dboKuwDgWVljcPRbDTOHf7StNq8/bCUs2gGpBfIsgag1eSwatRCnBaBroQe6Y7
	 Yw8DyeGeVGbnPWnWmSadj/8leRygRvziolsn2XgDkyX84ugmS/vwtvujfkwWu9E1WI
	 ZuBUH2iQ6dFgSdPkwR9YdZocpsV5YBn4uN2+KSer1QoZ3vjtkQfxlMmXZgSRgsSf4A
	 rbvTpaFpd/DGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD83FEEF2E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556353369.10097.6752058683569474910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f853bd2bd50b1932ea02a7bbf98f9a6af8cf87a1957b296042126a4105e8d126
Date: Tue, 07 Apr 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775563533
