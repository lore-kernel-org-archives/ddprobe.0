Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F26EBA45
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776211654; cv=none; b=NSmLE2rPBrJU1B2hKEPqubMj8zVHZ5rczrvozLcnTK/ZVsd/QRPWZuq9BjqcCz4xPyKm7c9QadSfYGwqglNFM+drXi/oiJzDnDsff7mCOebzxFNaZTYeS6x9G6oDLI7B9oOa3ARIjeVON/CmJ1tMmzhjwRnuEi3LA59RBrtxBtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776211654; c=relaxed/simple;
	bh=oON4fPme7vDg5bc2dmU4pq6p5VWRSDolZqjvfZH/5TE=;
	h=To:Subject:From:Message-Id:Date; b=EuI8IbOvb4tov+PsyREqLOMIrcEKHUPMrHANz9dVUhX1ZpJ9tp7Q6gHGY79VMGxX2IwNL3mz0YfoKzgA1aj28B0uCg2tIubY9O4aFeRacqtxwX4ruih1NBdZYlU4pXaTQr96myjK09cPlhiaiqULsemylwW6vBCU01lQOSHSW1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4jPWf/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4jPWf/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA7CC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776211653;
	bh=oON4fPme7vDg5bc2dmU4pq6p5VWRSDolZqjvfZH/5TE=;
	h=To:Subject:From:Date:From;
	b=J4jPWf/fBYcYZiC2lYK7PVVnKdfdaghN2z/kbGr1LLua1cc4cVs2vaaWDNoFbpbEc
	 jExFQE3T2QADRyD2OWZni64BKQi0kn/VhxHAHWNf6X0h1kAkTyGIAwPrKW6O3aNwOH
	 5/KbxjOo80Br2u3vitAzj4BKnfiyk8tU8ulkpBFagE+ZKWfN+byynZPwJlgXCmm3JI
	 l+WkAwqmz8r3zcoZC1LKY+1l+rUYzJKk7JcE+jjKhOaotVG2qXWE/4/9yHIhSVd63j
	 vw4DqjSf8XfN49zsAo/zRQ21DMxNqnBh+j1c9xSiI8wS4SCK7Irh9LkA6FFO2ZqpAe
	 hOtNiamtSWszw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB05DF9D0F6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621165369.21962.254304838961890735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c43185fc75f930ca23b5357da72d26bb3164b3ea19be06302e06dcf7b44e0a3
Date: Wed, 15 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776211653
