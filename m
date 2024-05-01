Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460C32114
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714524743; cv=none; b=t0OIM8VphMb42EscrNZ3yhf+Z0iViZMG7eEmEh8XqOh7TNN054rDREtI6oZLsbFJMQXVO6CGv1183RI2eR/ipkiXvjVPtqKMTLjcDhIOAYUigNcLgDZElI2kHCdj04IYPWQbHfxPISJOXhWM+uikN21IEsMUN0F0sVqovZERej4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714524743; c=relaxed/simple;
	bh=ZOFbProXVyCruKTtOPBgHycfmif+n75VQQdLPbzvySE=;
	h=To:Subject:From:Message-Id:Date; b=mco0939cAC6WI/gbMvyrtnWh6KHe3vMfgt9knXqgfmfLI87464S8iN1rpejq1OQAWDWAYA6TMhUmbtu4sineYkTFTkaLiTGQRO6mdhWSeseDe2/GP4KhxbwOuVlfrQBU0bGNAXdUr4T5IDq9H07JJ4PoG7WBSXD/aVYTiaA/cts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGqqOw8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGqqOw8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC84C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714524742;
	bh=ZOFbProXVyCruKTtOPBgHycfmif+n75VQQdLPbzvySE=;
	h=To:Subject:From:Date:From;
	b=KGqqOw8wKb+6qecngFe5GiXJ2knqvWzGzV6Qx1dP0hr+npa2CUoxw4rLTj7raXgGE
	 rSjoZ0nnz4iDTyLhVWnXxv5wdLpvKbaEuCdIWnmt1wgwxbOPvD85B/LurCK33MuVre
	 xCFpGymoxJ1yj8RxjOFLKlvZcpF5id2sSMLDzsO2qr038wcaVgx8IUZdP7WD4uIh5C
	 /qUOCMD99cf2Z1P4xVcgqqG+PLk+6+Jd4zP/W/oyo6KsiFQFwCXRUUyzV1lmQsGzdI
	 Y0BCGJGed68T63djCQMIH0Htbx8E3CU7fGwNarheGbJvQYQFg/LnyTaHhBQAqgY/5/
	 F+7f3xUsNZTlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0C3C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452474275.31253.3012819030056742274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4167f20af12c814058a1541e64a08949b33b2ee187f08ae5cc79ecc7bfd576
Date: Wed, 01 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714524742
