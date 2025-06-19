Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E27207669
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750319394; cv=none; b=IFrJHOdmh9lgn82oiNPrrfds7eggqamEkkrSbsxyVJszNsR/sncF1EUrEPyMkdzj3rkXhmsMx7xIxXZDri+sRXcohx9+qW0lAgBDUDsk6ST2fFMT9+q6zHsivz5uh9n+p5d1ErPbAqI+LNatt36ZHsI+d/fx+aRmZWcVaNdPvdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750319394; c=relaxed/simple;
	bh=C6bcpIvQ0Hft+Bd/KyGArwnHUSId2NpJYk3t5FbWLqI=;
	h=To:Subject:From:Message-Id:Date; b=GlIpdfx2bCC9KiIYi5w+b/mL+v7vuQ4RLLrzuUPIBY6N6PpPQq3u1f7zminzkd+Rd4J2mkBzRAg8o8o7zIp0oNs362qfcJ9nNw001ZNLNfb8go6URliY3VYseIZEhSRMIxDu7K9Q/mBgwFeq3cNDGkMQJOtm2753Pr9/HE4FOr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TufV2T0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TufV2T0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B91C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750319393;
	bh=C6bcpIvQ0Hft+Bd/KyGArwnHUSId2NpJYk3t5FbWLqI=;
	h=To:Subject:From:Date:From;
	b=TufV2T0FfacZDOoSO/dnYXqrIe7G35DUlBi4QgFZQd/v7O1yMAG5dsyoJ5pyVbn58
	 n81XADUMf0l07WeuSD+F8yS0ow7dv07374qY4OhhbM/eHMGIIu8WKsGRDQHxkCjFdY
	 4DHuduvdwR5paPVYuGYB7XNhUmXVp4XCnt1LB1ilKH9xlLJm9MS2ZB7ErRGBGWChvg
	 uHJaoDwPzXemEAaC6OP86TYhwxK5kFSUgsoQuiBZykMHhG5fsbSszpxhkQZrjHdt5g
	 MxQDP08/SIjHyZKPPLOlvhZBSp70MN/5PLRfBzR+a2mniwVVPeLZX6EGVIlAyAUeCm
	 tx87avFShOK+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA8C7115E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031939359.6378.7394028613904028901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4482eae98bafa22b88e43809669c0b490e9e02c93fb4ec4cfb3f00d3411bb6b0
Date: Thu, 19 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750319393
