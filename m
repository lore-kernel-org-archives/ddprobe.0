Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F7E2D8DD0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769460833; cv=none; b=Nz2ZUe9hVL4PvKKvwHh/inkbM78hrbFPmNDsuEsH5fXrgwSrOO2sV8EHyded27J04ClMMCd4Mx9OGzcDjIGIxQAuN40LcJvajpHXnjabq2QMxtCBPBdJ1JpJ+AEWqjz/MgAY2xGIrbPYpX9FLaWvPMFrPjxcL9WW2XHJUFRpcH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769460833; c=relaxed/simple;
	bh=8yQiAhGfVRJs37O1BN6wZuinHUfGeEhOLtMRPrJkjDY=;
	h=To:Subject:From:Message-Id:Date; b=XbLvTKLmkvHV4rOqUDpYMgakEFbb6aoRA0IzrwwJtMuresJ6R3vx3C8U1ZYoz+7MQWHAOMHydIbCcDCtyNhWdMHYLa/fo1xHoC1FHezENTuXMaDtk93QPifo1GeWHjmHcSWFi4kVhcDtxHd9rFOoy0oygBHpUK3X/Yis7buV4nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iwf4RvQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iwf4RvQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8D7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769460833;
	bh=8yQiAhGfVRJs37O1BN6wZuinHUfGeEhOLtMRPrJkjDY=;
	h=To:Subject:From:Date:From;
	b=Iwf4RvQfRDMR0iZ1EcdkQMyI2U/aeunr1+I+BVqTw0bygS3F/AHzDuz91mVTZaBV+
	 uMA988hSdiw1S1K2fR6aBf55K+HNVeO1eBzoumUA8qRRl9iMih+gt19ce8YO3NCNuw
	 YMljwFbDcmvu75BhJfpu/tM9uGOuwNnS6WAyhe/VslHYdGKlSoqWiK7YQDOr+MSqf2
	 ZoCNtt+6ILq8M+oqNuTfN8PId60TwUcHB6gEBsTfOvK10xSqCbS4lAwPxeWrXmKi/w
	 HrCj7dqqfM50LT0HWEduHxoNc+fb1V10Yr2gQk3juT/h4AoSenq6q1jlFnT5Yts+Zc
	 BeNbFCsOtim9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91665D1951D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946083358.1469.17463551990853529737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1525e7caeacf5cb0a327174187220dae1b31e3f90d51f830da26f7d5d5eda8ca
Date: Mon, 26 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769460833
