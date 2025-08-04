Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BF923D294
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754312994; cv=none; b=mmJKLFKK6pABuyAdf/cN0ik1mwc22Pcg1zGqjYqI/BA6hW72BnFgwgIzprLRQlR0KU986V/rpckMrVeqgFg8eoXLRMjGPv4wQImTj0ULhsdO8mrX0bK9l31kT3r4BJWr2NW7+CyEu74iJFeWcCU4bXrOSsqksGEHoUlHIlHBsP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754312994; c=relaxed/simple;
	bh=9APpJxB6U/eSc+6jzUpdupy+QthWKTRcPdIrHY0+KZc=;
	h=To:Subject:From:Message-Id:Date; b=G9MJa1fJhDtukUkyP8ttF4xRAGmJM++223qbPwzPjPnHUaPdZ6+uFLGMDgERKZl8wT3+RMHmA7ina0Mg2ED76GVdzblkE3/ceANPKkSJtljuIJ0TuElQlWZdRR6ZdVVh5TG/wfByFBTBMwrHwFR2OC8UWz9ofPEk0aihP7COZQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwDk26hZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwDk26hZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1536C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754312993;
	bh=9APpJxB6U/eSc+6jzUpdupy+QthWKTRcPdIrHY0+KZc=;
	h=To:Subject:From:Date:From;
	b=RwDk26hZDJqI9wJv1ftv+uVOyyYgWlI4lR3y4CMXBgJZer/TH0GZ5oevxIb8WMIAQ
	 0ErGwoukmYuHa+HpTzh0MTjjbG0rIqrAm5YtcPDLAYmX1ikq25zWIAYWkvbBHHibst
	 TX1wRvNzVeLoZYTkSdLuJNfNkj7L8k+Zr7yDq6W2pciZ8XG15GGn6rurLCloKz4TCf
	 h4oqzTpAkgMAF9h2m4cncJFoisEo/LLReogJRaKcAPyDoO5uUM8mNvFjHy9+xChi1I
	 t0yyFF7tLS4iPrt7Q4d1CqXZt+7drtTLfQTb5olCmAybvAzxR8VLs8ZYSL1jfeIVZi
	 LwQpggKEQ9olg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F510C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431299357.24148.10629076910333415383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f546381a87832b0a4fcb1bab284f13b71830c4c09c377b1514265f24ad08e9
Date: Mon, 04 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754312993
