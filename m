Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7C643231B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785928834; cv=none; b=qc9H4pN8bSKoxEcaX/CTr1wupzb41NK8iFYGg3DByo0ngAU5y+yDP7NInlvgNyDcNj0Zg8KZUnUAwm6OzjkBBZbyX1hhKLBRv41r8r1tBIi2lBqK79bP17iWZMTYnC4OLsmyvtuFZotZZp1B28rIBlR+oO9SlFAs7UESZFGXNIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785928834; c=relaxed/simple;
	bh=MM1y3w9aC5a6ro/hIDHtP9VXhxYf6/dqbTaQ1KzfAbs=;
	h=To:Subject:From:Message-Id:Date; b=XGKm0ptc13+8XkkkKxs31d/4isywvKalhyOnQUV3lDe+zRk2j49qQyoYcidm1q/x/W5yzdpIEBLhKB03zhs7Uth0vd0ShT0divZ9lxVx87mO0DAAtu3UH5pm7vdZRPeqkTT2zWEHy8HcnDN2fqxH2Lh6ZdAk9PjDZXzxUTU0Rc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suwbfcRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suwbfcRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB1EC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785928833;
	bh=MM1y3w9aC5a6ro/hIDHtP9VXhxYf6/dqbTaQ1KzfAbs=;
	h=To:Subject:From:Date:From;
	b=suwbfcRLzlSy5i9jh+HhJfuyqyIZxzCleZl3YlKGTKKwuY0jeanJNKIz8/k02IL8w
	 C+/fYIctMyqLfhOz0kuiIaoXDzpsAWeUdnoNv8OGylja8/fd9ep/lFTq1Eqr0NeFGC
	 +a0XIvSJr853qAkwt7icdsAUvY5Cbrp/r2/VMKZu2dckrA4AkUKtHf/9OVrwdq6sKK
	 dvohEDMiT58oPuYxjH5t5BZn0lkG8EjmiFgWJS5djLwSmJbdtuzN928Reey4+Evkdz
	 KDOiUP1qZCqrvrCyUu1VfIXC+hc3fOibb2RXvsLY08qW36o2pPqPyTkxvOdBENP5cn
	 c1a8+cMhPcUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CC4C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592883371.12406.6413177384693565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436b9200a26c27e43d722af561f52b3a1617e5371791b21e8c0335d798cf0f08
Date: Wed, 05 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785928833
