Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D2920E6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727244954; cv=none; b=mZHycwqlUZP6o5xx0aRzceG+mwUHpcsnz4UigCOrBfesEt640BMJWrw/fXsixeN4C8tORQE7CVtWRZs7nBdBrW0SbfwOLZAVT44cg+1/Nc/7nq9Vqre1h83W17RXlLr9mxHIVJ22bQOS+b6gMgXoNsLTODPUp2w6eg7Qrw2DIzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727244954; c=relaxed/simple;
	bh=7ePV4lqD2a6DbY1mbDbJr/7z7zgSOEmZL+ibVWJK8Xc=;
	h=To:Subject:From:Message-Id:Date; b=iKY6n0JwCmhqnssrAZwcA4CVwvKKGmdnfBluLvLtG+QmpFzBvM2NDAEQau3JDI8fMt34Q03hr8j3ncUFheWOnPXx6TJZ8sDH2IE1HknZ6mamWc8awkIyytsdGqMI4n+O4JXvrAFxDQLAFC3J74hRp+KS6wwgUjDIgJs8aig9QFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5xwj/1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5xwj/1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D6AC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727244953;
	bh=7ePV4lqD2a6DbY1mbDbJr/7z7zgSOEmZL+ibVWJK8Xc=;
	h=To:Subject:From:Date:From;
	b=m5xwj/1bhmoEXLdi8TJ8YqcmBLEXSK4GkDTo38puOzScUYfn1U46zp7dMfuH6pkMf
	 i50RfbjUXnQozksm+FpJvSRq4sba9nuAsllekw8wVBv1GKbmVRHU8+V2+mrFxb5Sl6
	 V8PXDLHM17RbXlwc5/I40/6GAT9pbY+PMmj9K98FKKyEk4jSJnXZ0cfCOvVPIWi7Pg
	 tAk43NhhZHv76v/OuETtpBFOWCrWdPGGmwG7SvhM+xUloHaCFHZ3BeURki2gdv9qOm
	 W9MIxIaKm1JdGNAuXcyEaQ02GQ7AL9oDwMf39ym0nobCJ6d7raxTofzwX7T6j56Odv
	 ykHh64xrWmVug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B48CF9C6C
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724495359.16155.1133464230782491284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929777e8a023638976cf695174607f375b9e88e9ec48ffc9416680c94a809c5a
Date: Wed, 25 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727244953
