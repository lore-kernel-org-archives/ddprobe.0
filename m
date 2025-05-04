Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FDF23CB
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746331794; cv=none; b=Z5nil2j0kfPIdbhloxndbWVRp7Y3x7zWUNG6/U5L5qBbrYsjEtWc1oT/waYIVOJokorCkYv7Ixz84Q0Uw/D2PZTp/X8C7JaM+rtFifgtzaGzPSP2FbOUWxr1OqcI5ROG4tG0InFgk94t4TY0AdIeR+N7bGVh2+2PU1+9s/7kJvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746331794; c=relaxed/simple;
	bh=iiTLzn11Acznv0SXtvTe7mjb+3HT0aSr4bkUzwWxQiQ=;
	h=To:Subject:From:Message-Id:Date; b=kM+8tivIYhI4kjaEB0YjS7IMuf4RMQUBq+pGikN1QH7zlVWLC+raqlzo7euWnufGSsch0WmXJDde0sN9H87UsqWP4gNcClgnnquBUiNZ8FTGT1uthhNpViuxkQafktqh7t8D5dmX/Na+AwpjreLp2TPSSc4gUpVocq/5mjYaN7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jW2SxzoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jW2SxzoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7235C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746331793;
	bh=iiTLzn11Acznv0SXtvTe7mjb+3HT0aSr4bkUzwWxQiQ=;
	h=To:Subject:From:Date:From;
	b=jW2SxzoOBTzkYcYtY9+5YeSlUYqsN+8OnoYJoR1rGuWZRN/3vga7nlcoW0Vn2tnrh
	 XfKNQRNt+Qcjquw2mGG91TQbSnp3/QLULjzVtoIWbmAkoJeiy0qvc1uiCnWyb1vn6q
	 7NESKMzNYl59RzqzotqF+0kcpktqMgt28caj282zNbsYiA6BR8QRe7+OqiQY1Pk9oS
	 zvDEedE4J6c2e5L3aBkengZJ25GSHe0ixNtJWEBudMKIpEfkwax+3BHoMKVTU7zzQQ
	 QVMLgIGO0y/awWnAs9mzPByF7y3jtz5fc9JDE6LZHa+Fwcv8VNZEfzxpHuozSRPemP
	 g6i0r8BP83P3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B75C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633179357.17647.7103664525629182791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb21570b42b0a50c720cffc38f7cca1e341bf2b9d045fa98e2cc16cf90f7586
Date: Sun, 04 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746331793
