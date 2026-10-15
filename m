Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D32B49CF40
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792095634; cv=none; b=bcaHRpbmKj5bAyZZyUeL7+CEzIne+nAxnKeCdKA3JYLIHrNXBTL5kPZA3TqJ53DgYn8GDdQ3qzG79vW4IPUg2OtCEb/EzNa3eAGW/FSRcS2361d5UlE7Z7bpMz5nBYWUHJt9r3MLyKEuYUfPEtWh1V5CVK7eCVXjICy2dudDALw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792095634; c=relaxed/simple;
	bh=WlzT9WIxEXOFhMbl0jCM35L2sUjBW3KEMKH+rIp4X9I=;
	h=To:Subject:From:Message-Id:Date; b=Y+tmjI/M3Owk4EPGZ4pU1sjgkpnvc5FycatxFpRmIVk8+yYwuNypJDZEtfej/YJYYIiMCRpWlyJzNnAymNOQ8u0X1058EUACxcVAebmbaBH7Xh+kzYDb4nriqoSXQtQ2DrRZbh6JUpd8wQtoey8iOYolwTQsJzlt/+09TglX4VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pY0gzTB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pY0gzTB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6072C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792095633;
	bh=WlzT9WIxEXOFhMbl0jCM35L2sUjBW3KEMKH+rIp4X9I=;
	h=To:Subject:From:Date:From;
	b=pY0gzTB+cDHKVieofdIyV+de/JOlgeu4cIvV80OxbQQJ00QY0wK3MfUmD8l15/9Et
	 5XyOLVPws6AEjrUBGy370QSEAU3g9cv3HSOkgO4kOOYIwrAtnpLK9CQER1Fl4fxlIX
	 D4lbCUU9+zBRxiy+M5z4pG1eCl8vy3+y0Gw/NXmx1rXzxZ3arJfcYBuSsc3QeGzPEF
	 v1N40dWyoOrVt7A5m6sRU/JiTqaywD3xPo/a6qM9jQ4Mup+Vc7F2+3ksn6hsWuMVh8
	 qciHt20S9J3wumLDoFvpI+FfHmtD8OkVEUu+Elo5zs3+SaLNZO3ESF9rXRPWNUzkHE
	 H7HVuDUydUp6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18E5CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209563369.28785.10747579911506947357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a130b9e6b06eeb010525573ee78764d3a109a3f4a522535306cb6c3a612d16cb
Date: Thu, 15 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792095633
