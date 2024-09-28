Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FED94206D
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727517354; cv=none; b=pIl8JOdbNiWOf3nMnohKLq2a4ZCcDKSGizgULDtBHV6EYVK/C1J8Chhn0lMw6/9VFKl4wL6rI5EDIY3xF2c+YmLWz48IZ8PGzAFzR69MJtmL/o0uhVBLIBiOQr3HSazjevLqbYEoNDL0wLkxKoY25i1u1UlYyjNY9rgzLMlwmWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727517354; c=relaxed/simple;
	bh=CUZ2xU+nqVQIHJWfLMBfbB/34PNFTocpqXi6TKIGu7E=;
	h=To:Subject:From:Message-Id:Date; b=mengPioAR7lQ/eQG9Lb26nNdFVOgXrg8QZWWPFQwApwrXOI67cF21s0zOA4yt66VtVYeFUZyNswxlk9T72OCe6c0thEufBdcR9Nxf0+UpQif+MEiZpP/1LmN+NEjSNGeI9Ew9WBSScI9sKb+Ova/IKC9tbnbHJhf/wbtaS7qLWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAvdbfUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAvdbfUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF96DC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727517353;
	bh=CUZ2xU+nqVQIHJWfLMBfbB/34PNFTocpqXi6TKIGu7E=;
	h=To:Subject:From:Date:From;
	b=gAvdbfUXoqsY2POC533DBa/FGzW2JA+hpO4wypDpBfstAwUdulTSBNLXqQHQ2T2IS
	 cp27pBOnAsmcdnr/7ejds5NS0zb+qHcK/UGb1KGOM0sC7QA8lRLGUDzoqiPl+g3Lv0
	 DxXU/3v4mgqCgwAGu3b0ffsU3oMNjRZG6B6bvy0FKhHc0OBM1u6IgQsW5Hhpru7/q3
	 NjKTxsiX1IjdiDhDxvznkFez6xVFpqDv4wG6TTABhST5ehBeCZy0tSeyD6cDWEP2Ly
	 1bHCgUthXCiLSI7fQgR/g+BcB4drQUnb8BUtSwtlwk8Y3Y9Z2aH+/R4q6T1Bw/hMGI
	 nD0JGVaYbEd7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F85ACF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751735361.22201.5310391418849032560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77043b846d11e2dd1632ecc375d55d8ab455522d72f41fee2de862875f18bf1f
Date: Sat, 28 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727517353
