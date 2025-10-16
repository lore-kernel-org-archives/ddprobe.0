Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352A0242D95
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760653194; cv=none; b=bqMEEUHEncg7XnRLh32VPHsjHMTH3clfcg+hzS1MEcKPmdi79ozMcuWeQ97kkxGPTSTSyBhF0LN8xv+K0H3jx0hLnc1eOJlUACPUXW6MdCErDt5epFc3n0FW4KDA3lYzV/a+S80Nftyt0S63cDyNcGwg3B/kHV219aNcdnc7lmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760653194; c=relaxed/simple;
	bh=DulshIws0DA5nJrSp2uZKjrHlNkgTC5RY0ypSwyJLMY=;
	h=To:Subject:From:Message-Id:Date; b=ISJgsnLzf46NoHaZMFJthMpYe4uEUjyRMQZCNaOikDd6rp6ldQndPYuxStHOIUJoQrC5Gqh86/b5PSb5gnOKlWZGv1QJSSusY4aa3h040J+oRfCuaBr+6155vlr+r3tQZyrsCqVNOOXX+tALSqGJDRwERc1ozW4zrsV6+pYRE54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9noeno1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9noeno1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4EBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760653193;
	bh=DulshIws0DA5nJrSp2uZKjrHlNkgTC5RY0ypSwyJLMY=;
	h=To:Subject:From:Date:From;
	b=X9noeno1pJ9BuSpAd4cjL4XBzWHeSgP3do8pLlCXTuYYPKYnI99XaFt0mXLI9FU/W
	 YgNW+pyNzEyy9Yy8jRhc38SK6BuiwpChgdxBjJGAsvOGcklOisQBGF5M2sIQBWgDA5
	 NMtNvkkwvS7YiF639DQw1xG52sZFeF4vXr1Zph0m2nkYUL2fHhWM/5KhXeN77B63rw
	 vjRQeyhrA4pP4Z7FQvAUseG/gG6f2lsbywN42UbpMZNbwZ1w7bnMTjekbFuHaDpxVu
	 eqjgScSQz8f7ouwPRdMc91DL68L+I8QqqHsnEldb1KhArDGIgxYjwUOJiVRfhAvbUr
	 tjO6AN7xWZpTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B2CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065319358.11278.4193733632780478416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b467534c18cb900c763842b262f56f6d518b53b5d453ee6d6605a76acc174f5b
Date: Thu, 16 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760653193
