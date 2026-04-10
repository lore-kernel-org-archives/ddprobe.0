Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27654312832
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775824054; cv=none; b=GmOiyhIPlMIfbA34EUWokxdBc4i7e6EARzxOoLxYjRdiLSGtITJqHp/+V0B7bqEK3601A+byVKL53EtpD8DmvsdJehmusrdOzceYbaxHiViFLC+0r+/34PB9t1h+VqXn9SPFJwiFuhxHPpiM49cPO6a9XA1HTeKrZHO+mSjM7Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775824054; c=relaxed/simple;
	bh=lqm65h44zDUsgHHsethh288mosH+q2Ce9HErLW8XhIE=;
	h=To:Subject:From:Message-Id:Date; b=a6EjCvmyzblCy99ganQCOa4puFylm7koV29O9JUhkT9IcP9SCalHNWgiOWFgTdcLwC8spFF56uaFmjNUqjrrePJT3wDK3kOVgkW9W5kuqxH44ZAjqISdWq89i5KYrAKvVx8RWNOShZVwY7Yx5YF7R1thjEhdSzRNnzCU9OzHy+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnYthIiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnYthIiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3536C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775824053;
	bh=lqm65h44zDUsgHHsethh288mosH+q2Ce9HErLW8XhIE=;
	h=To:Subject:From:Date:From;
	b=SnYthIiyI6jBvchaztsVK4IOrkQYhbbIoWtYuUEL1I1CKmA9JNJFAF2v/4LeP/bzr
	 5Et1dVghjxPql6GXqrMG8rii/d1XcXJurbAQb3iLTVPnNeYFMOrhBYeVIuD7JpapAd
	 XKnlwLlQED+Jz2xC+n8ubOMQIVhgq1cLhV2JrxQ0BWdEdpGKaHzzXXPC3LPivR9Sw6
	 bEKysMKyaYIya7HxX9OTybhnbdeP0Q0Wm+hSGaEKH/80OzwU/T+A5OYir86StwhYPP
	 0Jp+syusws3T2lIkiEaYt7GE9wPc4wtikhXVBFcu+gIfCV+jSObyx8Mu98/i0g8s5D
	 weWVjRpLDk9aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B1F44847
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582405369.29771.2749064112765005164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459e663db6545032c68e1aba63c9100588a3531cec99f98a1779c0161453fed5
Date: Fri, 10 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775824053
