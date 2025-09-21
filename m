Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB6B1DF24F
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758447594; cv=none; b=roCRls5ILrPC/ZeLtV7gnfsg1pk+GBkBL+weYtOWYy3cGYqqqcNnmTrZM4AkACnPgsddV95S7NH2xPpTRwjotLZEVyMdZDsxkROLSgXf/v7ppUKmCpTlJU979yv4Gu3zSP5mXzJBpunmcYwRjK4RjQAQPuTm/k27lSAcxkWK9kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758447594; c=relaxed/simple;
	bh=mdm/+btCn9wFsV+aPYBSp1hLbMmwM4wCUMdgX9m7y54=;
	h=To:Subject:From:Message-Id:Date; b=SG/U0yCJsasUy+T/xhecfU4Rk4ZD8LlhqKTsuBlqBtgDe8QGgBhITrAOgNQuhhZWsPoUkPPJZVtAJz8rKgH8TEhnHk0PYUdTEZrnSoDkYonm2To3XBCJNcE25jM7Ov8WprXRuS5iG7YRzHGK92ZY/BghvG1/KxHoSw/9x/V9HrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrBDGuLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrBDGuLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AD4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758447593;
	bh=mdm/+btCn9wFsV+aPYBSp1hLbMmwM4wCUMdgX9m7y54=;
	h=To:Subject:From:Date:From;
	b=HrBDGuLrPgHXwGUfqOhP8Ap8sIG9n3LLhH6uZmgYDogo+BUZdF8IPcsDZQUw01gBm
	 o3PVfOih5MkLHUa08kul95KHuuIXVOIpmRBMnLJGBcRsZgVeY5CiVj3yaqmcdyk2q5
	 ki5cut0ZyTVtLBw5OaTWarZAzvdczAL2rGRx/T6+i+udvwGj6F1FnbWEJPuRNES6vU
	 DG+NwHRJNSvFxfIogl9+xnLWbnT1YMzJywTtYB0GoGudO7Puask9uuOrk6kfV0hUA4
	 uZYfjDAD2q2BWorOF1Kkb4EXVMMUCN0PEwTVaQsGEuKkmml4d7H5JwVfz4fPLiW9j7
	 vb9TcU8LYOPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA2CAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844759357.7973.17390237787245231597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f46c189ac77eaebccb4d788102b8610f35f50266bc4dba7c2ad8a79043a8ad
Date: Sun, 21 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758447593
