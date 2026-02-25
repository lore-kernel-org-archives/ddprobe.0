Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428862E175F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772048094; cv=none; b=SsRWc2a2XpL+SvblFp3ymsmIQOJAHis1K0jKEznzmWACTzbMtIStPt6FlqrDWTilKDn2BE1GXapcZldI0rNBwFfkyPoHCVjXKHf4pgV8zkmyuiCwIyspO9PuXhwbh+Edy+a/XYCxK6Zar7/hHZ3KJ2IbIOxwsddaUWrTX1Js778=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772048094; c=relaxed/simple;
	bh=ZyMOS18nQdGfyEfu96TOMipTe5AJnM4BbNurJPteN3w=;
	h=To:Subject:From:Message-Id:Date; b=L7aw3RqCGHAVYsCoKdmirctOY35lGltlUZ8fumWM/3xjP9b4v+IJz+lNE1GpX8RpVKBDDolj3DUPKbT0xymEHk0FOBajBwKSEvkOult0b2X/9h6LVS7rqocKGKKabEbA4tHkExcF+gBBffDwFzXG9YU7Cm/dNrpaDN39JBrZiRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgful/ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgful/ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E44C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772048093;
	bh=ZyMOS18nQdGfyEfu96TOMipTe5AJnM4BbNurJPteN3w=;
	h=To:Subject:From:Date:From;
	b=cgful/ea6ltW8qAz5lTXQSe4nmbaX6zvgegGkcokIJj6Hrm77DmVfzx0An2PFmTAa
	 JyGerzYwp/1t/b0472l8ACPl3Zu3bnV6uDOqtkZ6WabtWvLPPwrE1Jh3B7emEpj3jL
	 wCJqDJNoIXy8vKfWGyeeSLzJC7THaEZV+D407Nc8cPmNKWd+tMPs+pioZsn1jrFGsa
	 sCOsCvohVq2R5z8s1xeMLBKbvv9k8rYdRQrB7roCq24W3or/GYlhqdiMIjg7UkYhVg
	 3L0yb28cvRZGq9amYEHn4saspqhIfW53PrJBYRyFOeoS5Z2N777taWWNQJ6j3JT/MF
	 ZUzHi0UpWANdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A22FD45E4
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204809379.5014.14606269740380944055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658a26fb33108a6bf8bbce6c36adf0f3d401b7c8da6d83097faad7f16073c687
Date: Wed, 25 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772048093
