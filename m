Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C479189B8C
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 21:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739222754; cv=none; b=bCH1wnwcpHcaWQBzLRVpb9hWNJ44qOijvhutbUTycgMnn8SiPraxJlqhkcZGKMexaOvDqQEMcK6es3ygnngl/BjTTmhRBUkuguJiMNDL3cbBWCwnQWwyz7iCmjghJA9QnzV06W5oKrAD//coki7/3pAsWrtGxK6TWPl/KxJeWP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739222754; c=relaxed/simple;
	bh=mwkAbJxscY78SrrPWcZilNyLwzHiYyFcq2+ENh9J5OY=;
	h=To:Subject:From:Message-Id:Date; b=Thw7kXXdXXJ9q7mfXhONj+XM0Anrb9L9a5Gj1vlnqdo1+SZn9JBtBcSrLTnc0hdGdKJH/EKUWVMPZ56o99qq+vNGFxY440cOPtBPAqyw6FIIxVPqfpq0UCXzVUsQUH2QUBQ2QOquxdSIUJZ1+FW4acSG4qhPLdZERBUUtAtAXc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMiqyk66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMiqyk66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08A74C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 21:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739222754;
	bh=mwkAbJxscY78SrrPWcZilNyLwzHiYyFcq2+ENh9J5OY=;
	h=To:Subject:From:Date:From;
	b=nMiqyk66KSS3/35wc+ovJeSu3Ilzi+o5drby/dcmo4iEypjnW1i8YH4ljUHLVgTmV
	 S1OnYQxPEjL0+mq2Xcxuv0r5c4GkqnIoJsN68ckY4aNCB88RbG5X+xPpYcQD5IYENH
	 rNc6dq0cGCk1EPjcj8DotWiwZAMXTS2u9EV0H2j8ICTgaOgFVqBMbh3NjqQ8m7kMb4
	 v6/kyRNdbx/6GHxEeF7H3q6/ZzdgzSyOU315BVlS5nGuEg/9kiEwPcCBuZ3d2wexfI
	 cVUVRK9GCB3EcxxoLIgcv4oyA/TGPTufHQ5AWpgKYPlu4V+cmpVXfCOg6FjOd/uiWS
	 m2lrREA/ipxFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62B0C0219D
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173922275372.4919.10528055295727919767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbae067339ba65a554ffd84cccd97f11cc264928404ce202d09cab287cc8606a
Date: Mon, 10 Feb 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739222753
