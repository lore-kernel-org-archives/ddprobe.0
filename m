Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175171FC0EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773452694; cv=none; b=ohu5gC3DC2ZMlDVMacDZSjEjL329bVDSDQOsj3Rt1NW1k4EO5SNOHsNKsmHf0iwBYv/P6nkf5pkjRH6CIaUWK855BcpMCXmjEO1obqY70yFSPHOvskIMrlFS/aWlARcWy7tJxiXby++OBaec+0vc+LlnN8CHBI4QuinOXVe3AoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773452694; c=relaxed/simple;
	bh=4NuSNEt2E4ziSYAbSf9nrdeNvJyo9BMZWIVsFt8K5w4=;
	h=To:Subject:From:Message-Id:Date; b=qmCZ9EccUwr1nRbEBIh1AxAAAZNg1jl8f+F2+U/1SQ1oK70KATNiMz1w1w96cunhPuUWrh+AU67FVRu/fTtoQ1NjMITo169EEZ27Hqpjnr8x9dwv/a27J8nJso33lyatU4P+tt0O/EsG/BzDvVFctCrlyzLtjXhQdEvtTNs56bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZwBztSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZwBztSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC4BC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773452693;
	bh=4NuSNEt2E4ziSYAbSf9nrdeNvJyo9BMZWIVsFt8K5w4=;
	h=To:Subject:From:Date:From;
	b=HZwBztSCjdxO6JItwYYVxSqf25yXsYkJfuEAadAS1v+MSx6f/r3hvcC498eo+mOpB
	 2nrDtz54UwNgM/XTG8wvRVVWHUofJElTDVTNM7bI61s3sewJoUkGBxqLvNpM+29rtr
	 4JLStry9tbcuLozJQmXd7jygxe68YxKALnPxWvchxoUVfD6vIN45Cv2+AEFONYxDPz
	 lvjAsS7BhrYK5OsKrroGdeGJWOiCjrEc1seDoDHuLpj5bOgG+PJEDwXvTsBGLYvSTs
	 1KBq0+ivSqzYmjnK7H7jTNgNhdpHanFov0BBx49lGK4Q2VzApYJdA6e88mDp7WPGti
	 gq7b3KhL0AaGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADA8107BCD1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345269362.30387.15783079455589367828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6765a96f3e04bf6674f2f545cb4e72ee6f441f0ace252e1b81d65001589925b
Date: Sat, 14 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773452693
