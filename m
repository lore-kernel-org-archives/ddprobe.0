Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BC2154C17
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743929394; cv=none; b=DkgMYFpPtzCqKi9qXfw54Amk7FmObjDnYbODVcSQqKqc1jhMZ1hAgBLikG4xQqEDbKtjh7lUT5wbR+4TH3u3qxGoqS5coKaJ7yy/krQvzlC+ccAewvcsmrc52iu8Opq6MyX6KlzGblVRIsqokRezBApZ5vgtAFaLlOlAiYb9vBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743929394; c=relaxed/simple;
	bh=Xbn9dUmiIqY910nW23sMY7FKYQ1uL3NWpOnRgQmFSjc=;
	h=To:Subject:From:Message-Id:Date; b=d1CtWq/uXUqIDnpfoNrP07vvbMX9DSvOD3n7HQ2BR8R0ltV7z8SHCaU04+ld8YaT96qNzZ0Q4qCVPSGnGXiN1BN8mnJrVp2L5pBku9JVmftv/9366mo2xkAe+RimP8O+fzZ+46jDdFvBTnYDPItxakPEngHRad3UZl2NPPPr+8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnPZt3eL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnPZt3eL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FD2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743929393;
	bh=Xbn9dUmiIqY910nW23sMY7FKYQ1uL3NWpOnRgQmFSjc=;
	h=To:Subject:From:Date:From;
	b=JnPZt3eLoP/YINELW+kE1C8GTCuv6kh3XyIcK6OC519ISovI4fcYAhLWkJivBjrA5
	 sQ0DOjpF2B1gQXE3BquxYUUnoleejpQeNw2je1MUL4qhhGIOgd5ATzlc4+gSiCpZik
	 pw/n1iC/BL0Bt2VTPAKyrG5/HE3fml/oyJ5DrcH4KBtIkDllZzHCRkmCv5ARnnjAjs
	 SPTRI2M9gM20nmu1bSIivR1YSoJkyCpFpnnXVHx5alWo8ZZIiWomiIqBlt3vc0HbGu
	 9DU7qiUcfbK3wwflK6jXQUdVVxtE5LxAprUvGnmmE4mOB3svhaXyN/dmfbvaK6S6/i
	 RUB+GOhKzN4uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A256FC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392939364.15867.13584728144982170305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb886b1dcec0977e4e52b7ae176eb7f3b27c649554a54c03c0743c9df15d024
Date: Sun, 06 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743929393
