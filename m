Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACDE45027
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740905934; cv=none; b=EYr2Vu3A2BSBjdXoY7bqK5bDX/UWSs42iWZVZ8wAtawB6OITmsWbR8b/3AJQqM0qn+OWrKZekEOmAzzdEH7Tf9xuLn4u3CnpzoQmOC8iwE4pDhrd2wLnyd1klWMe13c1ZxWB+Gisfn0iu6KSCNKpOUwLvdClfdtwISoKtA0DJQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740905934; c=relaxed/simple;
	bh=dKQm4OOj3aADpxAbMGpTcLgFrWwnBlCMxHhs0MrSDUQ=;
	h=To:Subject:From:Message-Id:Date; b=YHqB0wAnFHl6Om2wROie+5wHPwiMiKMukJtituJM3I/uJz3HIs+xufQPqdA7jcYSioqvdJJOYILz+3OCTLZvfxJQKQCNfETPTGEuMI8gOz3dGMLET7bY9P1C3XalWrKZGYsQiAVLABnGBjFOe49+zZeRwVIfMsbbGq2OUC9FN9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYYedvIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYYedvIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94BCC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740905933;
	bh=dKQm4OOj3aADpxAbMGpTcLgFrWwnBlCMxHhs0MrSDUQ=;
	h=To:Subject:From:Date:From;
	b=dYYedvIhtM98ULu7o7XJMD1Lk6589UyqUAVFj0yJ8Xc64kdJfSzrIjVS3E1xVYZWy
	 Kt7hZBcdCz+Me5yndLO/toUFyyT9hzfOHuFvKyYQ8ZQg22nRXtVhetX2+mao7cPeNP
	 FPaA87/7OoEUnE6qq9/EdeSyZdcWDZ2ixBMnPSLDDHT+S4u7gLZ7SB/Lv/7TEGkVjZ
	 B4pTi4Ue/o4cmTWc73D8WVBYB6Jc79WGLQHDCgxblYHI/HBKBt8fJRjCq/PBT7YXMU
	 seKt5Q5DUFK9YIn9e5oVe6MkxCF8N3T0EPGdr6PkSXzoPsR6J3SZgDmSKKdJ546E1N
	 vtmoxZs/eht5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96886C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174090593360.7295.4736794255341352160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea7e4fa0192e83e031de63b43a4face5f1b7cb78d42ac4cdde89e67813c6a01
Date: Sun, 02 Mar 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740905933
