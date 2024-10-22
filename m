Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3661B19B3C5
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729601754; cv=none; b=PO/9+eig4pB3FkRaHbTZSx+Smy/Jfo5IfgPzea5aJDj900bmzn7wIXUFitPinlq9gLQ4WLj0ymtTb95WI3qTFfVJG6KU54pAc+rbV07A2vVqdhnzvyIxCVkoYUeq5fTHaC09tZnkel/DE1R5+0VMpaKD17oi5z9vj4Yjl+iUkY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729601754; c=relaxed/simple;
	bh=ftH/f/VL8TjmVcnrw6+zIBjbFn8CgZCRapteKWxMiKc=;
	h=To:Subject:From:Message-Id:Date; b=bgRPAfFg1bzrk6oja3vkR9EvWHI7DM/CcCZB8TzGl4L0g7KMiG9luMprbPUtBHRfk53yYQUzlmdcWqYHGaEjG+nhPZ++NwtkTUZgcIiA+keG82hnBmyb9Vo+O5zymq0pnaG7+Q84WDwquIqtNkO8/O58rizhgP/A4SFvPgZNT+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMxW9KqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMxW9KqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A78C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729601753;
	bh=ftH/f/VL8TjmVcnrw6+zIBjbFn8CgZCRapteKWxMiKc=;
	h=To:Subject:From:Date:From;
	b=LMxW9KqGBhxvNS//voWrQzArERq4myxPL7tBqthFiZ1elZppxMIgK55IWrV+TKpQo
	 y8ndyLa1OS5p/xkM5vw6kU0bU851Ag/AVrS5fhHZ4UO9rbR3TEgHcarlomr27l8XvK
	 C/DM2B5JVP8WhmUxtHI/MGr5+sHwq2DZoDvzKJP5RgeXxv7zw/gCP7psO7JJEAojsm
	 B11XzRlieH7qcmdmepvTcOjpgR6EV/2Hf76M/wYuR1A6yio4/UzMOC+QSG5pGVqQ/n
	 QuQW3tja0edHNxAbrY3zDtlYdHucu926x6dwolg+wY0rsLJMfoW2GGSPK8PrXch0/i
	 CJKMxhszmqccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1575D2C548
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172960175365.29243.5447349042879569071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06eb232b3b64e2f4396c22b3ed2210e0f6ce398a81974ff1023fdc36aa568fe0
Date: Tue, 22 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729601753
