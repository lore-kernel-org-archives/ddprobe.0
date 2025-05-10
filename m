Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A84156F5D
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746843594; cv=none; b=AJhL4+NFKufA8yZI+aihgIs7GlS2lFWoXNWRGsvba0f4BcEhUncnqy9jP6rs0zIeGld8jQGwxdMBcQ6NoHU0zTgsv3tXRRCbLpTJw+fJ6H308xNoBXpEbsT7gmkQ4jtgDA9sQngSh2kYfTxYpzDqWezG9qyRYN1h5fsU4QQ/h0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746843594; c=relaxed/simple;
	bh=sM5e8Hrfa8z6oGk1OZRV9JqFQhU6TZ+M50Lv6oL/CwM=;
	h=To:Subject:From:Message-Id:Date; b=hEoqxgDZH4cU63iNamrAuumxWGpVwkZBeDy+mk+rmYhxEI5dIyZRunfXhY4EhCO2gTyrCntV7ypMeN/x0KwoxcWTtbL3juVwqgBnFy5aVLyYsJgR7cxrQIjF9uGwnvOOYEKMaePf1ecaIKJAJipiNKR2MfRcv9GXM+WwRVCx0ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L37kSby8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L37kSby8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CCC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746843593;
	bh=sM5e8Hrfa8z6oGk1OZRV9JqFQhU6TZ+M50Lv6oL/CwM=;
	h=To:Subject:From:Date:From;
	b=L37kSby8NYTFn3dfHFYusss/D6FYYE0QvSWlc7tsReVdIW3hFyq7IxdJKeq/kDmN6
	 Yt4b4ip0OdMkLPqXrTgTRBaO1+B3sNF/QrhBh/0Oq7yj/5AgKNl7qItmaS7Vgi9uFh
	 o26GFcdg1Wo2dblQx67863sxDuGmJKGilJR241NUEUZAO/3Jx6m73fyY4wa00GRcwq
	 SiWwBzE4NKfXLzy2vtrhDDWrdUFivQkA0U158DPw0493lbS6ljhksXW2m8W9nA0aU9
	 AeRqrftaVPcw5mZligT8xNOSkZWF5qat6EB5rciiMN101WAblHjuOvVfia+ruhuz3K
	 HO3jwRlMICHIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90317C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684359358.26416.6837530612640001100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b36a86cffb9eb5fe4e4134be2641a0baa3e9d82b84c7321dcd64fa694a7d384
Date: Sat, 10 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746843593
