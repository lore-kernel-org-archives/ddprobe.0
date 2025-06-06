Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374B029A2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749175794; cv=none; b=D+6KsW2QXiy/BRpK0KA6JaRVhacxDWYBuhPGMSnr+dxWbUgw9Yhy1Ng40qpYSEw5UJBTwT5NcwjFcB2IUcljShPSI5BRjib8yevaHrY2chSQ9sqIrrStFawsWSlhQfRTIqIDyckiaok6eieOl4tPW4TUmAAxTxkBjTEmuhpLoW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749175794; c=relaxed/simple;
	bh=UtO/356WU4/hdAzeQr/iZUg7bwKskozgR50kvew019k=;
	h=To:Subject:From:Message-Id:Date; b=d2uBirY0aQ80cDtsf5pEJ7OzQBLxINsaUdFqLJ6H+kKy6n12ST1e0vhS6MPPPS2MZLutTC3gMhU3eEoEJeShSUrSg2vWKQ+S4OD6VZkATjWGVECDj/gf6LqrOxjX13YHzl4jPQrypFrqU6gWJE/RJANl4MC0Nbwbwb4GBtqVxvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=de+ZapfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="de+ZapfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749175793;
	bh=UtO/356WU4/hdAzeQr/iZUg7bwKskozgR50kvew019k=;
	h=To:Subject:From:Date:From;
	b=de+ZapfBPTAtOtrMM9wibDtzZCgzChUTFE5XXmlLQHOW9UOtkVn05F0iF/yUks2oF
	 GjrN1jGpWXVmo6lrcCmKtxIcZbzJqWWVUqQwwQn0nF8K/maFr0KMGcygbHKyFlmcmz
	 WQ+4LOHj385Ysqd5J3f+VbG7zHfKjmFN+qdAcAmejYZCOIOoSwwZDCspSzu/h3aWd4
	 rlT+bxC4JrFEKeBgWyKIlH8Iwz9hK7CP2CIOBqv+rttHMkEs4O/+rs5xlFnx+JgBz5
	 MmP4CiYai6jPpPHwb75m24rCo/5ygnZInHEPHukm8/qK3UzBz2YJCBXLbuVNhu7oPm
	 CI3COnqt4uoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A0C5B543
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917579357.5216.664339485505393238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf23f844ceba208ce53b25d121fcff8069a78a7ca421622bf3f743bc6144ca23
Date: Fri, 06 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749175793
