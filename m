Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6326B3839C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719693863; cv=none; b=JmRYxUM/9f9E8kHfK+RtlPkL1fEfjWrfKjpP6YJcd5ryg2D+s01ye7fH7w97nAP0Apsvp8RP87kabukVqL/DtZZBgJMGmmApg5EtsLHQtSQpvho2u6OAh0owxaRzYIyakPXKfDUk/Oll23oZpsD796GkrirVU3hA6mRtk8nceLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719693863; c=relaxed/simple;
	bh=wwr3OZotO4wIhWmcOEPNGM8/MuUjSy1B19W/79/rDpU=;
	h=To:Subject:From:Message-Id:Date; b=up08QN7afhGX4CBApLs9GBu2jyKTiQM6MpnUDYFWCB8cIUIanCIm5rNBGPUo9IR9nBjj1Uo2+ng/+wbKdpRVLDEOCUFXskcAc3gUsfg6Ad42oVZ+Ki6jU+LYok1tkXV4m3BDiz+a5OcbGwfCz0qJpV2HQLweOTMMzjkkwI8vpds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXSvm7ZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXSvm7ZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A74C32786
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719693862;
	bh=wwr3OZotO4wIhWmcOEPNGM8/MuUjSy1B19W/79/rDpU=;
	h=To:Subject:From:Date:From;
	b=fXSvm7ZQGGj1EGDpAchKUvhAzL6KmYKPlkeklgrd2hcb9YXak2D5nBeLlY7OLNOSk
	 Ae2XJYvYCZOgnaJkR3/iXmTY9Mh1myKgZ1MteTH3yph0rn0KIqWagq7d5CB/CUuSqS
	 9Gh9J2+wKlT2uHTFWOY+1h6l9bdb1JYm36ghdENrcLt+e0owVzyYs+FzIk1JhHv3Qh
	 W7bQHua45OcF8h1Dt3kzDQYHWVqOXlME2BAdJBSOyb8vMlmnSv3fiFp2w++oq9gVIa
	 DDMr3r/S0Ro9BH4+s5I9ZkbAFkpZyvul0RQz5JAAmvtdn76W9Mg3Pi06B3Hj5kqFOP
	 h2gzG8GoEj2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D5DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969386276.32027.5286187985075913524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3483b36d6f4f2c913190ccb0b2b8da5450cd9c5f2e2b32b27cb61c5a90e8ec6
Date: Sat, 29 Jun 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719693862
