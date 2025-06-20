Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3062317BD3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750463994; cv=none; b=N3tYziY8NSFYhBmh6f6vprvzZXL79AHP8q/LiGe9/3lxlFbpQmSFGgyeO1bcEHFsbOOUevJlxHj12xlWNJX8jP88lYVCOah+ROvehpvit21BAjbZQvcm+mp7r4xbFnEjhxXBeecUFRJYKV4dJXzIcBnt+brSGUhI/ulq9C4M2Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750463994; c=relaxed/simple;
	bh=Sv/8KREbfH+i8B2CgtRQp4QbTtqv+K7SmorWUjubQxg=;
	h=To:Subject:From:Message-Id:Date; b=rLCDMrvjgn3Vi1JHNVExGkpZ1byb31QS+9vr4sep2AxlLytmfhD2AbfAnF1PelDZ/sCzw0H1fH0tiZl+dNrqxyn/3uqPiWDp9eb4iiLqpVKMQMLaJ3UBzsChthxf7rCPYwZbPP0aLf/hoesYWhRz6WoWggihV/Yf+SkiChj2q6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pf8r/UMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pf8r/UMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750463993;
	bh=Sv/8KREbfH+i8B2CgtRQp4QbTtqv+K7SmorWUjubQxg=;
	h=To:Subject:From:Date:From;
	b=pf8r/UMS2RhClT2H7jkXH+3hcrFpqbzyMEOXla+VI7YDxDMXBMx7GnFLJFRTUNj6L
	 /tCeEh0p83yrfOXz3U2nMZJND30i6bwcpnCyYlrgOzI+TFkNKqLXiEN67OY7ZqZi6W
	 WG4e80Ki2yWNfokljCoNsvOkSICzjr8hLHSluUH6P41GY0Kp/r/3IeA5cmkqkRUz5g
	 lyMXrBtJ+YpGKNx3Zp/j6PWwUhlnqDwJPt6faYrI0kFlDUpQfVMAt3OOVUtN1qlpjz
	 mIZFJXyDaAte4l8bWUlfJMJWiDMEaq+mSdVW8zGpoKp678z2AbIX7IBia3oHJuUOP0
	 8oiFn9m2Lqmzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B2C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046399357.29211.1226109344064688176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937309c008ba6a21198041f7ba4a191cb9a25b540e0ef6559f098dcf8d952f40
Date: Fri, 20 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750463993
