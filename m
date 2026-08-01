Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C53E31E831
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785563434; cv=none; b=S7Vr6VW4Gp4YTJOad6yHNR/fff/vq4R5ijPgp5YeyySThg1ZoZhf/A5Rf0kI5yBRNqAwBhC7IXiN7+CQEgRv9UsRvxlt9jD58b+DDNi2Ldh/MTqT35Sv7TedDsYtyqT9dti3WAXdYp7tiaH7cX440dDGVYlA966kpZr9NMIjRuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785563434; c=relaxed/simple;
	bh=TJK+uyUHbZwpaD0fwOYU9fVfTjSrvteW6AYXGSl9xfY=;
	h=To:Subject:From:Message-Id:Date; b=qxUt3F6ia7EFNjGcSUdJJVCZffQDcb9a6cDt1xMTf4qstHC2MBVsH8eU08e5F1YC03qsk0UZybj08tsA5v+t6/KVabYzyBdiixfcWe+kEhVdwkpZms3J8i7rn3yh2B0m5/8DNhYhljfUSuNazyhu5U/5WJgMjVuXpsMWBDZ3NrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNUL4KkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNUL4KkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1E4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785563433;
	bh=TJK+uyUHbZwpaD0fwOYU9fVfTjSrvteW6AYXGSl9xfY=;
	h=To:Subject:From:Date:From;
	b=CNUL4KkYf+Rs5pSgEfIChsVTZknQbcQdQJbAzd7j77K0wibfRVx7TjGWeNwiU0HB6
	 1rLmyblsJtFxvh4MF69DAMaVp+jNqbgT2LTJztsuU0xsgb75jJyUZ5zUXYncpvC3Tv
	 MdKfJ9fr0yHOn8Fcruwru7usrZ+daxTzxrUhGTR2VaF9cD9mW1sHBLCKK5CKykDClM
	 kbSCoHqQRG+G/oHdJlfxmf6cPtTtXm7J3WmVaub2P0Dv2i+bEVGbg6Xfn5z/FJtwLN
	 zPrIZFTPsnSVHlSGA1IVWWLaE7r2R1Y+LYQry1K8dORxcPscm/ppwpoQW70Ja8Tt2W
	 6MgzGYN2pgHhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D2CC54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556343368.32218.4869033197477434856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484e24ac47b4c5ee25c5fa4497439018c5b534e19b5de14a852e4a2edba556e0
Date: Sat, 01 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785563433
