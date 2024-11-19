Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F79B1CEAA2
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732028154; cv=none; b=u9P+kd9yuzBa+iwLIQIpXNH6VFYrFe9Vwdi/iLgGIcjEOmhq0H2leYMSUrP0y6GakJMKFlqlQpUkxTm7+RmTSE4wv6VR0BYV84jFzxsFJ0izZYjnlGfyyGHuFEBmxQyavt9SyjEg2W6u8qv1Hdk4hYPybYzGpt1NjKCpX0XgDqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732028154; c=relaxed/simple;
	bh=OYkQHIvHoSI2Mc2KmQs/hzhTQ3+vi649IWSDcgVzeYM=;
	h=To:Subject:From:Message-Id:Date; b=Dz+KZ0LLlblejO/oymtHVGtqpdxbiWDp8RG+UOr1BZ0m0WW35suHleFmillO7XN16taem2PPRfPaLbq+r78SOiUsH5wIl9LMh5oYp1Xrp+cPowKzurALWacyyb8gp3w/KgV+kuuKIzfRBEV27GAU0/rd0zxn9UFf1rFyCl2m0Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ua1TF5z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ua1TF5z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB026C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732028153;
	bh=OYkQHIvHoSI2Mc2KmQs/hzhTQ3+vi649IWSDcgVzeYM=;
	h=To:Subject:From:Date:From;
	b=Ua1TF5z7V1GIaT1dAhV8j+It2lUfKkBCIuUzwLQHD/kdmB5SEbVnAPtjmi4Yqnci0
	 rs0iSi9Y++oXSXfYHRPAoSHr1WYFxPKgCNOO2YJO6FNlYGoI9+7tijfmFMosrnG8h/
	 x4m1InvXWPuTu3AmkzvEQdGx7mPAckWXdRQTQBqBcz/c373TWpTZ/2E2W+LiwBBpv2
	 CuwDQuL0RyTaSa2tExw1k7dgFjDyz//kIMZ6OPaTm3NyYukNmM5BOlwptuukLZc5XW
	 J3Qgg/jPxmyfKae/DbmraKOzKDsYm8fh9V76LkeU3tm+/OMzlzYFzBGaTgw2MO5n0b
	 xcsnB5Pmg5rUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3A1D44162
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202815362.30806.5343211581435037643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22509f7a7baa1d243f2078fc28e905f472240bcaf41ae2e2fee393d169ab5f9
Date: Tue, 19 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732028153
