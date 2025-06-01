Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA3A86323
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748782794; cv=none; b=m6Q9UBLwzLGU6P+Hw84twcBK+S2Qnq32O5rsWVPpPolEs/5/n0T+Ex9Ybj1GWTGeSlNlVY5NPhcHZk0mbG62dj6nu+h7R4D1WYKGAWA6M61AHHycqOGXMVq4m0kKGqWs+ZBPEemwggmFpRP5h489X0k61VI4YPcYYpq1Ojkt51g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748782794; c=relaxed/simple;
	bh=WJehJngVzQNI5dHiQjAGdiflVxuVgzASVXod5jwoknQ=;
	h=To:Subject:From:Message-Id:Date; b=kh1+mKcKkt21RV+U3f9JRRUPgHntMNLNFu2thRKBn23BRfvjbdMMWrZyrCDKVubU42umRXtl2U3Ot55xMty8YLqYLdrblUaM2GJxExedSwzjI/t4m9VK4fgqSdloUAKtB0CAnhDJRTtDL6qmQNlXPf+U/r3Vm6d2AU/BwpUqpNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTOn81OC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTOn81OC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9EDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748782793;
	bh=WJehJngVzQNI5dHiQjAGdiflVxuVgzASVXod5jwoknQ=;
	h=To:Subject:From:Date:From;
	b=qTOn81OCwqBfUPLSq57Ayr+d7J2YyzpTjutxJLbDiqG5IdjvRdW+5q6mQVTKilLQh
	 g8SZkAW1CjOUYVChx4px37llIB+zw2CZyCz9KOSm4x8fVy205Nos1P2Xk9YbgdCRQM
	 MCNL+P4gmr6j+3EV3w9kHM2OiSZYV9ssSV80hjWDYY2bGAn60qfQmty/APyGXPs1wn
	 ypWEG8GEbexl3qGjFStvjouaTmS1DwXnkqi/uMgm93hADKschM4y2cD3dQgylp6p3W
	 6j1NyRmQVxCl36nbPcoBT3/HqUOf15MffLGSCQ0r8ugCVRZpxnkUnVkN9GNrjAEOzU
	 0WtbUT8wIYK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB10C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878279357.1071.13042812976569476552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ed781870b7e8b42bbc14db1a020337e433e632888752f145d70a7d1ab6196d
Date: Sun, 01 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748782793
