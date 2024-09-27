Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD5A14A60D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727401554; cv=none; b=HjuPwqUY/A4eeJnqBfxY7FFWwb6vwJCAkXGPA/mumJACBkTMDRRYAy5k5ZR12l1KQFqfXGDQyeIgn5xIGzfSh+XxtL5Uql971wAKIbewwp1oko6XMsRxAkEw5AhO3JOcClViMMM20PApcDZ2oDL2vVjFIpHlbfi62qIE/uB51oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727401554; c=relaxed/simple;
	bh=1FC6iIAvMmsTi7GTw5k8P1rM2sQJCKkcTcF0u3TBRhM=;
	h=To:Subject:From:Message-Id:Date; b=gqbiXppYlMkfNhux+tZ5TXULLCnXXl4hw+oqbFj0+9t775ihhxFh4ghhjRM8b/h5aaWD7ySmtggghyTRRmTiWSls+tJfbSxG6UUABxZVMOS+qNvBvlXQXOxjgmr4Y/1RlbC/Vn4nrh0XHdKdUbKF9G7U18GNDhKrIM1kbFfnXWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qE2Clj2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qE2Clj2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F74C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727401553;
	bh=1FC6iIAvMmsTi7GTw5k8P1rM2sQJCKkcTcF0u3TBRhM=;
	h=To:Subject:From:Date:From;
	b=qE2Clj2tzS7vRR38zg3Im4ZTfXa7HIFma01JgN5UeG9O3Ws9xiluuRg87UdOuG84R
	 ZR7PJ+N+bHPrSgtqA7XXwu0nqO8LYVEIb/1l1YO9Ic5XwHtbxxFty8hpVsZC5SaRwx
	 zfV59qZzDeyQJgR5VCh8/MhShDyVYr1d3D1OY3vDGaAfNeug5nGUVncfB39GWUZWnM
	 gPOOHYB9TceJaQ2OO4o5xxB/T0Kwejj7uW14cKZGv7KO98cgzeE4zYVsKq9y6G0f/C
	 aAIIETtQR5I+XHXUwcUo/W+gAnIzU6mvdH3OZmfk8/vgVUqwGj7445HCaCT6NVaUfn
	 aL6mWjS6v45aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9397CCEBF66
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740155358.12800.13043397852126178677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08e61729fb3f081e67d30b12dc191fdff8e47e8711052fa831f0ee51aa5910e
Date: Fri, 27 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727401553
