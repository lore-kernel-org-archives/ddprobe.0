Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DBA3148DA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770983694; cv=none; b=XyD1i8NpsqtHvWkzU8W7oT/961Z8FMqxZQ+jNDqjs7vDji4r289mgRRT7qr6YRlI23uHli383IdF/2qopzGKRlsZewnOwlbmJKFTLLEycsa+ChwYusk2IOLAYatiWq7g+LNhJLMWfzX/oxg66BiCCHAWTr5LfYFn4wftGMruuUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770983694; c=relaxed/simple;
	bh=r7uZJ7Z2twvNfCx5M+Z5KjO/sI+6B3qcG2AiXG+f0V4=;
	h=To:Subject:From:Message-Id:Date; b=gt2JJLMW7zjqmZyD3UbmgaKp2TCXsgjk6pJlNiNsOW4oaD6JwyB2TC+TBUuLE4pFMFnTtU1l+/D2lMYrk4hTqLgFBcwu0V0rkl2MVREh0GoZPJ6y0MBsq8MljLomDJLgEoA1lL/iLFoZhZrK3OWXF4BCM4vjlsxXvZXWzUOr82s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z58BbN4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z58BbN4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDF7C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770983693;
	bh=r7uZJ7Z2twvNfCx5M+Z5KjO/sI+6B3qcG2AiXG+f0V4=;
	h=To:Subject:From:Date:From;
	b=Z58BbN4H9WYwoPqgTnce3CaRkH//lCjCQ/RMomgO+0SIue6It51dEZC+F/XT550iF
	 JaCbwbJMFEXjDz1mS/aE6dn/lcrZD5afiPNpaw5T/iVVKQVLFVHJTCHOFsRTzqUdue
	 nGVwsLwMeTj3bjpc3x3smDhpKwkkKcej5MWQ3P7mPNZdSPfoA9TC+9Sa5hBhI/Mx2I
	 +nWygJrkWDNfhSiAgwkFfi3X0a6xb/Yf5Bu45gtlVlK0M3ikCIcvirTwDO8bBOcV12
	 eJWgThTOBD+TixrjT0sGQRCHcMnGcg/oUb6qIAO+yXFBfDlbfUENbP7ZTDFy8/oltS
	 Yg0PQ3IUd7fmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9858FEDF154
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098369361.19612.14850264227194085778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e2f22e680dfc99219bcb5ba89272a6a4c5d0481428c59c13cbf32cdddd270e
Date: Fri, 13 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770983693
