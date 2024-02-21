Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E869623C9
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708486697; cv=none; b=BdzqJxg6MfP6+o3LoVQuirzIdM7UvbG+KYlkSsmZeMW0Z7PDPMLDtH1dLGeMx/+cRK3/P03u7ZwTyJC1LI5gUEjYO/fpyDKl2nM47sOBHthjegLBOYlTuczN2nVKPs9wxzKBe+xwCCgakxz8jjDARNIox2tf5hf0mTcnFtAE+EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708486697; c=relaxed/simple;
	bh=40fkirO35mWlpD94imCjjVN0ooH99XCVOGihkNcW7bM=;
	h=To:Subject:From:Message-Id:Date; b=lQU+afLlJlDjRCvLgcoZ0b18mmYr4fWQI8pl0/Uujlv6NAYDUG1kzBYTjeeiKjABATfqfASDlfHU7W6NrQGItgv8ZFQ3/VfKB1PTz1HW8W2aS6X5Whmyy723nD28LW43e6tAtSY3ZsG5/dYx1ewmQmJajcgJHzMpwJiGQirM2gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXqCOgx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXqCOgx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDCBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708486696;
	bh=40fkirO35mWlpD94imCjjVN0ooH99XCVOGihkNcW7bM=;
	h=To:Subject:From:Date:From;
	b=dXqCOgx8qvO2/NPqty21XWnkbPlWOJ65K42jm83nPPXM1NHAaPAmtDfdwqHQ6O5DB
	 ViRuBjNBnIvY+mPx8XK5UNpLb9tM/m8q+oa6Mi7LWj2ml5FfjXiiooLAp1tQXrhaAy
	 YPj3RG0G3JLlpTkQxPAZuu+8Yv5LfhNmmMmgeVk6UQkuGUjcQ4cacvf8U8LYwMKWgw
	 sVZFi7L6p9F9Za2Dc3mKJjffM+ppz8YX/YsZQ/LU/7DS8rVuzbK0KnELxezIJA9CWA
	 /zAHhhZv9KI75K5NUc96thTCU4KHmB8K1Bxwdoh37xs+w1r+AKkL68/hjioi8BnUNo
	 eOqX+BMyCo0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6429DC48BF6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170848669640.30952.12735968118363418304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7963cb5d00b01eecc3ba719e5a3303571284e20a006b66c53c656bb4de974c
Date: Wed, 21 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708486696
