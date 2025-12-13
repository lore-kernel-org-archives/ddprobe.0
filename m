Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D521DF72C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765617774; cv=none; b=ON7N0QmhyjUpyc9715TXeE1T5imGA3Xl0MlmmgVDWedK4/YmIgp7w/XjXATcud0h+gbXz8m8ujFtpNF5VVieXUiM8ElTJi687PTVU9BYjW5h7v/a8NflPU5X9Uc8wx2w64kpjNxaMUhCQDAQ1wEHnV8vgTvpQZnHjqy5fJWvq5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765617774; c=relaxed/simple;
	bh=toLHJ+5YbS7Bc3sIhEQRG0sqJ7f6Zw4qaFr+VmiY6Lc=;
	h=To:Subject:From:Message-Id:Date; b=rdxaYHxm0mLP+ZBCZaGbAULtN4re+k56zMwcQydudtbHp3U9k4J6/AMYaFvUytqCm4YNd3rDVdfrXx4TbwK3W2DA2RHurwYWDbJlnGaPauwlZQPOLOAzEYfMs8zglHGQvbXJ8Kr3RAoFUVqafmT/Fp4/94SVkKoZrxWG/JcIm7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTsMi7k1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTsMi7k1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B6FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765617773;
	bh=toLHJ+5YbS7Bc3sIhEQRG0sqJ7f6Zw4qaFr+VmiY6Lc=;
	h=To:Subject:From:Date:From;
	b=PTsMi7k1+/IdByoLlkNwy/MhlO3uw8OpotL/oCL1Z3TVmY/4FZ8P66LOxe0MmhXqq
	 aCNAEUpCPOT5mUIfxlv868auOfsYJlxZVfKdbfWwaOotT7qcKSAUR1KaoSns26pLIP
	 xTu1bf6eU6E08dksrLXe3B0eGKdY7A88ughoSztlzK1dSoFWjlA2Gp166SLNqnrwl5
	 yuYycfcfc8sQ/y/8wX7jasbZq9viwzkXN3UsWN3OgASRunti23gWN6gF+b11m72mpR
	 SLQqkfpixAQCQML24443RDOHoYFTQrPFHXMP9iCyrNy11zbQYIDtXYiIgIgHU2PsA3
	 yCKuNbWsFTzRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97220D59F7A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561777358.9451.16865802717801294896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fc414e77f2530706639968b13c1bfdf9d63fb37327cbc21f7dfa168afb118c
Date: Sat, 13 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765617773
