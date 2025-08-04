Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACC315539A
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754291994; cv=none; b=p5z4hKH4aW2FVRK85+PN16lWHusuzoUFgz9nBMx27k635rkRU/9yUJFkLFuA14Sxb2BK8a+nCc0BTGL8R6bcEBYisFAwvI963e2oJWxvtPAvXAi/sOJwERzfnZtyxgOjVuHun+mguuyua3XOCdFhI9Bm5NfuZyGcQgzxAQGhk2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754291994; c=relaxed/simple;
	bh=1676QGX27UHz+Xfjt1zqpBy02qaYPK/f3boMOTdRb14=;
	h=To:Subject:From:Message-Id:Date; b=rB4393zKV5LK8FHeMPT7xRlveUc4jNVEYpRIdS3QKNDEY+9iOMEOPWMTBzSwskA172eJ1u6mpQ0mHVHuKSIWQCCzhS35zh2tGK66Yu/TiiDATxOjJgnglQgxdeN68e5re//wdNl1QUCN9QPQzK4ALpm4b4jYThDJuoDXqxhmn7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCuCq+2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCuCq+2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D53C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754291993;
	bh=1676QGX27UHz+Xfjt1zqpBy02qaYPK/f3boMOTdRb14=;
	h=To:Subject:From:Date:From;
	b=DCuCq+2o6voVgD2DFcOWskvfANHtrGWJQsQF9L04VuPoRnOEoIk0kpLzUWM7eXx2/
	 fzdPeAmDwlkW3YlWS13NXpPJiZ27BZ46lb0EmFFclMwuz1peTr4Ls6WDnOlKrOg4wc
	 neFPO+/TES7Po99Q8k+UpAwUb0NmnDJMAT563/GFvy4AeuVApWA+4NLEU1IY1BioF8
	 zuYvSrJax3ToGA8W3376BZOBCEHAUyz5SoT+dRFJvKkT5cq0DFbzGDQgLgk/lCFk2j
	 dG47Vu35SQXjsTafZWn62zyQmJpHmmsMGNsGlF/ljZRFnvBkWOD2eiGNdkcG65dMt/
	 Q/xOmcrr+HIVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DAEC87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429199358.21336.8413252345247268285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baac25298bfcb97bc65dd123d47ae0b3e20a11f18185769abfb4f9dbc0eb7214
Date: Mon, 04 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754291993
