Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1410E2DC322
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753363794; cv=none; b=ktdx70f6UAJa38qSr/gWuW0KGtANAiUUosPY9egmNQT+OXjVuysRn4Q+JVPz4UKFBua2tc5XQb+d/VP4FRSyEh+4gG7sN1ybbE9eCG98plXBTpyacai5zk6SUSqxTorz/ObWCDQmUL/wl8CZDt5SXJNigdRqH1cA08eTr56Era4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753363794; c=relaxed/simple;
	bh=qRgasiIx4Sh1nFxAOtmp9CODKhgNuoeJREGMm1z40hQ=;
	h=To:Subject:From:Message-Id:Date; b=uSJihAiwkgz8XyLBJWPxrfsW8edngSyA/bhaP+PO+pV0omjXXxPu72tnY8q1NcKyA8vf0ejBWxivnKsk+8z13Yd4qruMOpgUea1SNe7WCACq5NS1l4NNafFAryN87LzXE2rrd75nawb2Ps7iYUOmpzrWNeNFod7BcawqSd9sVPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+c6uEBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+c6uEBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E59C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753363793;
	bh=qRgasiIx4Sh1nFxAOtmp9CODKhgNuoeJREGMm1z40hQ=;
	h=To:Subject:From:Date:From;
	b=O+c6uEBewriEdragglQ4ZRekOi0HAG2JXUVXHo5ock9pyoIoNiyIsjtIJZS0jw1sy
	 Ksjm5qyaF2N50At0EcGehY2oCbLr5I//EnwuSqlk9UdFxh2WJEX9LiGLAAj6sO++/W
	 bCqR7VzSBN3VtwjVRR7BzOY4v78Zwa3wy+O6S0To7WcoH/u1/hHgnKBC0czr8RjbMN
	 r+GsYNzQy1hU9fbOJ4DEwxBx76wzG/Q15IocgIawFGjynjVX++eLyA26YanJaA+uIq
	 jH/0Wtr1hlIO39xOSj03AYA1M3Q0KtNrWdggwrPmy0RLztDG+SdBlXlq7a4Z/C/1I2
	 GSlmVWZaT+yHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A95C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336379358.27438.4200703527833920811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5976d8fd8eed0d23b08e93dd6f82dde4c7b5208504594a0734bcdb85771b0b2c
Date: Thu, 24 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753363793
