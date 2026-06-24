Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552B421638D
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782334654; cv=none; b=msp7fLQXEIyIe8r1ttgZ8Ha57nsGsL9qI22kGP0qjxQZWeRCy47ouUvQNnwUJz8MpGnSCoFYpRm3B6XQbbDap6xFnwGpZqok26VjvZp78bEC5xZreVbQJDIeTNxi68si9WdCpjkI9X/NESkXQr9VQbueBkCT6X7uK4ksRW3kDZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782334654; c=relaxed/simple;
	bh=+otcLhCpTOFSRh+zMkH0J2OO9xJo80K70cIL7w4yySs=;
	h=To:Subject:From:Message-Id:Date; b=gKqmdXXEStMyVivd9CCI1CM7hil9KDxYSGY6q/S4iibGVDpHeWHexv0GZuYYj4e23JMOpF+Hn5T/rGSITN5l3VWt/9upiHEQhBetncwzkStFleiD1f4wnEDoSxZZ4ckndBOzW8bS77NMToiyeM5BNXyLsRc+70kqqKghrtk721E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKyJzUvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKyJzUvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7597C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782334653;
	bh=+otcLhCpTOFSRh+zMkH0J2OO9xJo80K70cIL7w4yySs=;
	h=To:Subject:From:Date:From;
	b=IKyJzUvJuJ7TYsepU4eVcbs8IcbzBABT0JD16iz12Fz3XoJ/8BKgIUHN7alQ9BlIQ
	 d0DNZFhZTRV0zL64Gqyg6fl+x+yxHcTEE6ZPv54vfU09OwaS7v2T4PZCzxOPAV37Ye
	 5iXnsptjIfGBUHfjdIY5vTE9jRxoCG3iWcrHEoqPIfFMRIzrLGtZGQiE4J5/d0pQQc
	 6BXUcUJt12VDeSfXMQk938n49LIbIMp6qEJbDItUeCh/G7STbRx4CmS23T3q2QkZSW
	 U3u5oEez+eCYN1uAx9Osq1S3rNcNUMUB1OXczLAQr1G0quJmblP4bBBVV5iJ3P3ihF
	 llNBZ4Dh/ZssA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB502CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233465370.14445.15346647022212653419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3633ab962913a97580cc5db927dbb8c045f659cbafc1f1a6e863e07840e30fe9
Date: Wed, 24 Jun 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782334653
