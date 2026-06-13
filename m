Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8FF8BE9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781339194; cv=none; b=FWWfNoZb2ruZJEjwPzS6tMbFtU1ke0C+Ln3lWKVPv6xKKV+1oYayB561KyGd+VYmH9FZJ4zW86YSq9tMbnimxQXQ1B9D9kVAGzQyJFpEkRCVmsTV84+wO0SS5vg97nbuQ6k6yFHtcBWTaYj6iGLbG98zGMcs9r2MgJqOIJYIFCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781339194; c=relaxed/simple;
	bh=Up7N+G/xVvT7WLRKdG3glrPTjocxv/WEAM+NcnaqCP4=;
	h=To:Subject:From:Message-Id:Date; b=C3vSFMdaA4MrtLybLsyXBRHD75Lpv3jBRMg4znHRoJYxbfYOJajjroV9vXRb8lXCWGb+8Qf6Y/HGynPijSnnRwaMjLqhlW2HlK62Vmp9fIXc885aJYxf8H2egK+PgpfIToadBLWSk0RNUqjJsvZdP8CcedXZTTqz90iOsMbxyyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWzsL/uF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWzsL/uF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6889C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781339193;
	bh=Up7N+G/xVvT7WLRKdG3glrPTjocxv/WEAM+NcnaqCP4=;
	h=To:Subject:From:Date:From;
	b=kWzsL/uF+AsDLOTxN8uT2hqbLc3e0LYb1CN0s040r++zEpgWo7BjHxiC87RTsiimZ
	 +doXeAY8hyhFaLibUkT2hzpvAtmCPt+2IPlrKnLoE16c0Y/G/NBP0awBVW5TEmAdsZ
	 6PBaNOCWT9VF4CBZFPYqlCXbaqCOGkycbFy74nW8nXGsS69z8orEpvOtD4RmepDnfY
	 zl8gtsy8NmnTqmcGNL2qV0Tf7DbkFrM/efqITiZzGiUf5OTPiGvP0/KznfzWcbNeYb
	 z8AK9mI65Nc2J70wdfY3sBfFYLlo1yArx0uFJBLvjmHuQnKoknb0PloX3U6bbP1Eld
	 MfF2JnmrfGe/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE16CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133919368.21666.4972740452511974526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39fa8e036c38e807a74ced71d55f5df96003c7cf2716842965ccfa31e4e28b5
Date: Sat, 13 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781339193
