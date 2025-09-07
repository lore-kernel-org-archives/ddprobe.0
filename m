Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCBE259C98
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757242194; cv=none; b=O1CUoqGmTVrklKUnGYh8xBGXZ0PrGD8Q2Iiwp3xKtUSESbCORAx/wJmrQ7AZQawhlsjvh471hmP21OFv3/VdBkFoVsbIhVgRuQ2VWBv+oJRBjj5+ov4y32UcYQBRME2kOGpYy3OMH73QY8am3o0+mSWx5EgMZVSrcn6mA2OKdZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757242194; c=relaxed/simple;
	bh=NkjLQhncaqAHZntkZLYZ/xp/EtcHa4o07QNzictBtrY=;
	h=To:Subject:From:Message-Id:Date; b=CR+sSgVD9pzp7i22B+9kyYIo3UTPt0R3x0nhk/hekSbRCKb5p6FLorjyIY5rbGCuE/csZ47DVJZA7GtfMVurlJlY6gOHT7sYdKd/YYM5Sm8o9XBsxLyFhE+ylgrzghBfV+/K7mr8pBb5xOIR0CgdrBG6un3BBVZrDjKRtVgsMmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6oN06F5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6oN06F5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59A6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757242193;
	bh=NkjLQhncaqAHZntkZLYZ/xp/EtcHa4o07QNzictBtrY=;
	h=To:Subject:From:Date:From;
	b=T6oN06F5FtCj/uPKMYn5IJPCA82sLRe42jT6IdMKBpyD5jvbHHfoWQ5G9ALw0h1cR
	 4Om4xqAOWK/2d57JVkEvahS5ek/HArFYkG3gpJRMWAIhH8/RZsqGNDFakhTkfcHCP7
	 /sOXuFPB8MTcPXq0qRSUIVybr6GUoGeQddUCtE1ikpAZKQ6Pm7CdW0iU4A+34REBkL
	 mmmAjJuOdYeJqQAFfzdEJZcV8zPCC2vbPsrb+JO+d5Jb0AL8PBYOb4RGP8dja0hUkJ
	 WGXtc5fP3slGJDVx+3+i8SciOmIzMoDSZ/7EHKWRQw3c7Dm8z6gVCalhE1rJtkTkDz
	 GD9vOlw2uYIpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6DCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724219357.4371.11266469682589224817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f3ef73a909c4ff05400afb4c51bb7f8a7d823f532efe15d94c6744fa94db2c
Date: Sun, 07 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757242193
