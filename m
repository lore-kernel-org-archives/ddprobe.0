Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B331F5E6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722024354; cv=none; b=VJIu42hD3UKbKu7yIUJjfEi8AVLo9WrhtLFtJE+IMS3H15VL/UpNScZyUe61T5btutHfJOBoV/QECQjcYlrXotudTHt5a2M+G4L4TILSkkrSRb7qhHXqEBbFjWJOfJdxE9S8tDfelLICbkLexy8uW97+/M1RgzC4ijWhaesl7OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722024354; c=relaxed/simple;
	bh=+ikuwBCAy+vQqXu8bGaq344vJCVGcZ5USzP08+pgyyU=;
	h=To:Subject:From:Message-Id:Date; b=CkY2hzrs2BOJdhT5vs+F1WdcXwHPYjo0+7M8+MS04JEa697X+CsKLZkz+mGVLBd7q++Q5bjIgGyOgWMXz6sOu8BSuBygPyeFTY4SU8fUR1sbkWpKDYAkvA74tBBGjoth92E8ubnhDrgOGCmZ4ivsr6tbrm20Iwt2GXT5EydCSHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ky/zN9oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ky/zN9oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE038C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722024353;
	bh=+ikuwBCAy+vQqXu8bGaq344vJCVGcZ5USzP08+pgyyU=;
	h=To:Subject:From:Date:From;
	b=Ky/zN9ojhoYGCPRj96c9zjtEeW+/28myhaQMs2r8hLkbWA3yVqcFdUVvcFVAUSOVm
	 K5PTL/pw5G+Z/T+SOk5eqkrL2pAN5gri7JQ1fkIvg7S0W8ZkwuR4Bs+Fzs9gre4aNi
	 lZMtBfiZArurIg97Ijfm9Lyswk8nG2xbbkgqJKFjzUW/6RFDmK6CmV7bzzzQEMHYIB
	 rlZG9e7EOjUvxmCd0R6c4i02Ox2quFPkFvukHNu3bKPuuhuCrcYNmfWiU8loYu6bDS
	 NaXhYYrw6WEmtXGn87XbTG+1sjB6W0Cd5izQU99I8qtrHfyx2OX9PsF8x4cPeIj4mh
	 pm1wKOSSCz+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99624C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172202435361.8514.12653442596195864960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b8ed47816be90ed09b8b0dd09085e3b40a3d6dc0bc9487ad7a11fd78e0460a
Date: Fri, 26 Jul 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722024353
