Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184D829BDB4
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775984254; cv=none; b=mBZ9qYnAtzGu9xPwFNjvR4nR+l6tp4c20m+TE3KaGwleX6q/VE47YCxGEUBY3QRouxiMZCY11ShyXVIhoZt5wc7D0Fdj28ULlbK3f7zlUdCINV4oIFpQkKhmn5BefXloM1Z2j6ujazeEGDYaiMECZVWPG3aL2fLpoi+T+YrJmW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775984254; c=relaxed/simple;
	bh=in3mYjb9Ek0cfkJ3ma3hSZj0miyblbhfuv8e0dsTfKc=;
	h=To:Subject:From:Message-Id:Date; b=Rc+AKN1/g2YDEIJRb1heJhAMkOCMch0orqfsCsYOmcUA23h7GB8j32LrEHW/wESjTkko2mjMPoP83GUR0R4qpMkNCv5F+E87KQqIgAAD1cieACATa+7eCfcrUSk94p+aniuQAnqq9uURIyCkVaE6WXzDpSXPqFTstVejYr+6JwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVIai298; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVIai298"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8149C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775984253;
	bh=in3mYjb9Ek0cfkJ3ma3hSZj0miyblbhfuv8e0dsTfKc=;
	h=To:Subject:From:Date:From;
	b=rVIai298RnXvm6H6FPWeZsLI8Zntz5HigCmZIegd7FY4f1s1L9IKra/TKDa/8c0nM
	 oaYafHsUiFDU1pKihodEvnYFBewWHMo2CLjjDr7dWj1uAXfJkXoaBu5Ah6T0oerWB1
	 F7bAd7s6haNtEtzbVZUoSVavgrUEK8F6aMILID+K6fdTzYXA18q6NMomg9FhGM1jAi
	 v3xl4xRJSjJGrSh50BRkOzBC8EftonnXaNstclXrbUkFohoMs0qrJpevtcuWPkHkCP
	 xy8+KUPQst/NsmptG41bEqhBOw8+pVc+OE3Y28Zp1lgE4IQaZj7fvjLpO6d9cLu+lO
	 a15NE0LnMa+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9734E64001
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598425368.29660.7888176106940871886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a352e4b0fef54585d1c5bd402165fc14be8134012d027a8c91d4a2a08df0956
Date: Sun, 12 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775984253
