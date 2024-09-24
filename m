Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5D914EC60
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727165754; cv=none; b=cGQHOQlTtZv4w8Upol9rpz/KZmrCfjjTvEutl+4twn3l1mH/hx7vtxD6jGx/WQLcxmmqR3nnfdV+lT1xU04y7a1+eZJB6lqfAY0J3RdZxtYEFZ5n+BaVeAGTgQ37jjF7yvE+Z5dzqXCZXTTLaICFsWlakuPM4vfzFoJWr2qnXS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727165754; c=relaxed/simple;
	bh=D83rU2hqrDC3Hg3X9PFRzktmvGApuK64QK3h8+w3vEc=;
	h=To:Subject:From:Message-Id:Date; b=QxQWrea9MGNtcYhcrlYn+3KgqVahwNXrrxsa8/+p62fEX9SrCs9TUABDUy0ZzIugbltDXHQCP4G7wXzOJhTX9B3TetduF45BpWyMXAFJjIMDD3oNdxEV1bb/g/dHXLZmYq9KvWIsD8A89o9ZyDygmrh8yDwpAS3TpxrcuEFcykY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0yxjfvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0yxjfvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF6C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727165753;
	bh=D83rU2hqrDC3Hg3X9PFRzktmvGApuK64QK3h8+w3vEc=;
	h=To:Subject:From:Date:From;
	b=B0yxjfvvJIZucJ5hDxh+h5UJHtDaZhlWwbNODmAZSB23QBy+mMaQ0J6mPIjP9oY5u
	 FKKR+HLVuNuQUzBK0erk0FnsP8FbXjJoc6+CULfrFRhJWj9XDEPjnsfDaVmPPCoWFp
	 7idLC1n9800peapzuJeO8gUBn4ChTkrB1XSC+1QMHbOipl/YZG8Uwa+L/DoxD/znJf
	 Utiu+OIalFc7H9suVPtqp/ISRVomEcogONyMSbyh1otZzi0nzzRAsS5tspXd25nUI0
	 Qul80t2ucvXb3gR5emXvMNBvnk3m1TlloneXzec/bGpTIqf/YB7DwCSyTh0//CUde6
	 DL77OTdJfRoaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303FCF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716575359.26036.8233020340750832154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea40b35794a1c99ebb9583c3abe3d386a29550bdb388ac1278735389ecd99ff5
Date: Tue, 24 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727165753
