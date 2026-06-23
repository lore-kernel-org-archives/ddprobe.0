Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D95237883E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782255394; cv=none; b=F1Mo1xgaEDO/fLUnPuayQYmjhr4zmJ2WlmsOVkanRsUbz1mZVduirb0rAtNbtrSPoTjZFBWPyClu3Hb/RXJ1QKCANRhQRwHVLsjtCtUGbF5CDHUpDvOgpl6vq0m1kSy0vGxLEDFma2+4JRfSD7Kk5o85Ux1jpnSlxk2UWFVS8WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782255394; c=relaxed/simple;
	bh=KTSTrUmlOTnKZvFftVey7e2vqqGTspGg38vO1W80lek=;
	h=To:Subject:From:Message-Id:Date; b=mDUBz/WFLmvTWbS7yhBCqkevCW9O5G0Lmxgsz5RdDRlALS4y9b9Np4gSv7SzhkRNgUTVNpMuBLNUVg6Z2+sOjbtKFGT6+0PIucMpWD/zqtvoGxiivPCsbrOi4hOw4UvzzI2DV/gak2BLjghgnkQc2PIVr82uU0sdi7pZmFOhc4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+of7vHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+of7vHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C239FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782255393;
	bh=KTSTrUmlOTnKZvFftVey7e2vqqGTspGg38vO1W80lek=;
	h=To:Subject:From:Date:From;
	b=N+of7vHE2yTPjQ2msGEZOBZ3q9bbU7/gUr7NIHJpuzgbTtogvtidj34sEbrR8mBQQ
	 v3W/lwC+z3vooT7yqbvYec6WFVSz/V+RZYqbHW9guHEVcIYO8jUjn2XNGRpRlcZ+yv
	 wVzx0snkWVRJqsol6LhxTIy36eBpuZuyzgPD+CDyWLyRWMxcoX+xc7BJS+c89QrdXW
	 meSPTHzi093zzdnbhR+kFIHgXwd5paR8sXmgLL+CqH7y9dosyogVPPQF2vIL/vi/2O
	 EE35rbqI9amSOqsG5n0lBNTz9cHhcVXDC0Yz0ssHRBjwh0qXyTMXQKyQ+xR1ptn/wz
	 TpYmDW2IQWsQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C73CDB47C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225539368.14508.2699897681613489594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24782ff6e3b7d22f8f285686d76c066737467f94741419e1550bdbe3a56c7ada
Date: Tue, 23 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782255393
