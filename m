Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26699280CFF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747667394; cv=none; b=HYU+O0H7UvQJcMolGukeSoXSK2WU1Z8AV0R5Z4ue5WDWUMu9MG5vLZ96ZuwDezdTd/FAsYl2JGy/2SZ90mMDwdeGlqAkW9J/YLtpw0S5frdgCLJfkAaz3nMqK9Is0tpNl+ObgzbX7UPKsQp/Ihp0JNXuRC9JCL7d6G7F8JSnrek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747667394; c=relaxed/simple;
	bh=J/8Ql5C3mNPS8jbrozgA0vpJZylFtzPjAhmcv44BLPo=;
	h=To:Subject:From:Message-Id:Date; b=PoRzeqUuobcPNke0rD0+QRe12FsgR1YBLE9aO4+b15JcD8W0UuWKbG42V6wuX81kZrjSPDRCvcU6FpGTShe3qVZztPTZN8iVP8oqI193NJQGyzxLZsIpXMuyI4mcITiQBKG17S1CH/Ft19yxAI7ScpcBgNeF3iPsvCPihyX/0xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/qufC91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/qufC91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD71C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747667393;
	bh=J/8Ql5C3mNPS8jbrozgA0vpJZylFtzPjAhmcv44BLPo=;
	h=To:Subject:From:Date:From;
	b=c/qufC918z5cR43X5U56DCG7306ihSw7F3BssJ89afrAE1TOQqInFrBap+1qmV1+n
	 /3QKsPEQkZ31SNFTaTveLZ0HjU7NHQc0h2h7TblQKpHSq0Q0qf/KloFQfqEOx6T3I8
	 8TPjfCss+x9ReZAykA4rLo7CzEfmHxCUfKxR/QRJZ7PdzEleoj19l9CMP28E6DCnLH
	 U22YFGLmp+5DFXq4R4evygauU/SM2/5qZO7N8/ImdMZXSgeibNSD3yqr4DBvaab1AY
	 wkJuXleaeIL+5m86zZD5p5dWj+m7/tiYqJ48P++o9EpSIyXCDz4IWhuNukKVN9DogE
	 lsLVzZZt95Fvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D1C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766739357.18450.4695281117924791015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870e93c1784d1137c5206d92157f3e205d35c5c29109610e02c9f1b29df9aa84
Date: Mon, 19 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747667393
