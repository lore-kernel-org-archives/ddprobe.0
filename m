Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D63392C39
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780478674; cv=none; b=Kh7cG+QcoIX1tlLsy0iZks2JF6D9bitIfvpbNt+nFbv24AOB3w6k893gPef+9iEfUePVAZoGjTVkWbBs3BSltHzKjTM0fbUqQ4SY6DsC0oDIMV5JfSU/gXITEVBCrQVF5WlTWggJRAPXIWDhgXbQHpYFN6An/lDJBI2E3+vu2mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780478674; c=relaxed/simple;
	bh=T0p9de0hJQNWIXFpzQoh7eQPytWEA7775rmQwuCY7q4=;
	h=To:Subject:From:Message-Id:Date; b=Lr/3tCWHuMk7kpsSYmq8ScO7iVj1MR5IrHNKoorwJFWoOKhIwbnzoqyMqY8x46dt+X4f6vxR5MYQ/NeHsnzrJUNCx01miN2tppnRm1hBJiYhLh/Qwo1rw6IL0su9ZOjJma7N88BHt/xH1GgHfffkmCE+61+yoe305YMF99COzJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQo6gFoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQo6gFoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A7DC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780478673;
	bh=T0p9de0hJQNWIXFpzQoh7eQPytWEA7775rmQwuCY7q4=;
	h=To:Subject:From:Date:From;
	b=eQo6gFozTzXEWGxTMHg24zDr6Ww38DyLgsMe2tB0rcHqCCNXKW1omxk3Ucts10SSs
	 s7z21uzTQuTnHK2Fsno9zMrB1iAk2tpu3LCE/wbyPPQkvNkvTCEb58Fi8j6sHDPPiQ
	 GjalNufThTLqNcMN3jNNq9UEkxgSd04Y+n5LCV63LuUVywyXAikNPyeMewl9/S4I0f
	 qfTbNMoLDlZmE2BvridTDFoQkbV2kSgLF8pEfY+Vyc7d69z0oqgbCg77sNjk+avjYb
	 4v5Y1A58EbXuuwABlNJi7M2SPDHMv31USA19Wr3BFlHZc594iBpq5PhtbGMYx0+Q4G
	 S4BMAWtBON2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92BDCD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047867368.8520.16723249777253217765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3a852bf676ec9000a68443928bc101d7d48f55e26c708e2a77de589673d7f1
Date: Wed, 03 Jun 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780478673
