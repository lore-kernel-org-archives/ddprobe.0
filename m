Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDA417CA17
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737366354; cv=none; b=scW/rth5QiEE1qrMs/aLWTD1Hzv93/d/JmjLYb5mpK6Rj+cn+rK2mgN9w3CL9wDDmgQ5iSd3JE1etbfkg71WlH5/y/ZbFBQX+pXf46/I/JUpckT/8y0KpMnofo8UAnox5oPyTCzEzh19lOjC5xeQdbmhsPcPr76uIyc8ynJgHhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737366354; c=relaxed/simple;
	bh=ceILkTvW7d/bmBMWk3nQdsPfvmABT/Q24L/BjilFRrU=;
	h=To:Subject:From:Message-Id:Date; b=bX18Jn8+7KMZhDXEHpin6OOqHhTtd7Gh+sk9aSIkwdkIkiF2awijvXH+R36I3qzV0K2UFvc6Nwr61eFHxY29gu2HW6wrrhWKCxxCBrlrYpDs7lNSTtVK0Vkv3R38kNTdubP8Tlhh9+znX7uJ0Q6o38XvIq+ZUSKHCt8xuzpCCf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8weu5b2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8weu5b2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48F7C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737366353;
	bh=ceILkTvW7d/bmBMWk3nQdsPfvmABT/Q24L/BjilFRrU=;
	h=To:Subject:From:Date:From;
	b=i8weu5b2GSLds/RYizUAwtseFCo6X+WB+a4yC64XTGvYl38luNjvGyJsfKp6dcCTK
	 n/rrqhk6/iLZkvPXK9dMuWKlcd8XiVR/SEuAZMLOmCzWJVzu14vtS8qcYULIe6k4oD
	 +71jetVR70nIh2s0V0F7z/WE2pZKZugv/G5deiJQYGgSWeGa/TQENrq2lhoxGVPt79
	 kGQp/RD9hlaFgCIaTgSCiWdqPyrzt1XNxI/lwvnET7zKs9G6HZlLbnSbGmS6phfuhB
	 COchBITpQU/aw4Rxc2p6I8/dzw8QT0zUtSv8Vs9+fhrUrV6uCLnhNeLyZTSkxB9y0j
	 qWMLZz7YBkI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032BC02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736635358.18595.16375168973538788458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68824e8085a349f64d2300453464d5568c7dba2377c08741af82b7a683a690a
Date: Mon, 20 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737366353
