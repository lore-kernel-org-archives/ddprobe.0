Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1631D2FB0A5
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760392794; cv=none; b=Dfi9FPdohS2GKNg2ZgIx3J/FazTynKZD/kFmeNRkTUBtvBoRE2+SssXVU28bILZDeQHBBWnkpzkmHHRt7FSsLpCnZy1tYZwjIhtwl+3CDeOoi2kwmkt+OVuroFAMHkKj6w2RIfpRpY4JgKx/kKiQlWL1TnnL4RvS3jA+BABs1TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760392794; c=relaxed/simple;
	bh=hRgb3tFjDFfXFx6BB8jzrjSncpse32CF+x/lwdjyaQM=;
	h=To:Subject:From:Message-Id:Date; b=I82BHa0622WcAogXwsF9vwECgmE6TftrfMwcSsFkIEidSCX8591X7jcBwDCXJBnI4j61d7fr/SLr4Qd6PDbB4rnxvlG7V40dgcON+kztj25LhmlFiVfN/YVHf0o2HuXE3xmnH+st3r1Z5jDD9gwD2BtN8ciZxX3dC/WqFAUyVWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFJBpoPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFJBpoPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C6DC4AF12
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760392793;
	bh=hRgb3tFjDFfXFx6BB8jzrjSncpse32CF+x/lwdjyaQM=;
	h=To:Subject:From:Date:From;
	b=hFJBpoPFfHg9LNq4DqugG/LWFVmLjEegs9z5MzNe9fWqxA58Q3abkMI0yIp3P0A5e
	 vlDBQbEMzOaJTvfXxydA75KI1/F8lgNwg/ysOTRXgmdu86t6f5r5c+u0gfnsjUeEIo
	 vVLX7W2ENJO1bWYM55cHWndsuusWtzoZI7H8yQNH7AG8AmKUP1DbKTDqDbU+ou3JLe
	 aoDVPOGyz5oDlnUQGIQroslN+3mLZ3aKYEUjdL56PKteDXrrVWIoj7wCCmaWftMgfr
	 giYjb01H16tdRLuLNZDCkiRUIEtkWWyuOyD1RLiulXsx9SC8Gj9Lzd97ud/gnwPbui
	 tCdCn/jUTFaPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39ECCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039279357.22016.9439525009871638890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5551327de79142297cc0ea6eb9b06ae620d38e08e3611b58e8c1a1d75797c5
Date: Mon, 13 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760392793
