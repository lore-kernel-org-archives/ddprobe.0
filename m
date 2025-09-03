Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EDE1C8611
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756880394; cv=none; b=Oj2RgWS7vUwJnrkmt0Y/PanwbaapnjepwAf+36/91p180qqQRpldeOEzuexMzGPxL1bugm5j+4Wv1E0BLXnaOjmz8W5LJu8xXaAesQJiMmH9hBAlWl9BpFynOO9NEEBwnDcRQQpgcMrSLvJfZ9ndlihHVVMzU5AaZasMjUXPxm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756880394; c=relaxed/simple;
	bh=3kpaoOaA5xDidXP+v7JkaXO1cJiJjD+f6BOfEwXEl2U=;
	h=To:Subject:From:Message-Id:Date; b=KZYRAUpFZYTOnus+pjwmmO8O//WGsGVD8W++X52Hl0W/nDR0QjaKX7+VbcyMRxgJIDlzEsYdXq6v32xY+Bxr5F6bLSA2utZceDqh9oawy6bORp9u0pfFbGzr1/bAq+snlOYkDOzlYku6SXk95zQdsYKmlarCK1HjRl5X51ZlMBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ep3Xu29c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ep3Xu29c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FFCC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756880393;
	bh=3kpaoOaA5xDidXP+v7JkaXO1cJiJjD+f6BOfEwXEl2U=;
	h=To:Subject:From:Date:From;
	b=ep3Xu29cy0YCI08JOAzmq2PVhYNJmF/IpIkIDr03UzV+E+x7Ne7FIn/TEM6pB440T
	 Ayb6BR3T7ulO58hvjlU5vZQce7LTcqqoozBnCjGrVvP63NQxxhPf9zzL8wWIfYlhpd
	 WfqjtXj47sbY3OJwEOXl0rXARatNdPlIfmHFOg/QL1sG3IXxJreTQQZNVVvOpU4XGv
	 Qa7AMajCliYgEPLtf3lSLzZ3OB3ubnvPVoRGijL3FHPXjXATCXJVqr7wNKJaEO5yiu
	 +cXEI6DuLUcH3h4Zi9Q9JMfwXH5e6+BbB+Vbw9CxA4IKLEwGoeNhvBc4+7686b2n+v
	 3pKFmhCKABQ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911ADCA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688039358.1859.13956709045068649514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506fc4ac2e3d06e4a6961a6f0287e5ae09bf02ef4ac0fc820da05590da2f2a2e
Date: Wed, 03 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756880393
