Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E45D48989C
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786636234; cv=none; b=BGt7ilvsDyKublKuqXY4sL74oux95CItHacpbSbQ8hr8WcKtdkT7GDIUc1nJWqU9KCpE4gNZ8UR8wQmMeoAY0k6l+s9sJ6uFkwEjUOSmDUUtsJBD55S9mHIyD+LwNTWc+bDxwwgz3cHcSJCVIFoBvOdDoi0QgeZlBKkHJ4muVDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786636234; c=relaxed/simple;
	bh=boCM3N7sRT92MvLhHe9u+R5iSB74pFcmDvo7XU8UCSM=;
	h=To:Subject:From:Message-Id:Date; b=qxvTYshEVKNN02ukymLIeyZEuD1Ph43XBjtZyZIeX/Nr2NqsZAJBnLdNuVR3BXiHfAce2tETG+sr9q/++OYes99Pwh97wQrL8c1M/91+XwbGDgrwpe7q/xWmdi6AAiIHllef0sseP8111GzEilUefbXulCfJrW1aaEM2hExLWXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ops1vTjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ops1vTjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFE7C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786636233;
	bh=boCM3N7sRT92MvLhHe9u+R5iSB74pFcmDvo7XU8UCSM=;
	h=To:Subject:From:Date:From;
	b=Ops1vTjGRta6YFEDDwkhqCTOZZGs7VLf5VRVdmBQwqigSG98RPlSnqvSr6sR6iIg1
	 WA6KGCMPuKdrX+785Tkjk1YfySu+K9rtjm6buNtvpp2BNWJsFUN9vjyDrU+Y5WJt8g
	 Fp3gjPeh5ssRctF5TWDbrUXQaefBXfOg+61ydKvBMhwIIl4S9L22CLKVr1Ysj6Td14
	 VhF5kGNQ/3VjTs0baL1A0jXU+5XKMXXw1bMzNu9RmqzBvKdKbttipFF1wok8/S5vNe
	 baDQEAwGq0ZysBgbWjcq1zy/alt30slhNK4L9ILkTtC9dVgFhcw/RhpJOzqHbWrh8j
	 HmU1LSLVtG+iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAFBC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663623369.22910.13096245782900404679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06d52fde996870f4924d7272be632040f40d95dd6f21c70a14864e40748ab59
Date: Thu, 13 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786636233
