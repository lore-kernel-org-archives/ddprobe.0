Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD9E625
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773548694; cv=none; b=JnLaqRslfUNFphBzXtxFuM1g2jSL6VeNLkyMw8VSgCFKUDUl2n82vCw259n3l4YXFD7L/uc+HH2FARy6AaQ6PqiWRj6HIm+FVQm2xlQAxkPlENP1SZ+dfUnMv+l4BpQPBLiDXaJuVSs6zbuhCLmAkE0tNSdNqzs0H5HjP2HwndM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773548694; c=relaxed/simple;
	bh=AC/5jCBAaCK+A9kzCEcBXoHRPaYSUQeOg8E/6SUXrkU=;
	h=To:Subject:From:Message-Id:Date; b=XI4CEuxv99ZQe0f9ZCZWAmBhhQdCeybvDBTm9pwvNzYmO6hgQOjTPoTji7+TSHXuzQZxRWq0x+vf0llhYQ1WaLVlR7oDIoL4kOghJMNGmXQwJmt9zOu22ljPm7aOQ/BXouW8OFSvTcUyHpsxuXbBI3ym0wIxKgHDyxoVXU2Y3QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mipkkzbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mipkkzbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB8BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773548693;
	bh=AC/5jCBAaCK+A9kzCEcBXoHRPaYSUQeOg8E/6SUXrkU=;
	h=To:Subject:From:Date:From;
	b=mipkkzbLTKe3D4q7BmeqjlTznJxXFpryRzlpxk5IiR+Nt79Hkl5uKGBPHtm7qroPi
	 xBlnuGLd5WdQimNddgbLdpqM9C37itiNNP/4q9t/Wl/7/g9B19FW4s109P2oZ2yKWk
	 kbZlF2bQHuhQtX61R/LWpDxw+95hDl6/5Uz64ur7osHXq92uDYWdhYS4OJVoOHm8m9
	 mn0+X5Zj5mbs2MBiStoVK+Cvh5Aibsq0VROEAtzVZNqzXSDUapaqfpbM4xxaiTSnRr
	 mPfTntAndsFoQJ34oP6yzRl4qx/aOlTe75/mfsmDaJb29S402aJ3JMhfQWgY8kcBfb
	 Fe9Al6/2zLISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985D2D58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354869358.19573.16635056334381949390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f4c18353bba83fe227b2b3cc678b97a2a92ef02133d081cd97f1f3547944f2
Date: Sun, 15 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773548693
