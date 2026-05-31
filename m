Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348261A5BAE
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780261474; cv=none; b=NIoVUfW9ivYaDiLqlIxUShCzSArt7Jn6myOtWfk5pHZXR8hN1rfcHIWLdKAtriGfr0jkr4gzdXL85zWeN5NJyHH/X4vqMU6eNOwbPVycq7FAtmdjvaWtTDBYZJeD4sxDDE1uH1JisjZDBS95Ke2P6W0MTbdlklpbWbkgNYQuK1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780261474; c=relaxed/simple;
	bh=wBV9uPwFh9B0+KIfrOyFvvn5zNXFY9Fg+/T9EpS6unw=;
	h=To:Subject:From:Message-Id:Date; b=SNzvv7wl8WsneE1UyC1IaYInHKHov4GWXsEp/kwZGNVvDB804O/JeaIYuY/mAzTBIeg33jLA7OOBN943Gz5SjteKcI5+tEDbgUT1VSPVxiKWYVWrV/+94kE51TdsZmQwU8nNneYR17IQw7GakvTE6XdnmotY2F5884pgOyGZVX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOi+mbtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOi+mbtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8308C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780261473;
	bh=wBV9uPwFh9B0+KIfrOyFvvn5zNXFY9Fg+/T9EpS6unw=;
	h=To:Subject:From:Date:From;
	b=dOi+mbtfGI5T2Wu+woSXqEKXqUohusqd167KFsDWKMhBEmcxQrJV2V1bfh0SFMVuq
	 lXhPtV7gs62/KG8peYRDdv+iK4LFUckg+vu7dqMaE3o558kTo2WA21dyMpibxxunrl
	 xYm2pEPuDfIXlpnHD0aZ/twcsvGb09z+ZTd2nwYcSlXIx2Kk+zrtCciVdjEyQv3j08
	 R8qXBvfFjBKoJvCkp8ms9VQt9sEkt3toPqMltnIVotwOQ6Sr07/YYHt66xWXzjTAwB
	 GEDz3Lt8nyWSfBUm3iSGgIzarNojUmI2ELrJ716mCLNiS/dew3DXYKXWe68f9DZEHt
	 lBZBvUwntG4EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4CBCD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026147369.29046.3440210063039986561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff99c2fa387e67a0bce1c164c1b1bc922f859abf199f072ab9c17f1ca9092d4f
Date: Sun, 31 May 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780261473
