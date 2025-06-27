Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163FE2EB5C5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751054995; cv=none; b=Fwv3Fn9JnPy4/kCDpFAZe1ktxWgPgEHzT20uKTmrPUuFjZY5R5lqnR43/smQuNsTf6o8+u6j6t2+lLDZcH3InVzi5QGEKdWtl6V9/CN5Zu73G0P7yZhXwUamTjv+pMz0qFoTSRJsK2pjwRZM2WINb5+XYP4y6rb7uiblximkimo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751054995; c=relaxed/simple;
	bh=aeDhpjilfIjitPChe2mDTW5/t8ZnfB36DPNp4VONV+A=;
	h=To:Subject:From:Message-Id:Date; b=S8No/LFyy5TE/KLxHYyVu3FWMoNIo/ja8kZeGflrclKUoXnttMkckgBcTR7U/owueYAWY+qCJj6MMsdaS7ddcJJuqfp2PD4ClESP80nLH+vn7gta4sBhQNHPQuYYr7CkM+E64dUExPx6Y2DpYx/kSUNd35BrK11qvfZJIXkPXBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSwR13nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSwR13nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2549C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751054993;
	bh=aeDhpjilfIjitPChe2mDTW5/t8ZnfB36DPNp4VONV+A=;
	h=To:Subject:From:Date:From;
	b=DSwR13nmcv29qzrZrb4K3sgkP9TN0DY4euCskOUj+zTZKlXohWYASAHOUtpTwhQXh
	 7Zi+dGATuhCEwYlpmIwDdkwZI2rI3WWnVbCFfEx5rnWrO21cbiJf5DKgAHhdjMrTKf
	 gQBTUycHaigkZ2O1f1QfzQpMTyCOkD9I6EKicGl7rircTClDgl8/jgIWl+QohbKUG9
	 oOr2QLel6GFdkzMrfBk0rSY0MI5qHB5JXgh6fEfPhlR3X7RlKjqRc1RCDzxrMGa+jO
	 wySedUHP8XK0qe+jV6G22/dQF4z1hwguwE9GkHzk9q8WMxuSo4ejjJR4GCwJO3nzLX
	 z8XnN+yPJcziQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A02C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105499358.26440.9789765787090600589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8fd2d3ddaab4bd0b2bc31fd7e040bef69dfbaf5045146e663f2beacf10f640
Date: Fri, 27 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751054993
