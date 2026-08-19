Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759262857F0
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787150434; cv=none; b=TiaxFlM2VgyiPswdzuTRGSDwNlVAwvi85FLgJQwfglgoB/A9NotpigxPQrMwyieNhrF3wjdYCljRwMF3I6zull4z5LG4m9XvocX7WEgtyjQIEs4nNswgf8ARYNA6rVn/STt+cs+XLald2X5C7M5xLUSWrFugrH5+G+P/bFb+AK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787150434; c=relaxed/simple;
	bh=VyS3sPG3PXEfdBHempB6IWdUE8Gl+PUYYikK+YIV6Es=;
	h=To:Subject:From:Message-Id:Date; b=kWgR/AY8DFxdGmlMlbqZ7kl3+Fr2nFtkTa8qyqAZL9lJ1Ejo9pTVpqnbyM3bjqyQpL05yIAF83NsNp3xNCnzAPQjFNJArYN2UYm7bG58vi7AsIIdDdpZOTDn87zffmPa3Vuz+YAd9UoiruRawWz93G5cRBXRzyCd+/Ie/x1YhUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNDTiNeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNDTiNeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01A01C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787150434;
	bh=VyS3sPG3PXEfdBHempB6IWdUE8Gl+PUYYikK+YIV6Es=;
	h=To:Subject:From:Date:From;
	b=eNDTiNeMP6YgGd8P5PI/L9SGJa2RcjkaemgCYi5z8Q41RCVdHGkqcBydZXHEjPQTC
	 9g+eZw/EFHcvv9ibjPGBb7MyAhR3xu63MVp5tgCCN7FLnYkuaq/IgoiNypn1I/XjHv
	 sR9rXkvbyJpIR7f/pOiNeV2R/1UXmH0mIuhjXR2rxik6z4XOuSuTa83j0H4+eb9rZr
	 p60TWeyc8KRzDL57lTY6y9xfmWslobDtuBbnlA7bCVL4oXxeOnBjxG20wdaD8l8T8f
	 O9bzAYa7c/adTToYZrOMtNerkNNLQcR0MKFmyNgLin8UyfxE8ZJX+yz3eQsqa7o42V
	 wLuhIzeSqnJlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AEEC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715043379.5367.1259006510766000634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55b8815297e8473b995bfdb548398009418d2374455472692a60fa86d4386e0
Date: Wed, 19 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787150433
