Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDE45D8F0
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765498374; cv=none; b=ifMEx8Gpv+lg4rf5MyUS7NvlvSpI9gmH2Iiyx93Y8wFjfY3V9+lQ7l6kDrXKQso8VcKM0VFgKBbhcNS+u/rOA8W1hGYMJGM1Hpg+GbXsOqySWtl4isDmNRdnOMuqCFa59zH+WEf232MP6AV6//lWT/UVRCXwtnUH6SZuFLWgOX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765498374; c=relaxed/simple;
	bh=2cQNsA08rQUV/tMsiBS5CQaxkh4EAPoh+8fNXe7O+Nw=;
	h=To:Subject:From:Message-Id:Date; b=LD4cjtVJtHpFurALxFINQKQ51P8gdMG+lkRdiBUN8IOq4jpdlmlAaRg9RwjiY/KOQ1RqO9hXYeiI0+L33qtByQ4GU7ptat3pSPU8b97NeDx0PoaCLnYtKEDYk6jK7ck3fnawjDHQZUrdXDsvlNpEa00okvT0SSBxxAEN57NYxTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQB0rlU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQB0rlU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4B2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765498373;
	bh=2cQNsA08rQUV/tMsiBS5CQaxkh4EAPoh+8fNXe7O+Nw=;
	h=To:Subject:From:Date:From;
	b=HQB0rlU+huDyJqjRhvlrV5nzQjs4QBNena4RnMi+wTrT3l3PiEaz6lUrWmJ48Rooi
	 egAphwyC/hWFPazmPPrXY/KcFtLNeEC+Bia5TexGP0COYOQKATbWyQvIvClkKHerzq
	 +KwOlWEjylEB+Jlbi88HrNXIfu3DPVrb+wehOnwt98REIlnotX/O5NU0J3SzOWP4Er
	 P1pdn/RXt00lF6o4axouP+M2zClK0g0j3N7abSlPNzY8gCsnF4N5AhswvLWNX4bXuX
	 qoXMsU8ZbsBXOK/+Sl49y2okjxUwJfzsCyJMOPieaUFZWFXdp1dBDQW6Xj54matS0l
	 8j8T/Qqy4ufqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F73BD43361
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549837362.1687.11283413171306639997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ba62055e5732ac81fdc2fe79c33470009f09ba7e94cf01c9b4fc24e80c0e1d
Date: Fri, 12 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765498373
