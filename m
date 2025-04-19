Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBBA8F54
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745090395; cv=none; b=LdLUCCUGh9Jih4rq27z3nol4T60ckoVhZTBKMDqFzjSO+VFTa/DMCmK/rceUVf3g3zZMbu94MfWXqfKtXdms7YFooDXIWFnddZ6vuExes8Eina+LkKNIWzFI9CHrbqtr+aboR44g5JPDfk5Lt+JABXLx+r79zr3FeIO9M9+A8NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745090395; c=relaxed/simple;
	bh=D2O9hMBLeyJugYPI+ER9pDObN/vqYhFOf68e2WUSrHE=;
	h=To:Subject:From:Message-Id:Date; b=LXN4mS5s+DkhjZ24oudnOQBGN1l1BQaKODFTgIDjFNmWX92sjnuVyOHmyuwEtvw4IQv0h+iXTVETM7ZQp9Gj1vyDvhFYecIr1U6DgWYR7j1pclX9TSwF8hHK6FyF3Ve7FFicxBjY/YZQOZu9GhRiBwz5r6e3Hz0u5ao8t4zb9YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWnmQJBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWnmQJBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12C7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745090393;
	bh=D2O9hMBLeyJugYPI+ER9pDObN/vqYhFOf68e2WUSrHE=;
	h=To:Subject:From:Date:From;
	b=pWnmQJBfVqdaj7jiNZDkI8TKG+aeW3DzsvegDa2ppuPdtRe7QROXbzgQOfKsbX7l2
	 OMex/Cu+3mG7343jHoLCPl6jbrxBtMukcvj+kkuV1MV01VaICp0wmzL4IQmCcTJEtF
	 fZ70k56HdeprOB1lbH7k+3siFDTXQhCxjqhP0ov+oZNYTKDHYYIIGZNfP1eCTLuxBC
	 FuFaTTK8Ug12GZwkdkGhMv4DZ0Gz1/BF8VC/9Q8iLNOxJoXM4klq0Dh69qDGwTXKUn
	 1lcPIuzrDy98flvSkJTZfBys/FDMk/qcoAscHMfDhtJ0ZJhYDh7AX027JdBAmfCbWn
	 K//kc4pkExg9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A227C369CB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509039361.31961.14794119057335378124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bbbbd34196e5a8add45f136ca24401ed55539a02aad7f61d0b22eee2910653f
Date: Sat, 19 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745090393
