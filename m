Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FD51D54FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741862334; cv=none; b=sk/zvo6EQXJH1/3xzosp/xPCqXKAqnunFEkxtG5kuOn3vbC8vmhsImVjyk4mtf4xu0xDOYSFYqxCWhUuE5SUnyW/mooNXExkrLNisWoct2JCGESRs0HyfA+K9rADTSaaVLM39KNFSSsYMyeZMLnlyAKABzRSDkc9n02npw8h5T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741862334; c=relaxed/simple;
	bh=1M4yFtKda7EukAy+GLEe+WdQGe3ZeYklgw8pwgf46+k=;
	h=To:Subject:From:Message-Id:Date; b=leWyOv+efOF8C6b9j4bCipeT0onH5Zmt9jj5Q79j3gnF1bcqh1aN5ZgZVv6M1gdn0j50Am8vMEB5Lb3GuYfIuah7RcPzCiEzNW0J0aKsNu+Bc6V6dcMq05RgkeMfdFYX+xSQ03oGJ+5lkbHfnzcuSKA5GXfFDZNAVvaHi18sAp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGpXFCTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGpXFCTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6751C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741862333;
	bh=1M4yFtKda7EukAy+GLEe+WdQGe3ZeYklgw8pwgf46+k=;
	h=To:Subject:From:Date:From;
	b=kGpXFCTCTQ/1Gk0Ix+pw93GlrOKjS/wVhsH47KdXqYX33F8+c5+YbqN7PU4405gXX
	 ubtcPw1xJLrVv9/GMZVJS5VyaXIye4vrMvUtXSVnxV/xUNd3EL4L2KvL5V9/duHLG0
	 eIZ5oqtK/aaK7/kOoU1ZySfre+VV1dYfbcz+EcNU4MbkldHFADxxS+KDp+sLQJ5OVk
	 oM91R7a2ButkTzNr5vY8o/T0Ioi/Ggu8Y+OEl9yVE5QtQiBvG/kVzejHH/IfYc3txc
	 tXjyU5iG6to0pI6vJ4AyxPJGiFZ31uzAyuQgyIUnPnOoCChb93aj07wCygckPKxXvw
	 ZA+SybTEEmWyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973CEC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174186233361.11028.12681332592768383323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7f9c9bbded6a6073b7df91ebf3260f0d64adeecfc762c99646da582c9a052d
Date: Thu, 13 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741862333
