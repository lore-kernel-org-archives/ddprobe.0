Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2337B221F24
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777799254; cv=none; b=nC4H5emfZSOtcaCsISqosSQg7ANQh3pBqkONRCEgKj9cY8dJb02NNbuy87FqkZ4bhUVwVEdGlRg31doEl2V+8fw9i8kfX8WVsMw7xtvkmWIE81WGN/0FlmF88YWaTGdRQN8+I022u0VOaAiYJQFkFRFyz323Hje/4j973VGHHnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777799254; c=relaxed/simple;
	bh=xbEXSRLuCgF4BxCIalP8xzOvU9jj9UHfgik9NKwHjks=;
	h=To:Subject:From:Message-Id:Date; b=Zhz3hULP+hIR0uEFiri+fTsiYzzObFVETYYAvF5rIN1uleqwaoYtsAIGb0nFOMRvQb729eGVFPr0aUYRHvU26R/GBeLrdXT5SkzjosR40tMC2F+hXwjPMvmb8zWNH/+outFQDsrnglyxKeeHdW6NlJWyx1yfcMoojL/RcP7k7sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gwi5uv1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gwi5uv1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C102EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777799253;
	bh=xbEXSRLuCgF4BxCIalP8xzOvU9jj9UHfgik9NKwHjks=;
	h=To:Subject:From:Date:From;
	b=Gwi5uv1IJIeX8lNo16IN20NBiIhVmEVzdnaKlveIaTI0x4xw11AB80DIVGT/3kEQL
	 MzZx1WqEDA6TtN7Hl5+MWlUmqRJ0DC9hWMYCxSc+3uC4Zhf4O3lwDF+BUTE56/rVxc
	 arBnNVTSq54ivxf33jPKr4EgtwzLdBTWQFwfcrt8gCFYNOnZB0A1XIU7mMfTbqnd74
	 Uah5pC82qDXu+S6yscelGuUtND3gVQ0OQmHEoZbQmaBJTGQvYM8YqfbBbfsCORh5eW
	 1A4KVXfSSVZsCN4zUbQJNcolxBYu7osPMSCtzH46ldIy5QnlDAzVzFTezo+4YCTj1o
	 QbPpgxkrMQagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD04FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779925368.26801.7411111353415586793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e562eee783072058438037426e883b2fcac83e50648b0135805505f8eb6e869
Date: Sun, 03 May 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777799253
