Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5CB51475C
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788864634; cv=none; b=UZ9UHuOv7VN12QCHtjOxaiKH2KCCgkLOZCoakym9Bm8cE8HA+JQyknthlVoZ2O2FFRFqsQLtmLpnc+NaTFOEwtbCtwXa4WWF1dApsnHLBt2tcRWCTxj3hnpNxyspMsL/FRqd8oiBQ44BtKXJsNLk8N3UZGiKw1hLxHy2/OoMe/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788864634; c=relaxed/simple;
	bh=GDrQnn9anWa4HQeHlSV6+o6/jn3W8aO8UdWwdGk30G8=;
	h=To:Subject:From:Message-Id:Date; b=PPGloUxPOju9uGnsb6Nmi9opsSXPoPNV1AQmJR3V6tPD15QicLHqmd+lmok6O+guus8ODL/zmQzXOyOSQDgFhejjwnAiYCBy4aVjuwvIzl4zgsJOQoHUb5qq8eqZF2soK90vEhlsHUF7ulrIkBy4CMeFyznVyMhynnSI2y9yef4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwhfCkrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwhfCkrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF60C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788864633;
	bh=GDrQnn9anWa4HQeHlSV6+o6/jn3W8aO8UdWwdGk30G8=;
	h=To:Subject:From:Date:From;
	b=CwhfCkrze5/1aloxWkwQGCBJCHzjLTvWkrrB+GNH7ukIPZ1PbMHMvWgosFoLkbg9/
	 dje+g3vCv6Cssro9igPmqUrXqTosxd6h2lb7ulcz88G1pLMYTcT4v97WLNnW+C92ES
	 DEQEm3T6vwb79NKj6NYEu+fUZWXuYexDSQOo3F5D9Vs2QFIB0okeCccfQC60Gm0fBL
	 hyfBMn4+N//GPpdqElgYSQM4WSZLBWNIhAWelUQtR1+nes/5V1XTKgJhLzJD73xp+H
	 BqQj1u6DXWlCiBd+17X9axR/UG4g9Dt8NyBSkNl74XUTsb671BbGFx1WDYTxHmOpbK
	 U+NJ1YtTqg3sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DCFC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886463373.18488.15290200757246569166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9986ad78fdf6da3a8de6a207f4c0ff8ff6baab0ce9c83994e1fd219fa992c46
Date: Tue, 08 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788864633
