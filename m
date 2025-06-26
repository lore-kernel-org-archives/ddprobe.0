Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126B22248B0
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750978194; cv=none; b=J8X1MGWk9aqSmr80UWQFCUa7qwK9cZE1WRBcZNg7PWC3GEMXBGm/V5ReGGa9uhbP7dz//kA83wxspYIhMqxQhc0NNllGB6RTSVFQbrD/t897syTS5Uo0fVNoyMBKlEuLHWKaIXvbVvsgV0UUwED8hiBx7NHMOkgdqz5Gi6/1Tmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750978194; c=relaxed/simple;
	bh=DjulMSV9JxV/TVkNk5G7Nt046utMCGYhOQuWxeuOHKw=;
	h=To:Subject:From:Message-Id:Date; b=TX0h1tmVVZdHFS6/WkGI1ScYf+h7zGeetwzuIf1WevrwsbwR3SX2ozQIKJ9ODWPiFnfKg8rug+lMyIRCEmUt2rMQLl5OtPEjx87BS3hZpiHXiYSvZ0t5JOGKbMQksYzh+OiQxjZH4q0rmCTRR5KvcrJDN6Tt53L8NxtX3ZOFR1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8IWBHEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8IWBHEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750978193;
	bh=DjulMSV9JxV/TVkNk5G7Nt046utMCGYhOQuWxeuOHKw=;
	h=To:Subject:From:Date:From;
	b=Q8IWBHEx0vt/6ZYByTe07G8EunNCKgVpjPgpSFwNc+6KdOpGXpbWCgX1pcl+TRZnW
	 FsEZBMql+zrt4IZ3HOnMQ9XqWV/we32dTQmE/LrrXp3ip7a76Z/eVz3I7HgkAgyg1V
	 ea5dhyPR6uSNMAPkjizxO97fOULW0uTyDqsfnxcwnhQ1yBTIlE7/YUD00rSz3lYadV
	 KXpq34a2vcvlHjNCaqxCIDbSk5mxP0zR8i/+ULKTYCJUP65S8BHWaYxyfKoLGd3qma
	 m1rqmSsW0NSius7qh90ZdfSaP/KaxllyLC8rZfcvtExezw9rhd+2Bk6E/Lt/Kmxq/s
	 nTLY/xBxAfNLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9428BC7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097819359.28027.18438062553255526252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0994ecd1f451f5701848d6e7d6dd2b31bee44aef65b0dd10469573d51a886c22
Date: Thu, 26 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750978193
