Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7BE386429
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781774194; cv=none; b=l1G3Ushk8oH7BPPak57fRuEMb7E+rakeml69YkmU7gbD+QTciuiqhlnbagOIZScw3cPSwoCAdKFzYuD+q9tN32ESs4CWzG900eRZGa4xFBki9n5H47p5M2xM31NQQqJvG21NGvHj1AtQwKH9JF5xt7mP/S3JYT8meRiITPNwfxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781774194; c=relaxed/simple;
	bh=2VzMZiCml98TMSB3fidSucmXAN9edOuPHU8D+je+RYo=;
	h=To:Subject:From:Message-Id:Date; b=Mwv2DKntSEGF0O0iKp9VZpon9yRhKMjzLIS5KkkBqvp0Z+9xPlRefqUssQ1r9EizGc+MYfTwkADIEoVvJPbAasqyHKhZyRU3f9OF66XubhI37WcvZ0CUmePgPFSwFLBJzBLiiwS2bmcF+JZuJAKjRitu41UVnOJOJ95KyaBKfVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyGVVz+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyGVVz+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABC3C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781774193;
	bh=2VzMZiCml98TMSB3fidSucmXAN9edOuPHU8D+je+RYo=;
	h=To:Subject:From:Date:From;
	b=PyGVVz+V+xmNcdnbAMGOW6YkIKzjDRaMdMzLLgdeAl77pRqc4Ol6hyW8tNGFPK5Ed
	 Y04HdJdqfwHXOd9c1PwjxGLXgvRo2Y/esJRp1ls1Mfp37Sa0kmhWKjnXJjmwl+9fcY
	 tjg/bzQiEBTNc4mmMY9ej8kSfmxKmiqBR/gjZmVacGKxKm9Xx5Pnr1tdHNc13SVHjF
	 5p0wEiNn/pdL7wa7Ak4T6WbURc3HLMSfAk5p5GZCEQEudJOJor030ERC49uD6m0n/4
	 ORgUiZzrYPjHMBLzJhelwdV1N2bNa8YWnMDzhZbkWTpR+LDt0iRBnOELA5zKmgtGBa
	 wwoQzaYljzdqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB5DCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177419369.10161.9291444378455031413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620ceb4ea493af48e5ecfe6a4ba0ae66051f91e095dd80d2b63ef0ebb1def9ef
Date: Thu, 18 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781774193
