Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCCAAD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741486734; cv=none; b=XewfURsiwdjEPG/g8wWFWXvOuxD3uEToIDWZusT/FMJpNnT4NROV/blFtn8duOLgEWy9THlSk354O2r1ELV4QqsKUty0U/8k0whXHkxGXBt0PSJIj7qHStCCNw9TWRlRBe1panJ7INXIad9WZmCYc/FcJ3JLT/x+65P9gnU4vb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741486734; c=relaxed/simple;
	bh=i5n6udKV7UDn58LAvISBh0Vg1mGLgUlgKUu5Jei9IQc=;
	h=To:Subject:From:Message-Id:Date; b=JBNABK7ABjRcnQsNds3/SVPO9KLP85jap2eiZeDzGS60lAj+qletEUkJJmKPfOiZzstFAf5PxnVtY3oiyKUclheAYMhwBpK2ExYdQIvCE8+3nXRuwfgLZava2/TVAkIRKX406ZjhZw/t1CB+3p8BXwqJhbjSFh8EsihSrM8tb1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WI4cKdam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WI4cKdam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D32C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741486733;
	bh=i5n6udKV7UDn58LAvISBh0Vg1mGLgUlgKUu5Jei9IQc=;
	h=To:Subject:From:Date:From;
	b=WI4cKdamHRh4iYPMEMpn7M+9cCGidQ0NAJZuj4r7JjJMvswzCvmAbVtiJ/bOPksIc
	 kJOnJ64YjoA1b4kXBawt9tW0b76V6e3rlLszIko/yVKF6PJnmviGm9+sVZwUPqap9k
	 yrKQKlzGsx+6TiMssAu8Ba46uUk22dBaY/NvQToro72pzRSOvzBAfQrWX43jfMVNnT
	 fZidoBhOJ16pSfDgG8AHMS0Y+hLBkveZ+zGEyEbx6BIyb1eGAp1fe3yudFh8OLjulJ
	 y5Xhf3Eg21e5UiyWhsKXB0Ve79stIDOWBQ0M6d/Zah6X4LYKcX9q4M/XVWBj5XGLQ/
	 2M0CjbOpeH7Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F667C282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148673357.8965.13855786283024288092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff287764ce276dfbb732ec56971115e31f531949068bcbefb9cdfebbc495c817
Date: Sun, 09 Mar 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741486733
