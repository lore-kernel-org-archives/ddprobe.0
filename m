Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1356B17993
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721627754; cv=none; b=ILXQzsDbjCBqfWR44DQW7s3cJ8APg/y9H663BQQ9mF6vR6YrLXRGmM+T3qqlqEItobA317DuvGZcWJxiWeCZRAwY8TrLvYmvLKImNxMvwqWRs3kbKbvY882sVlYvoXE8BkvIiX0lrsI8qk93Ndi8pGJPzO7wiYWpGDjPMWMago0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721627754; c=relaxed/simple;
	bh=MEekmmAnVTgnpWlRno5HSVJLBeSFScIlWBG+t9n1X4w=;
	h=To:Subject:From:Message-Id:Date; b=kcy+yYtazmZJz7NeAm8McHmUA0vLP36quZp2k9S+gi+5jRYCV9gw9Axs/w5WJpfg2oa2Lhk2Plejp5jwof4Eh+NHO71qLkDuV9ZLbIcwx6Alr57QZdSkW88BTq5Sxk9t3sfb2A8iUagxC9GN0Vo6w6ociRTqAuL/AilOBFd/j9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKL8Z24a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKL8Z24a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D57C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721627753;
	bh=MEekmmAnVTgnpWlRno5HSVJLBeSFScIlWBG+t9n1X4w=;
	h=To:Subject:From:Date:From;
	b=NKL8Z24aHe+eLzbIOQhiPGTIAK3t6BCogPfkPLwZILe+lfXJMyo0tyHx9sTvk8Hil
	 KnnT7LdPI6fgEyQ3jMQiaFRDaZAVTSEY+5HQbuPsEWadCZpBxelT362bHbzZ4O6apl
	 6kIjHxOaIUVP4iX+DQYAmAlY5uXst2YIgAtmigEyXrr91Aw1AqcKkq5+c4zLrj1BjZ
	 IwBE+OpBJDBqZDgtzX8DBGe1y8k6ozDuUjT34GsfcbUhJuBCotGp3++vjCPbvlh6PG
	 fBHK0yrvJqAssMiXBwkHkaSxpHD/A+4YSVkg8MrpnJ1aiKFJ1hm1BN5NcMho9xaeKd
	 aSc4tiWUzuTEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D21C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162775359.22314.11002671926582947555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c58f11c03991852aa404f721452a0ffccef0a49a7c3a59634d7aad7b8420491
Date: Mon, 22 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721627753
