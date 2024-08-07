Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FBA12C81F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723044954; cv=none; b=AQpUNq8xmc0dPWxs0hCTjsioQ7EIlrPzKZ7/0s6k6tV2g1N5TQa7fMGGP26P41w8JERrN/y0TkZejpyvsBbByotV8d1d54txc2AvhiJ5sUOdbOiPIhrkT5oZDs4WX7wi6vGTtM3J7qVrlSFjyCGbKOCfrZf5jcg5OXvrY0+zHXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723044954; c=relaxed/simple;
	bh=Q/K5LGRQoc8scuwXZ3NURw94xRzt4KC96GDeox6lEhA=;
	h=To:Subject:From:Message-Id:Date; b=HmrtQsykz/9ddKR3AOuFxOJwoH7GUVNK1lB+hnEzEvJYr/3xd7w6cIm71VALLWY59gCd/TOpJvAmnU+TZjc/tfq/cItQEGwiRT1xwnJAPtuE4Xl1Ua7y7Lyxqs5WkzA5xfnQBbJPFigCc+hF2E7chz3ImqzkSSv5lwmk2lIINWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shYSG+ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shYSG+ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81BAC4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723044953;
	bh=Q/K5LGRQoc8scuwXZ3NURw94xRzt4KC96GDeox6lEhA=;
	h=To:Subject:From:Date:From;
	b=shYSG+ti3cbrm+oE23Fbw7BNf1ABr373oHmJiZfS0orvotKljX9VFT4Bsp6QgoG9u
	 uMAMqQiaEyYAvdhWuWxfLcr1qosQEKSHCHWjHIgAI4XMWBlGoqwfn1YsbY5C4/2MuZ
	 CBQ0/JjVQ8FVItKF613gzZdoqDSK8ijZnQbmFyfXsBY40/2HXQgoGpXaRbJ64NS2At
	 uykNUYg/lOv7rilVHOO23CsN14DnUt6HWucCyenoPzTlLkEI3utVtUfMJRat5zs4jf
	 /rdtj3HZIPbdiDHnW4ib5Ze+vX/jVGv27rf0rKwzjj/SJprVE+rUlvrhhqytLQVEr9
	 93yzLz35ow6LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9525CC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172304495359.6363.6272378179823741558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b35128ff570518917e574d4e8f4bae7ce35894419eaaf9e47345cdfcbc7ef5c
Date: Wed, 07 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723044953
