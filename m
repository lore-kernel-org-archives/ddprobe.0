Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291EEBA27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753053594; cv=none; b=OqELUYgncQ448EhuCHl6thb+xAGtkkEahc/swlloVcaAo26+cGr1zSC2Nrss8IFqXGlx0lJbNhOqG8Dz1CKJ4lecZMnfLI3z2MABDZSv+N1rz43htBme4p8+95c8toL9nZH8WeouY0Kz4jrlRu6syccrOQYx1pHF3ptswY/o1kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753053594; c=relaxed/simple;
	bh=665bFKTc0WXvEXKzOzMpG32Rcwi5C7QTqbQznc6PKnQ=;
	h=To:Subject:From:Message-Id:Date; b=T4Y1VrKaKIiEcJVKJUlGLYp/1C5TmaxVsxC7r1wHtRtWG7W+8zw2dugz9q81vyMdCdimDE0bFKlIIRwgWn5Bhxr2EDGI6XzD0EN8msG0rsMKkGAcl2aX75U0pHgLK0OzGcbDiBiT/7LsoWQ2Lub3jC31Z6jnH2lCqQZObj3zWIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dvy7yFaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dvy7yFaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDC7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753053593;
	bh=665bFKTc0WXvEXKzOzMpG32Rcwi5C7QTqbQznc6PKnQ=;
	h=To:Subject:From:Date:From;
	b=Dvy7yFaCZprNll4CTncXC/Op4GN4lRJrgDhZUOjIBf7Ar+7I+FRzp3SmAno8vn7wx
	 tLy1MOcowqR4sRQdbexg2dXyOORGNE2mMrrOWQU9y81r9R3/083t5jSdQiEVWw3+bM
	 WKZ0xS9BAmoDPKNNiHrZ71G7wgv0QFxZaWB8JnK6czXHk9RRihNVnCGeYakbxrKoLC
	 BDMJkexXlV3dPxUGHMh5VYhIbtoZmadm1ndT+3h/tFqgUN6kJSF6kbMZoZx10LGBvh
	 dHzC8jT2BQmslkund37McPKi5xjY108ULQHY3KyB+yEFHZpnvjsnqQOTg36jCM1mzz
	 TqOLPNH846DTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90617C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305359358.31129.15243682793280938346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9442f480a368f1c73f4bc45be417dce7a73f6d9a50ffd59c548ae9aade058e8
Date: Sun, 20 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753053593
