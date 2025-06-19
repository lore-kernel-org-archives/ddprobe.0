Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205A53085DB
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750345794; cv=none; b=iIQbdjchT14HzEduUnmmP5t1EYXo1jZbWPZ3lywsHp00AJkMhcoK6qxSLdLzDIJDBkhjcvtAT06gfvZ7sO0npofVilF7/vWr7Y6P7Qm3KT9QRxqBVwlXk5kdj53p2EwN3xPs7nNU+GZzRBqvHyS9+reQ4VJyRBU++DQngBMfNm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750345794; c=relaxed/simple;
	bh=zrYDfsVAvDlkPVE/cxZtxRI14b3sDevfZpxlLtmdlcg=;
	h=To:Subject:From:Message-Id:Date; b=LBhPhgsWqbJYFDlAA98vt4ZvhVFhwS17y9xBGmilCBDY3uxbSn/XUMJyx976TzjevR4aa8XcBNEjr3fdYwv86ZTEiN4lF3RNN2TmvoxJn/guubaZo4hF0ne28PGa7EPdvlYSDaxRBFr7XHeqr8K+c6DTd1h9GreOQ2OlWBeZRYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0VbayfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0VbayfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A602DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750345793;
	bh=zrYDfsVAvDlkPVE/cxZtxRI14b3sDevfZpxlLtmdlcg=;
	h=To:Subject:From:Date:From;
	b=h0VbayfUgJ+L1NQzWYVud9eyPphvWC8enwURHjD1ncVGt48L/xod7kK/qcM3dSCnQ
	 noD5Mmzz4aEvIe8NIis9S8x0LbKZlV4OhFDvwn1aqAs4qLFoO8PiNiUPPL6JqKhD9W
	 Xvh8r0woHgJ57hf2PxgCNCPtJbbFzts1w1sujiVzhboOLPi4FrnvRC+NyUjrVZPjZZ
	 PmCfX1dX+K3DRep8kstvAsNmFcLbIAMcDI+wo/1oSky3fGDUrlfqidhQxjgN93z3Wj
	 X3uA2H2GepXR/ygskNG+TvCu+28n7T2A0+PDbtxghx1F5L2vTyOqaiCJjG4MyKyWFJ
	 UnuqKxY+Wqdsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9399EC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034579359.2350.14437453144258130705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f21eebeb24917a2c2f0a7a07c81b22c231005eefaf46ca3cff27832ba2923d
Date: Thu, 19 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750345793
