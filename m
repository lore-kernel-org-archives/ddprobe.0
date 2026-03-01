Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C991DD9AC
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772389494; cv=none; b=Ca0+umw+bnYvmBvkvkMXbSXhR2p3rfmMinxrZl9zYC5zujZY7oLvb5zgAkHnOnNaDp+esuNz+4lbewzvXNkKNQo6MrlTefXI8sEQUIUmMavBzgeLn3QYCr+olMYmBOgUJ5WPgzjxilVqXfPayRCsZEY+C/0/sHTVn/qhxCjn82E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772389494; c=relaxed/simple;
	bh=aho1cnvvi8rfmUx7lja8pHujhJlS9//3b//1+gWvIBY=;
	h=To:Subject:From:Message-Id:Date; b=QFLKGNBrGH3rB/J9YF8LhFMZV2wPaIMxklOgxp3bF/x6ijs05RE0fGceIhsvvgzV/aYSdn6s2HodnsC2bmNWBt992ELlraY+DS8SV0sNlaseG+bDxCCw9Y7z9Duxqy0Yozh/Qm2HzvOx6MPFisE1/g6S9BP/nvTVpbq+7qJcOAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJKLtSgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJKLtSgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC5EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772389493;
	bh=aho1cnvvi8rfmUx7lja8pHujhJlS9//3b//1+gWvIBY=;
	h=To:Subject:From:Date:From;
	b=QJKLtSgiO3uFo72JeT0Ylw2624Fqdf+9lDOERONqKOJJDUp2nMHh8mxFM1LdeLqjC
	 Ek2+SX8tlg/uq8eGbCqLTxIN+nO/PpmntY/Pa5/VT2dJ456cR4S3oc2Xja1+p13gHq
	 +l+mYa/1IDBEYr/nxRZMduI0UKNllJVhWRfPF7wzPrG7e+aCyTuTmS9TmCuu+Q8Dmy
	 3y311Tskc4U4kac2UP6bjYJiqonYQHjfaqVeJju5jmWlBhsYjx2lawHd68U9awO95W
	 MrX6AgcrDD7vzCHx+/ZrdI1F9nUlbVO7D3y1MChFfmOd5X40F7bb4rSBZsLLBzAhOC
	 XMgcxYtcTPaNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99963FD0062
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238949359.5989.17367590536791956762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b532ffdc4e298b6897424aaef938fedfab7834da6024294fa27b431465aaefeb
Date: Sun, 01 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772389493
