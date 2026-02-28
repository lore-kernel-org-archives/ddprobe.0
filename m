Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6B728C035
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772252094; cv=none; b=JX2YAHPfjrtJ/lx26MlRI+kWpErM1RZXQzgITpD+xXbKHFPiA/C3mcb/xiwiozDPa6UUaFjMPyBedB/rL63losGQYtt5MZzKyqDyZiJPu9HhHXHwJwI/NowkiEgKe7adWFcJw+6Rylftfd9ps+UTNt9dIo1gyzuUkiSIxt4wxUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772252094; c=relaxed/simple;
	bh=ANJYKqrNOsQL5NaX1kGKowJChCel/L+Ga1H45U4bfsY=;
	h=To:Subject:From:Message-Id:Date; b=jiEplKqnFpYRQcWU0Xlibd/EFGpMpPlV+c1GPhJwBNHoj6kfN6p7oBjiOa3RiGj2xBe6SMNDme3G6JZ7jjnYScyRfb09xekAiFTnhNcO2PpVaHtpGxC3BC81DXZYA4GGoJvxobviMYyObYp6TZAhu/h+ruGxu81+E1GVUFOr8Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYXPnkvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYXPnkvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A466BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772252093;
	bh=ANJYKqrNOsQL5NaX1kGKowJChCel/L+Ga1H45U4bfsY=;
	h=To:Subject:From:Date:From;
	b=RYXPnkvKEOL1M6iD52wBoFfNv0yP4DMzMaDtyAW2SCUP7QD8wwIxARE+63duMi0tm
	 goHNXJ9mRbaHc0vjBTiMznVJbQW2gErBibdXNaCFzz4A1Zbtdkrp2++XfB7Chqgwf1
	 QqzFAMZZJQlFOTKSrZaL/cFbPq5k5JZ8tfv4zOOIj2UK3HLjd65Txxp1tp+FPaIYWG
	 BmhCfa3ayRKNFTYxEJz+DX66Em73TutW9xAcls/61XcJHuKnyG6B+cJ0FJ7RxTlWyg
	 cvxqLc++LeEeB1HwnLYhRfRejxc184tf+ODaZKjX8kEKL5k/m+3mt4J5uxeK442Foz
	 6b3ZvILbAs8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB1FEE4C4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225209358.2108.5994757807029975810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63148e98abdf0501d7197f0af050aec17c1ca81d1f61fe82120a6a1c121516e
Date: Sat, 28 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772252093
