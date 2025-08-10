Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25169245033
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754822994; cv=none; b=An2AUyoP36HVmGlWJ8Wqg64zLbghQm19A3vUEDNxH3RzcG9kV3pbgiImjL+SBEW/Pn+qAPJEuQYAwlIQjsLRJ4squJOhstw7IIOfpOXr37C5gJZl7s6LhcyNtAGYOJtlE8lHMoMSQvftMik8mqTyOgNUaSjiBQtbRmgjLoh1ATA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754822994; c=relaxed/simple;
	bh=X1skXU5pSecmi1shg6eBoTjn8D65ohWOJGy26mdez/0=;
	h=To:Subject:From:Message-Id:Date; b=JernYNadIwEJTVhMGgGunCvvtMXXOnjvZzFGBzL1ES7DMR1OwaLb9GFmQZTmOgktLx3kjGgSwf7SHCZMzkY4Qgg1aAUZbuDRKeWkz/q6iEFvwuAuwAUftYDdqdh3pBYke7GI6aCf+hGxP4dVc0+q8tgthk4gUYJ3wJYRx2Y81ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/i8jWpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/i8jWpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754822993;
	bh=X1skXU5pSecmi1shg6eBoTjn8D65ohWOJGy26mdez/0=;
	h=To:Subject:From:Date:From;
	b=V/i8jWpjT4CbFIQQ6nQ5kfWcAwOLr7+1v8mlAyMnLC3/8LugcSf4P6/rCi7eHu9Vj
	 6p2JnCFrbbVoXb23TBx/ndzKVM50temVaXmIqRJYkOC6j8kX8oXOkM5sI6i8niVaE9
	 bRJBAf9u2EsBehTuxhuEAjtJ2v8Z1ICdyKXtLvpJ1eTBJ3TZGYLkRLx27F2gon8PbA
	 2a2ixQ6r5nzwyBQnKyUFi/FMKe4K+56qNBuA1pP+H5SldETiC9I3fHQXx4ZNYYxQE7
	 qiCu/8focb+wiJvr8nePG9OcyhYkIr8QBoCreLxsORPWLXzRybMpbpnEJKMgpH86wc
	 u4sQwpORSNOhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B6C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482299357.4362.14213019823525623060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9de2422b8b8ea0ad40511b76f73563d14653797048fddbc69abf3a3bb17b6c
Date: Sun, 10 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754822993
