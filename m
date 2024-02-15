Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E2713B287
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708031297; cv=none; b=tnTJK9Yccdg9G/JcED6P+totVeeItAZNGsvsmyAW26dHx4E9h5Z+u2x0EWLHgdTltjFym5tziXxkVHsbqw9eOjZejtQhdtwFJDrLcadMA0cCV2m4lU96fnIKlsBQwOOBU229x5GkvoF7ae/P9HaUFw0Dg0m/fG/M5yz/447cxto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708031297; c=relaxed/simple;
	bh=RgDrMOxai9ScVtt0kS9cOhi0Nd2wUIM7U/CrsQThcPU=;
	h=To:Subject:From:Message-Id:Date; b=Y3apJRP6WpzeM0NgCoLTlz25lC9Getsdcw6rp8gLcYepfxVyiN6VKWzc5EYhEbGG/+pYTwwnMAmTRTtdXNAVm7jeqs6znvP4itzLzCFM+Z/R83236yRbylnkcNo5aD+uUjDjrZDkxxBL9MSU/vZZLBk3QEdBfGOxzbNyo0pLyjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMuZFDRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMuZFDRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B4CEC433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708031296;
	bh=RgDrMOxai9ScVtt0kS9cOhi0Nd2wUIM7U/CrsQThcPU=;
	h=To:Subject:From:Date:From;
	b=aMuZFDRbssj0AyU79R5eaArTEh8JfdvaCGSzncFepbbhkdOUT7rqTmiVk5xWl+4oa
	 ehg39TXNWj1PtD6Ljo8q3FyJLmNV1A8R2YyWQL6wI/ybLUptVykRIFcjbBxZsJ0FqS
	 khjsKVjje8ZjoO1enw1Ow7tlhJEPmBPKKXhV/5Y1VR0FpHi5W+D5ESqc+Q3+wpHT9g
	 /5DiSTPm6ooAq3ICrWcx7g/egHgK8K8IRab5iQtxKV6ZO0AEBmIVVlcgfZ5L9+otD0
	 3qVriXhAx4ip7yTQCkdUh4dTXmQoHspWpe+LD/OuTUPNyFMLl+07+UVHPuAgTDY+jJ
	 McMcv/X45VZcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61542C48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170803129638.7910.7343527636303400302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c3ff78b7d2cb960b33232e3147b1d3afc2295e18f7db957cd7f7634ea8e467
Date: Thu, 15 Feb 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708031296
