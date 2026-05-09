Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54396278156
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778303854; cv=none; b=mwmxNPfgDLOiusYvjyy85IVCe+jd6qiEl0d2KkfhapVT3iZsOhH66ROtyTruIvCaqwOuOo+9Goa8HdSVpcIUmd+NS9DIrMlSS3hLY+qE/BsyTUsu2W9CZOV5eYZ26VijDf1Y2noeq9yWnXbOLH8j0K5UPUQ3/osYCUEywLkItp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778303854; c=relaxed/simple;
	bh=ppiu9mouDm4+9J6u2NSyCDxhg02KbEIICwvZemaDrso=;
	h=To:Subject:From:Message-Id:Date; b=FfjcQA31Tpvw+wp5jRQMp8KCktdu9vFyd4m1Q/1u3bq7esvXPiGlze6eucZ0IbPWmYuYWRVeZT1I8QR7RoYkaeObdZ/LU+NC9LNCSbBBYXpHhgmSErBMUL2Tv66YCqIerDeJxhUjcQraqHRRIsS/9tPneT6gz1rkCe/X7s4vtPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMNX+t2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMNX+t2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE401C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778303853;
	bh=ppiu9mouDm4+9J6u2NSyCDxhg02KbEIICwvZemaDrso=;
	h=To:Subject:From:Date:From;
	b=CMNX+t2XaMXIw2gcP1eMisXKrON+AAdnRmJT2c9m+PRtsTzdL+TKMSLpiLwnEGk9J
	 UM3DVHyDDOIJ0uhFT4ws56hcjdSG5QaDElhuTgrWQlKe/cZXVi+CMZOHH7HPp7lQT9
	 uuZiWRf0nWiSz/eBkfi8Hk4XaNNeZ6qcBv7DVyXofWiDsOZdvdWYU9+md234gPMKRV
	 YAY59YO6raRPIg+v08uSOdaiAltyCeCmrmIWjGyBVcC7Sw8HLNKqcXEil5oGgxCuva
	 RND60LL3WuKJgRKOU8RoxVB6A6i142cM18DPn6AOhsMf6RPtE2TTsrMpxjFbJ8lWsU
	 W2tIjnDnqT9uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8440CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830385372.19351.2129030599506635130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d28edee7c7f0b24ebf726deccc50da4675c3784091f376edd8c6d0bef7ab64
Date: Sat, 09 May 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778303853
