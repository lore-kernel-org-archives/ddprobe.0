Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7FB34AAE9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768972434; cv=none; b=W6q5yNi78UgXwiUsmTAmgrzp3Alm1//JB0dNL4bBpaujP13i7EzdnTfowQ0JDqCKQl9Sd/ursO91QHKm7JTpBWjzYHdAKSAKrxK7XvSbTyDKskulE1iwnPan7kH2fYEUaW0BRHk5iio0oPrauqWHlwrCaIoAME8MXw+4IUgVYB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768972434; c=relaxed/simple;
	bh=VwOe2ZEkF15YUhciA3RsWBmw2eWg3Fas4F8bMhMSmRs=;
	h=To:Subject:From:Message-Id:Date; b=LMbsXQwnu2vmXPfnxdY6e/exeygG31ARXTHrE9Lvn0cpcbvxJfJtvmk3e5hu1rkVJT/i755xquGSb01wEf6qCLmd30UQdYpYBjcJzITLRlLWxVPD/AZGxpUlfti23rF05gbZLLQakNcFFlVv6/gpTIBI3Qkb4DfnzM1fLKrmsvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEZ/Pd1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEZ/Pd1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EDCC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768972433;
	bh=VwOe2ZEkF15YUhciA3RsWBmw2eWg3Fas4F8bMhMSmRs=;
	h=To:Subject:From:Date:From;
	b=nEZ/Pd1Jl4Lq8UJPEDCSIGE0Gr8Jc+i8+jXZ3InvJotL+bka1HPPKhPLggbAlXKns
	 9VkIZlmp84BG2ZXx8UQ3XLv4MTlT+hy3qnCp4RQOXFc1LIJc/KHWDvifgJ7rEVe9xS
	 vA9ajqnk/t/mzsn52/pVBto6wdMpO0HKbOWCcv6iApjw4X2V0y+9PUfqJoxquJliYd
	 IdSYjx+xN9qRYx8qSCDwk2ujm46nNX4x8ZjppZtuoRNhsn2Vq7eAiKNKmqGJnlVbQW
	 CtgiUEwIxUoapNrS4uuGDE+0ETgOMKsnGx3zT+/iVWt6vYhZzZyIqy3GZAni0zv/xd
	 57CbdSwNuZdEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E28D262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897243358.7723.13929005482718128782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00cc667c5a85dd65b386b959c736b50d4563609be965b7a77cdbb9edb64fc861
Date: Wed, 21 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768972433
