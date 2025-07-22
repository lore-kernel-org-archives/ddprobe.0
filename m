Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B6230100
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753165194; cv=none; b=tYSHe/kYfACUx5ozi9jMl+2jpRxePafiZW/+nA3h2XMuKmVw6w+gOtG3PsS4NSDyquM3BPsPDJCUyFxGXqpuppsKE96UjYqIzRFtdVNUBgeS9ZIfCDfx5OdbgtRmUH/RY2PATLjIx/JX5t04fsyC6ZcMT2MMZa4LCbnYQdJg9iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753165194; c=relaxed/simple;
	bh=RiJ43D1eA5BpxPwrgEVphRYdpSwffsIX8EsjC3pKtJA=;
	h=To:Subject:From:Message-Id:Date; b=XkEFVlaZjzqfBcAyKrvmopgo6Xs/4fw8pBNpi76D9CIIG9NflMwoHcgfey8eYLb9JZw/AfJNpcI1vFT15GBDEoA4ZChUGUrCEZVQR+53tpqVhijEfHDhVS7afR5jJcLN0O+b79z8n/mdNVZMboqUk5H+iVuhzd1Pv2woK01BGoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn3EdLVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vn3EdLVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6149C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753165193;
	bh=RiJ43D1eA5BpxPwrgEVphRYdpSwffsIX8EsjC3pKtJA=;
	h=To:Subject:From:Date:From;
	b=Vn3EdLVn2L+gkb5r0yT7S3a58euUaL/TUQB6C4S7XAvMtrjbcbYJuplgW/MnE08GJ
	 FLydHhqEmv0dUrzUtNPfEiuRULtYi8V6XKFlfp64d0y8eMiUPamrXj08o2fHZhvbAB
	 q/2kLXajzRSIrlLpOxoXagWGmInaQ3sXs3zqyUfrf9oUkuFuHqihkIu6m9q1nItctl
	 1pgwKTS1CDPs+EcQGhdiuFvTRQORF4rui3VOJNQDWDOA1E/UgxEXBbCMKJmSdUBi3U
	 1aW3Ciyd7OnLFldCFhq9aJI+vfsN0nUVVOfp6kjcrbvtVQyWElwVarXGfhSlIN/hb4
	 qkI9NwMu8VFrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90963C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316519358.23380.8915968082103075916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a4d70e2fe402603dca9d3582c651612956632f2d5c732e062457344ced81c5
Date: Tue, 22 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753165193
