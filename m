Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188102F7475
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756196394; cv=none; b=Xx1uk8RjnNR7wNOj65VreIZyYxJKY9a+vWQYaBhz3q1LVyHfXS+zZDudeAX7lKp2MMPHmbhT8Vhzi+HRcM8FfFffuinFv5zaH+xzW25oLojxJeSJ5r5fYLkLuOLIoepw+mG47nlim6MuafB9MU74UjPncPFgAipOJG29lenfgyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756196394; c=relaxed/simple;
	bh=J1KgjbWZyQ45eLyzjGtUD+bzmlY/oHjS+yqePspztx8=;
	h=To:Subject:From:Message-Id:Date; b=p+gxCkgy+EYpggj0z+1oq3DSHf8B98Ve8X12Iu9CT1IwlYbibKpYmTcxKUlcvx5tEPZIjqsyLGERQUcoRvMvauXVFgk2UMwxHhNkyAKZUDs95bmWexz3/NcOF8jDQg3jha9XkavX3i1nW3AFsAIIe6Uvrl7dsYrAm9bcXDKGCDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYdMXcru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYdMXcru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E9FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756196393;
	bh=J1KgjbWZyQ45eLyzjGtUD+bzmlY/oHjS+yqePspztx8=;
	h=To:Subject:From:Date:From;
	b=LYdMXcruUB+qfrcvD5sOE1nt6d2+DmQFhA5JbWnibjeJDpqRjT4UV2rwCKWCLYf4L
	 L0Y59mbD+WmBfGK0dodLbAPu5BAsiGA5xTJaVo+SL9jjqX31r5JHK/NHsnDkS5AxOg
	 +dAbb8EVrQGtseSsoHIP2m0Epsc07pnoZKcbZL1vdwz2+a4MVROv+wquI9pwL5lxz6
	 mNMawVX+ZEhKrC7Zjaa3zCdBxDDJVl+RvvJX70mo2nYl6ClYkgPunQ3tXDrkAwQnKc
	 ewGRr/ewTK/ByboKDFGZD7x5FS+sRFfQYNWRTbHg2AeXoxWYikW7XadL0+tcJO/ejn
	 RhFfS6vQ8Quag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158FCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619639358.25342.9207059790182970992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cc7df8e903e3d6d343a20112630d65b5912aeaacdafac637b66060cedd2322
Date: Tue, 26 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756196393
