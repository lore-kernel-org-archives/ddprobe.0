Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AD43C17
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746669594; cv=none; b=cZRp55TDAgTOAHgI+xGb65vgiI1KNJ2UdPoTg8+qs1UPuz6HP69oWWFRgaZ0bSA4rTxiAzduUCDiG3IJbV3IdkvkrErV4QXNG8mjzv4BOErFcPr/EmcQQVU9fTymPdHf/nIdnIJkUU2KO2d7ulrc0AOi77m7xmmwQXDUvBMBPMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746669594; c=relaxed/simple;
	bh=n1XtuuCKZGLS84JVDZVJgBwUIbWF9qfjbTzUJlJa7tk=;
	h=To:Subject:From:Message-Id:Date; b=XvW9G5T0zJ2GG3b8wgbM4UMk//e21pX/5qDkYfQOlBwgToSsFwjoUmuhnu2J3xNQTVHqAGkWjSueY3ncuuZLlFYsuBS/Sw9mQkSo1mLQC+MtDPqnXI5KqUf3SLhmfWUb4acaaodswSRbr/XRq0r9+7Wvq5UEozX4UOx/bYz4iYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKrdeu3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKrdeu3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45ECC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746669593;
	bh=n1XtuuCKZGLS84JVDZVJgBwUIbWF9qfjbTzUJlJa7tk=;
	h=To:Subject:From:Date:From;
	b=VKrdeu3iwoluMOAplUJZpdeZCfWN8cXYRyua+t9rl29GoznNLGu477oSZuLW0PsQL
	 07zs4TLSSyu8aYyZaCCrlUo8ZErk/hUlIFF4zy+9zPnWC6ZcYW4Gdo7dcQejfQO/Uk
	 5q0Szo/cTWh9H5Rv5ieedxoVDVXpb8DqhGt3IsWXDuyq7jHahS+X0KAvsUq33k3pZF
	 YTiWS0FYd4bgOmWzirbq41TbU9O4/p03hrVqSA6DpBqViMSIR3jKw2sLItX/9WPRqP
	 2uCqvIq66D891Udp0SgNqHSdGVuEZznHKyqu83uMqe3omKfpq2pwYSTLrsuI8YxRvv
	 1YIkQe43l4cPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90658C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666959357.29416.1780579860328558585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3fa0565d439a5074fe981621b7b6eddcc48056cf19f7f0a6a7a6f3f81f6dfc
Date: Thu, 08 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746669593
