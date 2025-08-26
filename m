Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127AB262FD8
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756235394; cv=none; b=slrt3on7riLszuPuxqRZYdJemXk1dglF+6pd9+jLdkLXXsY1Ml0yZVhDp/VQZYHClZollk+Eu2CRJPa+tm/i26GgVyJNg9aVw7DnTx8VLKp30pFVYEmXxicVzN9daxqVOqaUvIkD1lvOdRhD1e71p87sG9sevZhxK8xoB6M+bJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756235394; c=relaxed/simple;
	bh=lCfKLZ6FbA8VwXesphZ+mkxtBmGREaTpxB/RtjEHzLc=;
	h=To:Subject:From:Message-Id:Date; b=fPhih64fE4zo1xeBu/t5gTwUKlQfTCdOKXyHyK4qcCU9tsvLs9B0Es1zrBWvkVEAZfFy5ZX54KjgHuBc9VU6MzjMd7IYeHHP2jDx0ZdV1fSN9tJ2vUR3pPSwNBDJLlT+218jW0TIQ7Q5NZR32oN0SmPz96TBEFmmJID9tPC8nBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuK1I3zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuK1I3zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C71C116C6
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756235393;
	bh=lCfKLZ6FbA8VwXesphZ+mkxtBmGREaTpxB/RtjEHzLc=;
	h=To:Subject:From:Date:From;
	b=VuK1I3zyKA9N8QzFAzoaN2RhD9ujR4RwqKXp5yGYucGxcPZlDcy4vl6QOwXLA1pQg
	 keuUTqAtenzxe0RVNAT4eMd3fV3vJPoI/rektx/C41VaReIQj824VCKR1L3yIfVdOo
	 icRALgWZGUN5qgqidAL88LUF/Bqq9Pfbo6P6jsNH2wzwL9emisK/7mLDqEXtVPjSGf
	 ReIbO4AZPf2nYjpJ3A1/v9+d2q2PkOf0zQWn4y6UvAR2S6FCcc3fV+XF/YZbozTEyR
	 HFH9jzgNU6ubZOshAmdfsuVjcvuDOz2Xuvnwdos7mkP+QtCh/dlwmXBRIMg5Eg7Jc5
	 oXj4yIc0eewLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E652CA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623539357.15221.8020767481620099485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5d561bbb8bc2cf4d1856123ae4bc718c588d9301c62fa86bc9a11779598210
Date: Tue, 26 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756235393
