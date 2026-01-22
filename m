Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C0038758B
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769109236; cv=none; b=Wlm2wmHK6OH3KKQSp3GXgHOdhyOUg4vp2Ws05fn7qsWn2I6rDTK39PzvOnX/HrISBlLFPjSlmk7hKLv8BdnRIiXrY5mtkBiQz9XpOzp4+3J7UOXoGzJk1TLtKIKaoTU7oHUFs16hZFH/jEKA6U9IYjcl0rr4uu4aOyNwZeZToiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769109236; c=relaxed/simple;
	bh=OBFPKxnV2n5R0PXrcVPvfP0c9UvAThfsToAImh7ybMI=;
	h=To:Subject:From:Message-Id:Date; b=nZ3ghUydTADPQdYRk0EERncehB2lKRMGVCgOKOvuO84jmHNXydGs+8hqzFQobZc6tYoGHhmv2ywHUDTtQBvpo48Vynh7y2JP3lSHDQHl4I1oHa+uCMJcF3ikTYOW93xd07q8vaAb3V6xe3VaruElIS0qGTdUM9N0L7C3r/2+ydg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2TWixmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2TWixmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01D0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769109233;
	bh=OBFPKxnV2n5R0PXrcVPvfP0c9UvAThfsToAImh7ybMI=;
	h=To:Subject:From:Date:From;
	b=Q2TWixmDToDaCWK+XKNU/fsJPRcM6Vts6I85F9lG9cECSFKr65t/iu0fkYH/HgGcp
	 gaNRyfT+4REjDGem1CDNtXY2vk+/OlfOfq3hlyHgaxy27Ca0gVqFCUhbTeMB6/AclR
	 Gk7NgqEQUQ0ANQskK2MPojHn1uy+ICoFviyGNSo1+15ZDI2n2SryrBZrvUktCSLuUc
	 jbq+SMjqT6UiD4ARBm4wApdcCrSCJOh1ng1cGl/qhtFhjU6G+QaR0V5jTfgrbVp+HF
	 7o50l6bpkrJHhsKpc5ty4SccreTzgl20FYZv0eGWsPi1kNkqOtS2OtHF+g7QFipsa7
	 3RVRyneDTMkPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E67D6CFA3
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910923358.6633.13683413551652002898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2462f3253e467a01c6ce67fc7178bdc4f7d2dda8c3a2825d5764b793767c87b0
Date: Thu, 22 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769109233
