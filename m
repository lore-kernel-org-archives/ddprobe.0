Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABEC4A1E
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755648594; cv=none; b=YkaeCgiUhLK4iVDL9VorYiVR7kSm/kkXFSTanlTuPbGZ9mZ6X/xZNghaHENEOu4UemPEuPJvCspG0AF5q+R8ba9Km9eNyWYd31QuJ8qBy+oWkhPa1SjLGtot3kkIehd0fMl32iMGrJ8uZJKyFAgb+oCg5TWs6PVUfCLRw7Q/6v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755648594; c=relaxed/simple;
	bh=4MCXyHLges1Uigcx4qX46ZQsar3phHmpEMhPQ43o3sM=;
	h=To:Subject:From:Message-Id:Date; b=r3Evrj+cPVEhtqoIBY5bR8Y/k6ATWJPQBnEuLhNCh0EpEmX7IiO+GhhCBav/9YHkELP2UTHQHUjVWDJ5iFjE/zMgNfY8zci+a6dEBgPOw3I1//zm6Qvw3zXQhOnMcyArKNS8tJnoPW+YkJE5mQJu8qVQZgsvu2IRMXLHP/p4Kw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SC+BjBU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SC+BjBU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D4BC113D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755648593;
	bh=4MCXyHLges1Uigcx4qX46ZQsar3phHmpEMhPQ43o3sM=;
	h=To:Subject:From:Date:From;
	b=SC+BjBU+M/BFLN/LokfaKzw83xsn7Ad7lo5lJGJ84oOtB5S+rBNCN/UJsRqPIDX/R
	 +5iEcbuNmjXIt1lrNMhgwArQ9LUPzgGRSe/CelmeENLg5Aqtw3J1BbrIvliTMkE+Ze
	 jZ09aGPILWll5TlviJGmOW7GxDz94fLSq1q/12wdfjHvmo2o2HWjgtvc04rMfLNH9h
	 jdOrxYj3N7hNIo3LivDbS/Qjzu+cdawhomcpx/98bbKkbSDCbGQsf6QrBAZWX+sVLc
	 azxt/kMw3oAgXDFLBc4HOcrgsKOSaQhVd8yueyepsuNRncwU+rJHws9ZIpWAUL3zw5
	 uCvpvn0B/LPpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C55CA0EEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564859357.16044.1381491778980859090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3e9db32901bd77650d69c201f469a2df270ae23a144dea78035b2373f535cd
Date: Wed, 20 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755648593
