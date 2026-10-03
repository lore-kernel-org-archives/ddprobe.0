Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5717A1F91F6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790994034; cv=none; b=W7qPTlL5E6KMY7TLYKc87WttTct+pkHqt1Y8816DYH5ugyg2TFbgsJhtIZMA5ftB/EmnwOhTrnFAU1ezD/4AfyBIjtdMEVEHqPLhpSyJxZJeTMqfSCmGkis4Nxzepjiuv/u8sJiGKfmdUAD7WCfVrZpIlBGFEY60Fbe4e8lP3Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790994034; c=relaxed/simple;
	bh=yvUfihk9JocQu2H+ZapnkRN41D9GZDdhTg0pFTZWv1o=;
	h=To:Subject:From:Message-Id:Date; b=hvW1jFQjwtbLuN2GBFJi9SySqyYnuYbPwnr3WLhIv6LkkRgN326Tr7Y2CnVeY38j2VbSbBFX/4jOYdgIqDll7tPYWNERuUodWwWN8WWaaRbwApzRx5Es8RcI25f8PfPOsGnezqOlbxwgQ+k87lXwkU+mEwflqjMKKFmR2Tx50N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxt/cU0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxt/cU0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17F7C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790994033;
	bh=yvUfihk9JocQu2H+ZapnkRN41D9GZDdhTg0pFTZWv1o=;
	h=To:Subject:From:Date:From;
	b=jxt/cU0dTamnLiLcjZIXJcw1135h7SyBUNL9+Cwq2WkJXKBYx0AFshz00K3LREe9v
	 da0ezxCnZiz6FdXzrg5qR86i+w5kwXue1gE5wDl8koixaio6Z6fQfNYKO/vJP0+TK1
	 xbH4/hQpKTPY/rAbOjNvUx3keA5TK6y9xoX1OLNKn9NizRoJGV5xGr3MkP2ZSZDjJM
	 kIdmuWkQ03o3Xe5RsW/XA4TRCComJZ9JQduB+QDr+XAyz+omKW9rdRKuS0W2W5mVCa
	 mHiJhrmTkTJFE4RgUMUkG9rU6s56ohr2l2DLUCk5GSbBTWBTVhglUEk8k2ueDtcc7/
	 ZU/G2SKB/FQQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF826CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099403368.29942.4496118381860801629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d484513c1e1ceb3ebcb672ed26a8ca0cfbf446230a0085089cbbd12c3211a7ff
Date: Sat, 03 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790994033
