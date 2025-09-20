Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138131F03D9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758385194; cv=none; b=FTgqR/3fd/k4kqIfcTf8I9VykCDVvR00mRLnLIogAjiIQRaELCTvYN5b3Vit+A5JcZ8VRT+nOpmZrOrSX3l7yoP4NgF7ljK9l/W2RzxwP6FjuGspmDQJyt/v6R5AMUOcFLXLCbZSMPEOMFbiHFuAXCSJHCnYsXFKUNPce5hQCHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758385194; c=relaxed/simple;
	bh=goz9HgEMyrwmJ8IjjIGnBaE9aBPAFogMRGObGeeifFs=;
	h=To:Subject:From:Message-Id:Date; b=kPNGqyVp2WN/wrAd6iUktY2PCIhAnyGcs2epTPZAgfrNU4Jc5xsnsnZJI7axG944CRFYmY/2B/nXXUxmQsbUhrwBayVWUNSCHx7x+uN6vuZazTtG/Q0m+mvW3CJPBGWxG6QC8wmD8kQ/JrRd0MIZUntDDfm1o71TWUxk/08oGFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thNi3yfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thNi3yfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758385193;
	bh=goz9HgEMyrwmJ8IjjIGnBaE9aBPAFogMRGObGeeifFs=;
	h=To:Subject:From:Date:From;
	b=thNi3yfPnwSGpJL2aJt37VByWx61A6CIp4v9o2pMAeU4jks2N6rByoA2qjkiWHeN+
	 owmPeHUj92T8KvXTz4uZu447rD7nprW34zJGRT++S5c4+YHOLmaBJ5lzVlKd1+o+QC
	 +6tkDhuMaW/1w1QFjaARVDKDtoqyAUeT8EkxR4p/JPAUgYnAIK4uEOzdMIy0UJV1HD
	 04XkJtXYP38FI0GXZiW0S5c5jVLs/rqhurdhSxpMuuIRX9+2mKv/z01nU5albQQJ5S
	 2B/FfxY8H9dyo82UWWxUlWiqipOtLxhs+myIUaLQb+pprPN10mSyaTcZ8SfKShjKhw
	 LlxC+lKPYhQwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92969CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838519357.9886.2177279684928540280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0090111153ccb9ba311dbda7638280e9b6771d0bbde794e4ddd09fb700e9acec
Date: Sat, 20 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758385193
