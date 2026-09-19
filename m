Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FD428DB54
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789837834; cv=none; b=iqz9Fwazyos3jCKFENxKIA2TdNS4RcWoQFkgdNjkqcpD14BM/6GKu276KlNV8Jcr53NszDxmKn2ZTbcjXdKznaJo5pr5+3vRhqFJqV8z6WSpSsEDE/nKu1jUm2mYaLVKNT38wAyDSHU3skh4Yt/Ra2gCWbbbmjBuqDT0+ySW8pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789837834; c=relaxed/simple;
	bh=kbxM4N2TgCe5TxNB4uwl+Cm9PJ4R6ET30lFyACm/XYU=;
	h=To:Subject:From:Message-Id:Date; b=awtaKPm5huWSb6fFO49rcoEVR8+exaIr8k9BLN6RYkJWMbVF1m3R4MTBbn3OOuN0lrRHwqRpqDbT5yiPIZJbRfKMey49hDbLAP+LiKEsyXmKxNpuQAeflRB8Mf8GpJishlbSyzT6qpgjS8DtN/pCtcWJKp1o4t+wGSPutQ1bPpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPo9xGTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPo9xGTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB5FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789837833;
	bh=kbxM4N2TgCe5TxNB4uwl+Cm9PJ4R6ET30lFyACm/XYU=;
	h=To:Subject:From:Date:From;
	b=UPo9xGTLt4QGIPwRg2HU5gSRAUZI9UoVuqte2Pll8J7WaT86T1GLe4wuqvaslS/VG
	 R71+mwc00osVId7SxoqodGFCAddY8r/jbofosE1neF8G69ghz/gRt7YKgHlgtwO6FG
	 fKG9c1SztVTP7HqXOLVUVSlUCakxUU70piJnZIs7UWpZQ+TzGMSgpJBo6ok/efh0Se
	 cyRroPzVEPvDEFDmVhpaepQuVy/zXCxjRzFmmFC1EGew6JN2UrQQo/d3sXmVcpfrQX
	 0rLLNP8w7ZzYOUzNHobiSd5ohy9wmIPorySKSIlkbFedbFatzLDPAAFqCl9kIkSvN0
	 28ACbKvLDCR2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9717C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983783368.22107.4731786601681528969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82e3ca574032dcbc7f960c083f4b5136a1dde359cca1f32f210ffa0ddc57a6f
Date: Sat, 19 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789837833
