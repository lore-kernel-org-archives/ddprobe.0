Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C91A86272
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716586403; cv=none; b=UgkYA7+5FYD24ZeER9duWICPflYzfkAnDNtWMLRrpVAt/G5nBqtm5mOIPDvj+ZMjxFzKcMTOJmlUbZWAZorXbN4mKxLVjR6t+bK4vXZiu8AMHA8bW2GWIs74eTnCyR875noxlMFONCulblwJVVZlZrmOtH7g4Ku17Lb6Pob27VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716586403; c=relaxed/simple;
	bh=N1/uSabc7ZDZvKW6FpWoLyEGHAVnKBnXJ8Dxae2BlzA=;
	h=To:Subject:From:Message-Id:Date; b=u8/Fop8bNYjPhRFmQuBpllsRXk5Ce3w9rl8NRx4YyxTSfGMEzaSGhYd7NMZGKyiZdjrnu5sdngAdGZxX1vQo6tzG6n0jN0MGqxtKaV6jaDvzBsszvqpubddOBTsXMiz+XUWM+m74dyV3BHI/J1pWPbEcxmnleMlifU6dPKs5dN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWjF9oMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWjF9oMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFDBC2BD11
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716586402;
	bh=N1/uSabc7ZDZvKW6FpWoLyEGHAVnKBnXJ8Dxae2BlzA=;
	h=To:Subject:From:Date:From;
	b=XWjF9oMBN/8a8x3DaenM6O0xTHe+MwYa7q7TX3mf1hJCeeKF+2E1U+441GtpJXJR8
	 e6fxpVQU0gtWyEo6QOSTxUQqBV60gPQJfMn9OzpC+YizPUECieLVeGGfD3AYKbLwcj
	 Iw01GUWanA/GjPqoh1bX8zbdmdxv5dh15gerMef+Sv0rX+t+YvNafB2mlnBtzaXHo6
	 /arIW91olUJiE6l72F2AH8tL0lWrh3UMOqAmMKu79Z/Rrf/lzhrr0g2XtZSPWG3xc3
	 6FoTyd+rrXI5uC+iWEC1U2gSvKgJ6PCTQPSQSr83aHxY4c9R4i6jL7bCw2mfHTnXrg
	 CV5tOFLy7altw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C969AC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658640281.31497.17525827163181222202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93d0b5393535e5623ef326828bca049eccc835ecc3f06b89b5a07b8fbac1d8b
Date: Fri, 24 May 2024 21:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716586402
