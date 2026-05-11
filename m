Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314AE355F5C
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778467834; cv=none; b=i8Wu8bnZpVbwk9GimLnjYFj+38BC7en0taaBSX9aStlfcUQiahokW0CdsG6y+1DouVtZZzfXVovTfC4JIAHDHTaKvexu6sHPFWCggHzEe2fzahHKTMcCDpkT6hWK3O9m8PZ+Bm99Mq9IOICN3hUN6bnALy3M9BVJTIGZXCD50uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778467834; c=relaxed/simple;
	bh=ib3vrgJdcyWAzwMy7v55gwnGpUBcxCjh2Fm5ljOlK7s=;
	h=To:Subject:From:Message-Id:Date; b=Ox9PmEZM/AcFG1R9wxuXFE/a/wM1BOsBFn6RaxztQQjgpf8AUGAiJsQrPgEuZKgZHgqzzYYeHs8LVuYOXOAnVaDHqiwpvgqeO8REjOdrSuK+2w/43iBY9ju3QtLwXJNOJAZW37nPIMgj2nreiit0gTShw4Lq6IetzQ54V6EH6LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9RpvgEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9RpvgEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B1FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778467833;
	bh=ib3vrgJdcyWAzwMy7v55gwnGpUBcxCjh2Fm5ljOlK7s=;
	h=To:Subject:From:Date:From;
	b=p9RpvgEC/IeVXrJrg/LdvLowvb5nsuwPkf9wun499eQ6YfKV6bKHodwpOIgWttj2Y
	 VqkNYfeF/Pwt8oIw87Hq9XP316mfSKs0GiHATp9rUSxmknVeoBCGwfPe4gGQRoHerP
	 Xev/t+u1EtXz8oB6H7n+LaFFXS92X6iwlaE3TAJvUTD3fohNH7KjbLn3ogHiDoSAap
	 zYKfwdVFjIY5BSMd0p6/dNP6aUBSLmRYpbsdUTr8ZHHPiaeSdB8fKvGgiHgm2p3yp2
	 uJ9DMBp5g08zxwr+HRZEWEOlRHc2pTj+nD99NCK/QRn1cliM5um4AgwC7N+Qh4VN4j
	 EJe5EbEhDNyDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1BFCD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846783370.12272.12991966091348770413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f288dae301a1d0c764fa0ff84bc4eff95867e70c21d8839abec1748898b0ae1
Date: Mon, 11 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778467833
