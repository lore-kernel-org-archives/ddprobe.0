Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2507131715D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775985454; cv=none; b=BFbOH2PLCaSE2FJE++OIzZL2ZZG9hrBBw0bQsxiOT0O2hw5/NfzMMzZQqNFGK9wn+vwAHefkw6eZO+z0iRtLC5OItdojKoAic7WEarKWrrTjCx4ylPR+/DNe8KunKG0o663CqSfUXFovSSfzU1ZxV37tZHigfSXaBqsnh9tJI4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775985454; c=relaxed/simple;
	bh=xrhQBCM/BjB8+f5W3dnS/TibSlP75kATgy4hejWOgyY=;
	h=To:Subject:From:Message-Id:Date; b=CevCGJTm9iCCOoGh+XmuVABOcnL/ZHyMWjuuQfSEPQutrKQ2Vtq4G+yl30pqiLxnUkhHdyn8r7TLBKXZg6PX4NCrknmNLo8/qy5W6ql279kFY5iwHHpfHKigBtWxUJ+cKSHAHmSJ10YeKn9jmVnpueS6IMv/hENFbnY6jfjELVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntA9qJsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntA9qJsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C26C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775985453;
	bh=xrhQBCM/BjB8+f5W3dnS/TibSlP75kATgy4hejWOgyY=;
	h=To:Subject:From:Date:From;
	b=ntA9qJsNSd+42LPAdAinXaBdN133FZHj/E54eGJJkiQvNLrgAlC9q1G9RohhGla6q
	 hF6itAoHsKZq5A6pmwUm4NEOhLv/ifkRIDOeKrttE5Iw/Nc+IoMxQMoIMk1n8AA+CV
	 8nBZDa6uTKz9kmFNXYypVHmzFdYOZCh3qs1g+53Vp5bhHkqdZBcwFCdspofmM7HN6y
	 XBH4dVQ/kbD5RJeWpkKYvp2vkAosPTzYvbxbl7JVfQAScXg8Icff6LQsAK2XFjFASe
	 udxeP0VoGSXzN7wPhvWJmSdpGV/4ox3uHajQySU/2ud0im4wIDYC5g28E6TPqt5lm6
	 YSddvhWRtxlWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE112F3ED6E
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598545370.22500.3170010865154646814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff290572aa269b080aea64ffe68d1aaee043d9903a450b8cbee566df2748a10
Date: Sun, 12 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775985453
