Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83C1368297
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773585893; cv=none; b=uA5D9DQ6tcayC27YWx7saqQbCTEd4ppfXgSSeB8luxiwfi2ubw6tjS1KcM9bksyb9dY2BWUIJMSy8hwHVRDhcRYZufWPrrlqv9jcA+q4X1ul14qmZ7QX+DpAlA+xLkOCw2P9V92yBw7WpnTzLVXCmap5ZVZL3fTk/tQ4BMjOIKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773585893; c=relaxed/simple;
	bh=avDNTLeTRavJdSbyYE+tJO1ampEryWXBKVgmpUZVp9U=;
	h=To:Subject:From:Message-Id:Date; b=bCJ+GQzhkkIveclCJYHglfDgOMcEkndy995jPAIp3eqIoa/SuwYM2xf4iqKFg++hz+MN5w3SWpVsfkxTV/J2Ug0AvvBWjlRBNdf45GagTFxLid2+HzAJKZsLPOMWj6w415yVdV8oLL7HlPUMfO+09KrIN8B1khs2aLsY82JxMiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4DBRZx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4DBRZx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDBFC19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773585893;
	bh=avDNTLeTRavJdSbyYE+tJO1ampEryWXBKVgmpUZVp9U=;
	h=To:Subject:From:Date:From;
	b=e4DBRZx64OxuoAQi93RVS35YZ/Ik4FEuXxTD7PWofg9lFme1QXRNVYGY8f9sJN9Kl
	 kekRe5165shG/wUoJFLMBtH6NUz/CvsPuSVLjtPyEoKpsxu9hs9R20NZCdqtHaFdbr
	 ZBHRhyxPjjIPnP4CVJGvb2WRIR7gs++U9+XQXiG9EFZ9TIjhp3nTvMod9fVctom2nu
	 jg0/Vh0XUbYfurydjYTmjXHDdsN38yd63TkJo5RB8GIgssQxNMQgQ3h6/Mq6aa0Ef6
	 iyNFAk49kAGLhXtxAi6JYXyCuTVEkiXimZSm7tufPPVtZK5L18w6oT2NevnK+G/6j/
	 gOisUpvixfDKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9FF30271
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358589357.5644.9372868474605315565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a53e85bb2eb1ea02c1721e10181f18921943919e60034560b7461192579f88
Date: Sun, 15 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773585893
