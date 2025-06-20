Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3137A28A1F6
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750419594; cv=none; b=jDr72XthLdm5Cn1xMBK+1gvP7XMuRe9R5vVTuY6hFYDSXEL+Y30wA0V5qwZpIrVbXxW3qA5TJsoYmTELIoZBHFj8BOOF4VlzEAHXuUGte6VSlu6uLE5ULkMG4sjrHM22D59BmrU2grUHtuiuS4T09MrkWR5vLLbgXheH8/Qjgu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750419594; c=relaxed/simple;
	bh=BkLABxlxrTV2FMQ0DmBiJFwnFP6yoGThUmqVaPifEDs=;
	h=To:Subject:From:Message-Id:Date; b=N60JHiI7K7mda/VXPucs/gAGTqLCSgpqzExtCtnlx0wV5CSvSz8+p7wPtoumS0GohyjyfS74QlmdO+KBT0/PolJSzj1xUWkCPsbZgYSpUn+XKL/zFN8DXVVzXOxmwghC/2UFFC96N5X8feQw75CNNjCDtcx3Yt0UhGeaMGtok2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7g8OGQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7g8OGQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3FFC4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750419593;
	bh=BkLABxlxrTV2FMQ0DmBiJFwnFP6yoGThUmqVaPifEDs=;
	h=To:Subject:From:Date:From;
	b=P7g8OGQNxDepL8RWGQf3TpquwNm1rvodI2NBXdhiBVnvofa7j5tQ+9HnsYxxOBrpA
	 Ch5dhd6ib/3KgTI3Ba4hlusskhqodcf2r61/UMipVEJt2N7Il1RcDVNiAThr6F6FeX
	 pTEIunF0m5cGQ8LXgPS6yc6ebZOsq/xQ5Qshkt/jqaXnRqZjGq6EDNChSUMvqrfWSM
	 5fgqGFdp9Ugyuc78NIrQerKqg+DuUqWSBOKYaJJv7vWLCEM1kvhYV3Fl5bzni2iuXP
	 GcxA6uEIOdqtm5wQYDgre/w//bE0CPWjSQt2WDZQQH3tjmKlylbjm8EtvFWEIsR4/K
	 Qfpn5RWXKCtoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FCC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041959357.28182.10855708673004050148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10a96044f1985f04a42edd15da361bdb7a82ecfeb8c380a6080766f48e30546
Date: Fri, 20 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750419593
