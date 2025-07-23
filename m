Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8862F2C4F
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753282194; cv=none; b=hGDpw2kfn/a0zgrdLPBOhdLmYdiIlHbBuN/CIFHhoTjrarWHcCdq0aoUFBjojplZJuPGzDPBCdtcO10MMVu/7uaapATshYgxvobtBKiVKPgvfrNzSnpTcqQnIv4/dFpK+XcXqiOhL9u9yltn47UCUpcVNDGtN6YuxtyR9G+MrjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753282194; c=relaxed/simple;
	bh=xeotuc/pU7Ct61wi5y8n6f6+P2cjAN6GzbxivyE9wwo=;
	h=To:Subject:From:Message-Id:Date; b=ue/A5kBSoAzDRD9cojfx9ReRXeMhMqrkj6NpbJlhidpihLDtcbUBTyGwXIUUpl1sNzH3FNGXwoyc+Zy6oOiky/JvO34q284mVIV8RPjcIOrp+E0LHmzqAYeE5JWjopfX5tKrHhgrCnO3KccET5m1MvalQP7vO3F04nxsb1DOvjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTongaCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTongaCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D53C4CEFA
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753282193;
	bh=xeotuc/pU7Ct61wi5y8n6f6+P2cjAN6GzbxivyE9wwo=;
	h=To:Subject:From:Date:From;
	b=pTongaCuVCmyNY5+N1Y12aafxp/s+Tta1bOOcVvtcVjurL++NV+tFylKKhxE2QOMN
	 OwPDRCR5HFUpVnt+wMclVMIaqifC+MU5HyidrTuumMwHa8X/fHcspjN08i7z7Rr0v7
	 pEfcc2Ic5moq4gtlMozp+SEIThYLVjKoHT7i1lH5th8CmQwba0rYqFFyfyAUZC2jVM
	 K02ijFbg+3AwWy+dZkVWY6COZyKyDP1m3IozdnVLGBh4Ac1xhy29uyTr+4/XLKAf6X
	 cD/IEZpirvQPplml0HTuJ7XfnKKcMAqrL29rl0qCe8Q4nFldr4MsvEi1LPHmXpTXqb
	 8lC4m6w9YbXTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A7C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328219358.28425.6938223083660398280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4c8e73e0ef62a742097b1c5648aa4c5fd809f8dafea672ee0cc190015b21e4
Date: Wed, 23 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753282193
