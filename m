Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DEA308F07
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766226834; cv=none; b=K60lA1a3YfIoGnKClG1uD6SMlDda5o6u46rSooprtBgUZtGJ4f97dk9NKmwsQfb7nxvqcnV1wfdOz4QbMASE+oDLWlr/L/jgZsZu7ky5EJEBE1NjPhGRLLVI9VCZPNVEIH9DcsG9Vr9rfCO1BTxu4Uowm5UDojO4ScS23xVslM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766226834; c=relaxed/simple;
	bh=W/+3DgL33pdLoBy88PBQS6HAu8P2wsPcixZ6xieScw8=;
	h=To:Subject:From:Message-Id:Date; b=LyiNtbJI/E+IGc70xRxMk7U6QFZvv2gLLKlGKMxykLFHx5rpWMk282yQmHR/ZKrbjYo2c+KziYhfSFyrb4B5SFz60Uzu74K0VFb3GGjHYZGobyNDstn4HU6X5HdRt1TiQNwFV3XZEz44s2CsleUgtgPoyX+D9HGzqRPsXWZWXtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJKUFNBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJKUFNBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2799C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766226833;
	bh=W/+3DgL33pdLoBy88PBQS6HAu8P2wsPcixZ6xieScw8=;
	h=To:Subject:From:Date:From;
	b=BJKUFNBoTo4M0uB0bkiQ6CE0PBx+sEZPlzeB1wHLlviFHYAg9IkcptvHd0nBzVPAi
	 8kRLkUdVajq57osop10aBp0UxSWW8SLoYLENq4MfF7v1uzf33jweJHTmqIVaxGXfxv
	 mAqaX6ajmXBRhlLb9Z5DTY4vveQYukn3vqC4hpFLG9xh9llMx843Rm5JbYbwNaI28f
	 EbJucavD3HXLSDFqQEXKjnZBucS2ckIxgWuAnl4pBv/0mcIsd6PR0Xm131aUHB1VR0
	 QWn/d9dihpC1Erscpjj//iZ88niluK8p0CofMv0Dq+dVfbpslWjwCDBS589/Sm3l/+
	 bZcxQGr1tD1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9590CD637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622683358.25915.12911897184265777082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7633e40908477ca9fbf05a3dce3dfd826494cd3b7a9ff427cbe2a5ddc11cbfca
Date: Sat, 20 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766226833
