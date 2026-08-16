Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4124B04A7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786887034; cv=none; b=R0u7rorIxXwkyi9bQ2mlP6n+k5ZxrJVSno2Sg10pPJUNSCFCVxsscLUNT/oLUIhe/CbRX64yRAITNX0lxaszxbC7eKZ+l68GHn7rr19JZU0lyu1DTYs8O9diawMkQDgAkthfjbSiAstWsLMrrHtRfpaa/19jN2vpbEZ6v8K+zDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786887034; c=relaxed/simple;
	bh=sDXQHTaalKdiczlYgXdIolFwNloMSvM5GS0lKhdXCZk=;
	h=To:Subject:From:Message-Id:Date; b=r/71jtgzwW/0DKiwc2JzBh+VkpcTF0KHWtmN+pveCK8cWrOwPRoN7xmlOA2cLvQC31VWtX8pEFOQWjDuNmDf2Ey4STMUePVkdtyPcB9nZ8vHWi1YdOHKrup8CmTQGr22zvEhA0yBBzVtXTImWENuiZ6T+DH87i4ep6NatSEoQl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKE6PsRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKE6PsRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7A3C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786887033;
	bh=sDXQHTaalKdiczlYgXdIolFwNloMSvM5GS0lKhdXCZk=;
	h=To:Subject:From:Date:From;
	b=ZKE6PsRhKwjRDSSpFvA+PxcrYVugsiM5uiBOrb2a26bl/sSrt2saVPTbhvUyR8lAK
	 EDPRPjKP0NOtn9IJJYYUekKOtU3BNqCy7BT/IGBPECxhLxOr0z3DDcUdJ9NIvjr3U+
	 Ng4WcqZwVGrw41dwOTr1edbizZ8NO5XF862w3GZnpZV2IScJa68TcAbrAIDGKq2ztd
	 gKqrVJWZ+ALCX9SDuTeCcbBktz5VrZ2blQE4jPhgh02IX1v9MAmnSuLY+SHAfYZfPp
	 uLG2w0TrWSXgMyTzF3LhkhGZobhOFiXlf0g456RDjvYPM81abYorVpbVaqcvk+a/+v
	 xeCgl1pbC9Uew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2357C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688703369.10754.7126339078195010671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289be3d257812d96bcd2e28b34be40c51db96208303779a65ce2f27562879cd9
Date: Sun, 16 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786887033
