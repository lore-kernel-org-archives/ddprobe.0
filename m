Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B20185B56
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731009354; cv=none; b=uHpLOboyJUABhtiSA7AupL9RO64J46fK77xxev/kv0yMsKiGDLeDtoOaDXQ8NhGlNYpwWYj5lfTh9RTq5PzVNDCFUhLKmYzx7b5/9GuXgBrMECi3CRKIhWyBoKNWSM+XLQcnvi/YVUsEYZQcJC7phGHffyMLBMjYOtF40LrnORA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731009354; c=relaxed/simple;
	bh=tVsNTwGss+jyOAHrws3kBx6T0flrCO5x9coysZ0Y2Hc=;
	h=To:Subject:From:Message-Id:Date; b=OWAOh+mFop6g6wmWOoS13QIgmZqjRauMUIiluSR/M1NfuPfE/bY0JIrVZj9tLSvQ8NDBW9V/TnAb46uOWXwVH65eXFAam/2oPi0bBN9uOIWUWGVMxsd3RvOth0YmGQWuVpTl+71Mqh3WHZ6tMi9Xkf29nSv6tUKkkvQ3emSPsY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdQl1H4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdQl1H4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB1C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731009353;
	bh=tVsNTwGss+jyOAHrws3kBx6T0flrCO5x9coysZ0Y2Hc=;
	h=To:Subject:From:Date:From;
	b=JdQl1H4iTqolubvOreko8h+7zVnburPS3zHS6jNO89DbQJVwGD03bALzuh2a2tToE
	 2eJBsFAqfhehSRiZK+wxyJIBl1B1Aaosynfq/hgdn1qQrw6oQeL3gfr0Me/q/9ah/i
	 C06ZptIZVBIu8hlSo2NIuAsyPdhOMxLxvxw0nqE8kmepm96MhGJ6r0ouqXo0AIDsQP
	 +0FSxh/RkBDVpe8U+JN3Nd3mjZ6GaEHR3Qy1JDmNdPOiIYZ07he7okgEt8hV+Lq/eu
	 UUXpljMPzKbykA/wDfoO3kXaU6SFqQwMayMR8tO/ADTCqOwqOXFZJGt2NjXjX55KV3
	 gaTFKwlqVvmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B2D5D683
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173100935358.15589.15362553142053344157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1fa64351c31c8383fb939b076219b0467154ecd0600cb1d4c8deb5d1f7f16d
Date: Thu, 07 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731009353
