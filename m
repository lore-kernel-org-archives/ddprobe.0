Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD202EA169
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767791034; cv=none; b=ec70JRScGBHdt1DF03+KpuyZN+WsB+SILc7cxEijanXlV5SeyZ4OYLch2x1wyvW5oQC4mSn1m24j/aBAImdTq7txXmv6Qsgv9a9pNMUfOm2FKB+KVFVJXdmuHSi7EkncMDKrkyv4wdn1iWeVD/17IPvFFyDmYWd6RF30a83xnlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767791034; c=relaxed/simple;
	bh=nptlCKmfr7h5nEgmzVVLS3XuqNPlKfKErD1WYnxrhb4=;
	h=To:Subject:From:Message-Id:Date; b=TVllYVU7Emu86PLJpuplhQpRUKum4xuDOMTMbuou2zP3ewIZakFhlRHmDrVxVudg/Qn+cBfgsxhJVoAWTcuwXmISlMk1iZ0l3JayNDxipI7qCZt6M7zP7qkHJ1MUCNcAO/saLH0Ppj1abk1v22k6tBnDMiSBjgpPykxR0fwTx0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCa73liT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCa73liT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3DAC19421
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767791033;
	bh=nptlCKmfr7h5nEgmzVVLS3XuqNPlKfKErD1WYnxrhb4=;
	h=To:Subject:From:Date:From;
	b=CCa73liTuCGF+A+ZCbPIn2aNt8xYmFTl3B6gQq36ZBMst3Xrkv7jxmFkZEt0M+iWi
	 QLIhBngUjpcF/eY7rpdv7P7PjLAHgIYCDAFIBpnLbvhIsarF1lrFBm5p/jMrUry7pS
	 d1grUmVKs91D+dXy7+S5zc324/JdE25m90OLmE2jd5uuTeCH6Fh7Pvz3RAkphjUQYo
	 4GIi41nvZimSU/wj+lffK0Y7jnWlfqaDlqiuETk9FthtKEoKjvTtAVqvV+eK8XuPU7
	 04wVAZ68vWl6lVFyYhD0o21ETgnGKDSXjdEBnsNFKBikOlJ/wdG8bBkdE9lUmM/8Lv
	 g97voY7fgDvTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF2CFD626
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779103357.25239.7625541280070912719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a29e88a63ee5974389f3758d603516e9e58d14f9922e20258a82f82c20e543a
Date: Wed, 07 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767791033
