Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3C2EED8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757905194; cv=none; b=d1XTvzZzv5+mPsNX+edOjK3YmQ3Wk9PVJvi08jY4nYr5hy64KUI5go+cUEyMy9vrP3tqy6+UIWgtNB4xdcQDqNokNSIyfupSIuxC0UTwqREYm0jvFDHChzH2WLoZWELn92p102sbwv6xQDBNsZNLIC29iaM4LmhnYalsl5BlTaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757905194; c=relaxed/simple;
	bh=c1clmjUprRGwYl1IgrHi5abtShIwbAclSGtYfhU5oM8=;
	h=To:Subject:From:Message-Id:Date; b=jQ6aJayBgAk2qmOZJ1eApFe6ROm4AhfSGBntu7kofFBfM1hji5skmx4j0Q1Bn9vZLZ5//NWpG2yZ8ZBXwwraZdYdwRZ7BvJaRjVKNoXz3Oek8QQCh1N+zbe6bJGB9Bex0+Kd8vs5fAa9glsbX7Vrn98xOqipLEuYzWXkH7XxXpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbP/r0Rp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbP/r0Rp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D9C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757905193;
	bh=c1clmjUprRGwYl1IgrHi5abtShIwbAclSGtYfhU5oM8=;
	h=To:Subject:From:Date:From;
	b=KbP/r0Rp9tX+y2dsCw8K5j7e7A5aZ4WJHa6M9fQkion89A0s+VynsVlvMytdascbe
	 1TH5t0ZiZ5o92gOVcmbSq1VqWZ9WC8DTtBXhtOYo/qxsONVvkyHhZ/P7nX6G3W3JBm
	 EHlgZHWy9/2L5Ft+685nKiQkVrmR1pyjZeGUCI8P2ca5Nxk8fJLcOCnGo8ASh2FIXW
	 OK2WxDZjhLuZRX2dq/GBAE0391vCq3I6ht5nMzfXp3QmuCzniQOiPIvPbcgQCX5oqi
	 V5gmCaNPtYierroQ2RsT82nNfNy7/M3tix2Y1u97PLW86mXBa+o5NPRfqcIhYGjlCj
	 E8Qe6sxZ6EMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BCBCA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790519357.16746.6739306101120106369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c897607f9e2498fe236aa1da9859125712f77c7a99fea4e0f809cf2d966c916
Date: Mon, 15 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757905193
