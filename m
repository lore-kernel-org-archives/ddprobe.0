Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D83216D32C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721890554; cv=none; b=UHDos7q8K5Ookf7VSJ6QCT9iA33vI76Au7dpUCVsbKwEimk6Ralk5tfOiOsrvoufz0h/6IYG5fQW95S+k4MZV//qG49eAUE68GJPDA49pT2FkrlVQf0uXw7p91/+dMa+/ympe0MHDfT4tcoGpdOEP/83eZECdtcbPCcs0ugG+i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721890554; c=relaxed/simple;
	bh=afwrGgfIMU3nbhFbtyg2teaALEwEgmFsC1q3/wLNwQg=;
	h=To:Subject:From:Message-Id:Date; b=CW96PLp+Fo1zGIdc5C5IbKo997XFOR/9peXnloR3IIRG32eDu46U5np7UMSDS1LxBOVTEuamu58TNaSIGsWt522DHwhUanRHalI6GtGGc9SHsQD5lb4SwrVOiSHPgN2LMzadZUKHc+NXSWYd7MigD0kzI6UutyepL3J60AG51KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiS48GYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiS48GYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB62C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721890553;
	bh=afwrGgfIMU3nbhFbtyg2teaALEwEgmFsC1q3/wLNwQg=;
	h=To:Subject:From:Date:From;
	b=EiS48GYC+J0I2YQXWbmgM7zyVG6H0XDfnS0OcOZBfmK2MpfhgqK83mdA78qaLuKvT
	 YQsSKPdWZwLfMNLerTSO8FtV1bQlYLsBR2DUhwVkUL8mRYMhsvecg3v+mdXXu5Ukix
	 BxYwqwVvypwDcJIQdTqA7dHwy5NjWbJ5KrPWGWXk3zx64z0zHoQ72gc4Jy8XjjIVkh
	 7nHp1Lvk8b8VUgz2aM/VakMMtHYbscPBIGB8VTru/e9m8Nid82NW9j15t/V+mH2+KL
	 StSeIXP4Yx4VVbOROD5vteDGAAZGFvKR724+RyqtRifSc2hQkJ9hbaQL3cdbdAHXwk
	 qzVNuD/wgE9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99579C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189055362.13878.3385422129666685402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783469253c518e538f4799183144890724a0153571a32d2889c48f2aacc2f8b5
Date: Thu, 25 Jul 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721890553
