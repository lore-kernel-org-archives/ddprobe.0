Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFDE1A23A4
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757180394; cv=none; b=nnY9vrrCq3vcvPw1bVTBMbtQMF2o9KnIAAm43bhPx9ClHU9ZTFkMAJ7ck6glLze4UYGEgxVNF+JqQRwhEZuY6Zz8awFGpOJSNDpMF6q4NbewoX6Y9XhUTpN7lddCsjE3KhXM+6+tSPMncVNFh6tSLENv6DkF0j5HxIVsZUDXlzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757180394; c=relaxed/simple;
	bh=pCiOdVbnQwh37j6dzp+e2ZtBUgb0l3hEKla9YkA6bsU=;
	h=To:Subject:From:Message-Id:Date; b=LM0LvKX3erBKM+1iTF6K/V3LRyStwSP5+mvhNNVaYUg0IUK6rkKDB4xZpvJjrPOK31UNIkdiS6uRBSlSM68d0mMelSbZfCYxhoLChyMe0vOCnp0yJtr397bUZ+SRrQACthvX75FZzEMmghsf0EsimwX6NuWesYY8vnv6BU5PxbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZ6HyGwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZ6HyGwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28B8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757180393;
	bh=pCiOdVbnQwh37j6dzp+e2ZtBUgb0l3hEKla9YkA6bsU=;
	h=To:Subject:From:Date:From;
	b=nZ6HyGwm699LMDN2kJIFSUDGvCKeMkGSlSnQM4II3x6H+cZZm8zbvsYVOACGie1SL
	 nMf+1+2kqaTwWZ5j5NSDw8h1zThnA5+IC8K/U37lK1Le72ej+QHyiPpTAFKu8nRyTi
	 JLh7E7Ei5kqne49jRjRo14uxcLoXdttz6TsyUjCaE+rI/swKEMLSph9+tk3kvHAoHM
	 +mhaQ/f2VdZg5j8vk7Ih8pIJ4EaHME0uhZKhXwMTHHYW1FLQ8KbLHKqHfc7CHNuPh4
	 kbxhGqwosJxn2HgTF7OByw0PR8+6HTzchngT9yOj+iYljhl9Xb19jQPM2sbyogFNjH
	 hG2SwdtNxijiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2BCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718039358.24837.9547072509118879945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7f4672f700e077cf48e1e64e604a20e514fc62c93004d92e3a959949929367
Date: Sat, 06 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757180393
