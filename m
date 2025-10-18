Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE6621ABC1
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760808594; cv=none; b=HB4sBIn/E0ynFnIKGZFJN3Ql6/1o0/igW3r+ZCo1roCpb9zzm/nrr6YaiZIBzcOPm7/1dJrnvqM1q113Ua1mNyovkdnoweKS5PR1cQNbLuWAj9ik2EQfGZpG7TEkX3BLRV+2aw79G6fHeuXUh36h3fVMaN5l61nU3nd/DE6K00M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760808594; c=relaxed/simple;
	bh=jJ17g5YaEqNOB/y0roPHmgc8wx7F+KieJuIaCSVvnKA=;
	h=To:Subject:From:Message-Id:Date; b=rQEaGgFZtdtlvkAtixyMYqm1EhHkFSad5mr9PgZQT8JZ34APSz5GtAqVjUdUDjeluyLHBGkbCLO1IUnKlJaBvVBfE5kbn06VcoW4srqtK9yapE8byrePP7pTwg7hYi9UXkf9lhnY0UMJpgeSvIFbSmKGWw5r0ZjxweIzEHZ3zDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nmv8BqJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nmv8BqJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5F8C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760808593;
	bh=jJ17g5YaEqNOB/y0roPHmgc8wx7F+KieJuIaCSVvnKA=;
	h=To:Subject:From:Date:From;
	b=Nmv8BqJIpjaYLcf5TJe/kIJ2veEfJxuPmFDdcsV2HOwj7Ya/EHK/EG9KHnbZDZ+Je
	 UvMpUPcv+sPNU9QlKiQJZlaBfZLDTvOppnQptU6pi2N9i9w1qieJt0LEbRZ0vU/gMz
	 81BW+R5VZ2dtRhsm4aD4dCSsDnNbw09E6GcD4JznPW8oEk3oKoJ2ePbZNaEp/mTR0P
	 vlimVTOrxSLJOLxjZc6IRAVDj2w4GHnvdyEuBayRHiN0KaX94BIDW/fpgyxiYRLseK
	 z7RYV0tGut3vAdRYAgFy5e/u2S+1urmulm1lW4tuDzMjwwTVTd3X+RorU0EonqPMR3
	 o4rRHFa1ht4ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD74CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080859358.6308.8271983917215306317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13d6efdc94a0dcbb77925b3398be641b41a05a87fc63161e6dc5afa609c9a5f
Date: Sat, 18 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760808593
