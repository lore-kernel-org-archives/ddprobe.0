Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233EF1758B
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768100634; cv=none; b=sdqBJdsKyIf8zMXkUBrZADd+vtWhF/VZIWs0iK+a6MnlXu0v5GYB+jUcmBO/EMKR48jB0MS4F7d1EZSV3PND62ujdwt8sn4MZxus7geDVW+YYlgfEW3+0qQl+bE5NgP+f+Gz8MzB9M6OY/u7Ah2J+fC0kZ8j3BckVOktQy26G58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768100634; c=relaxed/simple;
	bh=4ZtIUjJPVWgmx+A2+2E1nnovv4eTpKIcG7xdSUlbLDQ=;
	h=To:Subject:From:Message-Id:Date; b=NA1SYf7glyadOonqteexWq9f+EJixyi/8hoSHHqqqJ76CdRj7RIubnHdwnbfZFmlyhqMV11ZhUgaHBU6b+iD5KHLYjhQ0OFH15fwwQxh5NyzEL2pG5DdujlOjm0FrrEVi6+sTYfBdAmrdFN1magFnhtEWYvYdhXnRslf81GR4nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIVoK0PT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIVoK0PT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D2C116D0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768100633;
	bh=4ZtIUjJPVWgmx+A2+2E1nnovv4eTpKIcG7xdSUlbLDQ=;
	h=To:Subject:From:Date:From;
	b=XIVoK0PTJUovJ3YY0JL719hiDn8SnRH4SSIDVa0h91eCodkLVeJPwpbfQu2UcYQzz
	 PUvmKvWnP4fLqQSfz9s2rc+iq0oPisuI+Ale4DWFbYYsxPrIQN2jtE3HcsnHdJmfh7
	 SYbKO+yZ6+OfAm75ZE3bpTu+Sjjt9HsDy04sCGBG2H1MOevCLvg4UL3kRCZkzStKq6
	 rY/TOnIxFB5u32CcO29Yj3ztul5XZuwfvXYe9NCtVJR7b873uXmKsBAdSIfWUW87/y
	 oyq7u81h0uWgm44eoHWXgMuICemFVsQljGL58qob6YWmW2gyIKsEkmOmBbtbdBPRjD
	 nqJK7KKobTQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE5D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810063357.32609.15990909852054131120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd074c65baaea4dfa048d5b9f7fc4e9dcd8f50394443d32f35a02645679e226
Date: Sun, 11 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768100633
