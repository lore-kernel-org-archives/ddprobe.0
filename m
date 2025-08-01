Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC458F49
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754011194; cv=none; b=dNbcHOi1vN3dW3QXaZOVGT0ST46rXwLRiWzZo3cfrc/uTKd9H3yMNdDjTC/abBpfx2GpSR1JweQpyli58DKZyXBNdG4Hjeyi0fLWcQuAqxCTqQ9igzgYVXA1LnMvciOdWwKUcBRU8L4hyYlXWD2+61hw7IT4EyqM6w+PeucH9kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754011194; c=relaxed/simple;
	bh=ry0LrbMRLPxvJTHof0ljpUrQRekzYhnkXFrEXLkxYmM=;
	h=To:Subject:From:Message-Id:Date; b=dFx6LQtZN+o8lib9ycteKl5B9zCyn/i6h8nygE7jGC8FgLGgqmYDx+D6cp3qXno5HuMTVwBhK569a4TrOguU35tVRAyBRkHUBmwVOEF6AVm69KoDNZ1YIMyxxy2DXtdpZ93u8P9LSH5tWCuEinUTRxaIfJLGxHH+vk7qeaEm3RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmUT0OCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmUT0OCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B8EC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754011193;
	bh=ry0LrbMRLPxvJTHof0ljpUrQRekzYhnkXFrEXLkxYmM=;
	h=To:Subject:From:Date:From;
	b=MmUT0OCmF5Eiw3C7zWd1ZmjH+e+/FZzAxFE/9Sv7JERbyAEbpuSu//njXJnsEXYxK
	 XHPvi38Cch4lmInMvB26tUaYbBMEhewXVIHbt+oY9Z9DGKSCkX5GndA9dg82KNPcFN
	 ex8VwyZmFlKJvz8RC7qE+4Mzrz+7jwcAiVLO2d9RHKN1ZLcjnCgs0tpUkJr8h4oXjF
	 EwKXpvKwEhGmQefE0pDn5vvNfpjOCWZnBeQO1mGNtm7ZAok4KbOVsPmWIejVMVIIhQ
	 hQTtVhvteUh5scMFI4ZnvWSGXys4Jdg79HXT2tiLImxQKA2aGGaSoTuGKajwsJh4Lb
	 Nm8FnETLhlYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401119358.17181.9313337984151090341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a46500a36dc30caad276dbecad90f98aa6542be1377cec6a8e90ba4714f4fe
Date: Fri, 01 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754011193
