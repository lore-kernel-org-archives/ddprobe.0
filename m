Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439C530F95A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790674234; cv=none; b=hPd7dEChyKAWnU8yFvJJvF/11w1pe5J3NjcL1J2SAlK2w2d2IZbLk0UQ5Itkpf2vYn6o2rMnq/pAenxn2n0XHTpNTTAbYG0+xCuPzMT8WkLBx3fA1WGPWeCKd+mFIWMYvoXhLTaxYqNQrLWegqXGnL97cbZTNQk9hMaxXDm7OqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790674234; c=relaxed/simple;
	bh=+cAE252CUUiKlk9IE+hilVGXNl5g3teaRE5h4PZJ1ho=;
	h=To:Subject:From:Message-Id:Date; b=TT8lfHK9mWGXUHhDp6kr8Js/blhleINIdyI4GN2raJiAHgJl/ycPpI6ne5xtxQZ2P8qVHVGzmUi1fffCdtQvuzmWarcgvqRTVPT/2X4k4tkE0dEnNx/O1FEJ7VRw5CUG5H/XNu3Hgg9wFY0tVlOPx6txfDYsk/uk7YHA74NydXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlM41sze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlM41sze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE855C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790674233;
	bh=+cAE252CUUiKlk9IE+hilVGXNl5g3teaRE5h4PZJ1ho=;
	h=To:Subject:From:Date:From;
	b=SlM41szeiSrLnZ5j53LGhyeLLaIAnCjZW7WeyA8QV/hW/p+nwXCrlllDhbZUg6gAk
	 sHDNpo1cyOYXFhxq1aABsiNfJ7xXsGAHd7i+k41ZReWrd7bZSjG180Hs0URnolGpwY
	 gGYSeAeMYm3BEaxu20icTGD7qkYm1d47D4Mp0dnudtcoXKIer5OisqbBziL/qN94fJ
	 8+MK3U0bn4+UdsSvJ7tJ076cnhI73BG5EjO1vvkJyFj//RCxqqhKuUEvFS/4zxxDmo
	 7qK/U4t44OoeC9ptoFPtln8tI5HL9LiC/5sgye5NeG5rX7v8IOwAPfh1RdMf/RJikN
	 1qK6MkooV6w3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0CCA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067423369.5226.15458617733619073453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6f3f8d72a54d8fc46606180899b250fcb369878b63053221be44fd2bf89021
Date: Tue, 29 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790674233
