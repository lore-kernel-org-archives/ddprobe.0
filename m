Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2292C11F9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779862354; cv=none; b=VEDfqQwQLpQkGoRUttcyQVuLuqW905BEep0j+XzULrdFTY6XRc9SXkgRoeijscs8zuGaKbyYTUAjZj1CUgEwRvsoBPw34E0G+ZXQP4I5IxeA+hB/K7dDrmy9sC7F2IEMLmiXkVzOI++04W2ukGaOPhjsCpfGY32IAb10Tf4H7KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779862354; c=relaxed/simple;
	bh=tNPjF5kUaKxO6ZGB4cWMV6/OC5MoS4RntrZN55Kf6EM=;
	h=To:Subject:From:Message-Id:Date; b=q7t3mTYoOrtDaq3kMEls7SMe6tkIiWuu5Zzr5frX6haOFNA12GQkv0W372ITaF1SEazLEauzL5y+8kbrTkR8TjT2fWvU9+YeqBt97I8BGOmNTjCYDBcE6A6m6pJXGhhWwC4yxtrQwrf1YOBpJ+hKpxGZCJlgehXkRDNsRyFL6S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3HzgDYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3HzgDYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C683EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779862353;
	bh=tNPjF5kUaKxO6ZGB4cWMV6/OC5MoS4RntrZN55Kf6EM=;
	h=To:Subject:From:Date:From;
	b=h3HzgDYoYoPhQUQrCVCrl5m6koUxF7/Xdqpno8ZGaGm713pD0VI2bmvg6gKSJAGF3
	 +5T4hRIWPfyNCZYpA9nAO+9EYZCw3EnOj04deg8W52iKWPdTjROyMAET4VLnBfJpcJ
	 uBYlEotWRyRyrs/KMwKU9uI5k/o6/0eANKJtODnyaQiOyHJuL1AFONcN/QEF+wFL0e
	 82XwLfR2WdB45/F9Wq0ln9CU7SShxaX+F64/fSY6YMB5Fa+tCJDMNhDpKRZUpzSMOa
	 7YL0P71rPkehUBkZOKKfnsJzQLSOwcyG+iV8c3uXZPTCc5DNq0+btea7QsxXLcfVnU
	 PpQpOilR7vJpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE5CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986235368.1536.7038161509891107989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89e1d5a6c96a2e516ee28503ea8a9cfcd3baa7462ac502ea0ba2234b607ec72
Date: Wed, 27 May 2026 06:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779862353
