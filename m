Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC66327C08
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790737834; cv=none; b=CVXnPzNO5aBQ4H04BvWjuZ1KfCXvYR8LiANKyvPK9c+13+c1XclaY+EG2DQzvqUog6ATy9I7W+rao9zAmIUItye6L1cpIvortZmaIkB9r8dzUqr7a1S4gJ2rP4vRiL+ZfGAJ4yS+JENc8Dw9kvNJILr4QQc+0YAGOmorvVHZ4j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790737834; c=relaxed/simple;
	bh=dPTD/WqC08npYIFG6AmCrV84Dfjs7TGn7ZXR5TXwIiA=;
	h=To:Subject:From:Message-Id:Date; b=EK3X9viIIQD/OE7aEGpxk1ZLIUeQCPhmI4R6Ezzr0tq6WlPga4BekYkdnq7CflkM+d1odyepToPvVplDXkdh6WyygUtXMGki6VQq4fRgfe6+w5GqNLMxKwQmICdepX2No6dlB9FGh7ztkYnMeUduN4j5OB6qjtPhG0e50C629Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsvfE+xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsvfE+xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6425C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790737833;
	bh=dPTD/WqC08npYIFG6AmCrV84Dfjs7TGn7ZXR5TXwIiA=;
	h=To:Subject:From:Date:From;
	b=CsvfE+xhF05Hj3bBhs7M6dpd0QhUcUhHTRRj/1WwRQLHFQ+lHnDzDUWMUsyINHsww
	 Ne0CoXa+EYghfbUa9cZDndUN1aM1c4rZfhBFgoIPEFXR+8JhosZQBT5yJ5EXcgz5MY
	 6oDJgiKLGlE0uH+cPEyQ2XXrMunaf0Xva0uWu9hJnGQBFzM0vh+FMJI83yKXHRlAkd
	 wT8G/b0ooDYeqhH2ngAJShUmCnG+bz5WADRNUjngR7aEVTtSMAhY4yYY3e4u6C8Lrv
	 qK34zEVStkft508+ZjGcfiVQwqsCqrQGeE7u73CUnZruOcf2PQvx9KF8JOGumnXKrd
	 I4ByuDlJHyv4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF140C9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073783369.12842.17229379872110560552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e579f291f8e8f71efd1c29761f1b51d7c9ac28f995be10a2b10f9efaa3d7dc74
Date: Wed, 30 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790737833
