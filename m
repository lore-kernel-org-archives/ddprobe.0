Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DF2211A09
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767539034; cv=none; b=rCJ+s7cJVfqJnyYBJp/1j9wxpgTaGQPje7aJYTI4f8ztH/lMK3hByhwegUIElUNLDX9QNR8n+HGjOZVTMe2ntIuIDQDzk471p1EqQx8MFWNMMffNwdPQXBRRMoeW50W4ZXKvXnwBEMZLYtG+080yMt10eQ3OKRZb5YZ/QHLL3dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767539034; c=relaxed/simple;
	bh=oMFTFfpsRzi240uuxF7s04W/18XS+HLfD+S83Q71peo=;
	h=To:Subject:From:Message-Id:Date; b=UbVbdkqVyPwwr8J/KLs1q8H4PpFtNzSLQrqJgvii1Lx/GX7HzPyWSBm8y3xZImSxPL4qZJkHFesWxOr1v15muHf2FgZSf6Xo34hANC+Fw6rCWIX0rFIZGmM9kx41lfL2jHEB6T7UaxfQzgj43NTodEHmAMNri8ncCPj9cH9fjms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+U4+Elh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+U4+Elh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ECDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767539033;
	bh=oMFTFfpsRzi240uuxF7s04W/18XS+HLfD+S83Q71peo=;
	h=To:Subject:From:Date:From;
	b=K+U4+Elh4r3MGNwJbpM7xWhXgX2YD9zjOTiDK9zMnZmfZWrxdEaLGfR/x6ctSSG6B
	 jOQD+76sDenpxl65JIuu7v4eJQwbac0nIbRxUxViYFULePShg2tgeFAZCreVnQjMqv
	 48rai7yoWFTMXNYQzpiNLYGcvhpDjgwpvsVQqo+8E0eiUzzGSuZnfQf674u/jfbtcY
	 klGD1oDLHuQb94U32wV9qdUD8nbfbQu2gc/Ym9KoALy0tZcsTW6uiPsHw7NREdpb9Q
	 z+jCgfccqHjNVhtOP38BPViy2JvDZSJPLGfMCoOeAhF6P1VQyMMBwCsGzgphUKb3WB
	 db9BALouxoPVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91176C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753903357.28586.769173786369081775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1965894b8c15b6c06b0df5cfd19bd9e32198c3ed7dbc6a51eb028a42bcbd07
Date: Sun, 04 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767539033
