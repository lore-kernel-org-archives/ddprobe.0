Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6036FC15D
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716762263; cv=none; b=uQfUzIuHWYb1sg5dUAZq6SuwsQYC4MJlR2ske9Vp81snJmGJDtSE3hTy9JANUk+iSldnlH0q/bJO40pxEUO9SO1WBjBzwOX9DnxipGD5eBdqWZGsN93mq4hNoyYgAqwKghf/fbp/crZPCkNWll8MnvZQrEb01F3l08Pz3unyUCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716762263; c=relaxed/simple;
	bh=9l2oP86u96e+lmkAD8hPWUd3+Evwo1ABHw7FpxzoB/U=;
	h=To:Subject:From:Message-Id:Date; b=GBzjSm16KG/QnTDKDJjESRQglbtX8PfvHxhm3ug5X/ggZuvDRmwGh1ocn+HyLDMeu0RKkzkPbiM6NLtSYar7y/77zGnaux/AwcY1KhDDSS2X6/0bdJKKNMVqzsbzLFsrGOGLXVmrssyg7DZjmdnileG5CUJm5mEtCCvPSS99pP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDeBx6kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDeBx6kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F62C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716762262;
	bh=9l2oP86u96e+lmkAD8hPWUd3+Evwo1ABHw7FpxzoB/U=;
	h=To:Subject:From:Date:From;
	b=TDeBx6kR46EQRirLw9zTLWwsQYDwECQDUf1tE9MUp6SNH8zs02sj9RoeRGlJn0ATQ
	 e6ihQJE8XzyDiZP4i6t6qMVZ4uULqLm8Vhx2GIjzqWvg/9GToQeXvXAIetRkqNUP9I
	 jlyULRHgB67jYQ0rGOWnSgHYZykcVyzqmiDYCRMimgP9B2v1JEeTOfZuBc1j+rCU4f
	 Ejmdn+tL3Oi94cFnxxqXcX1j5NwCwBY6C14hjUov+hkRCKvMgfCZbobCnUxSjvLgc/
	 FSBkSzkjjfgfl4Afm2x36xKYi3KUOzOGFwuieY3nMDGbZQhXNFN1BkuoE5XbEjAWC0
	 7iisb1Lo5o31g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BC7C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676226277.19279.12091821576499737941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef786352f8645882f027cc56a8176b6dc5006aba718739390b4aba168adb205
Date: Sun, 26 May 2024 22:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716762262
