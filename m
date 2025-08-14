Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B126111AD
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755132594; cv=none; b=rdo4eDL6XbKGo6fiC6bln37u25mlcHNNvHdzhQiiteKXQlev48Au1PaS2e8TSBmDFDIbgha12axF6bmZFr5yavqGVFfh8mFS2QhGBH0O1/2c3JPcLZdKUDA/fH66waWRG3XtsWm3HjCfVpqKPhZMPE0GQ+JQTppm0kxopJpmR+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755132594; c=relaxed/simple;
	bh=43T5S+hTABD8GYOTBsT8bzRR7RtHZUemGEoV9gEK+7I=;
	h=To:Subject:From:Message-Id:Date; b=rbnCvUIfYMBjY5XthLb9m1NaCTZ5wWHtE+cE87EmsdeziVAIIq5tps2j4qhfXc6r91HfT7tPx75N4P57PJlJSKVxvXwkgIABL9xXXNZ7jrLo0sc2KDXvdYzgI8flNUhNhOMYKcE+tLXR9j5Nt3YMa1NzTUWvOAI5yN7YZnvd1o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USs+je4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USs+je4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC31C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755132593;
	bh=43T5S+hTABD8GYOTBsT8bzRR7RtHZUemGEoV9gEK+7I=;
	h=To:Subject:From:Date:From;
	b=USs+je4rC1NXZgS49hCdJp6xdmHeeBIXwvnpvj0dp15fpQOTlw40NYraPcykQIRZi
	 OpOa/up2MaQAYeqgxUe4x4J4xkbUyNEk6rAoRcREfocrfiBl51lhoZEeKNmAEzcQWg
	 sCHqCXTAT9nvrwRZB/FTXjwSiQKrBvZMdWVzOKXAztRSmc9ow4w/MAXgzHA1AYJTZB
	 uB7uujK6aYhvHQ+d9BXU3M/nDTvmpeV0F1FG24WOMgmDw06xTsIpAweRda1cN5gHRt
	 kmphpI/fYSpAlJyrqa4NNgKYxhguTU0DRHbb2+lgCKAg0dZho3mE/LwRE82kE6sbav
	 t/OgqRZnM+5SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82FCA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513259357.13193.2559422694587405205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b0911b16c2ed7f32dd40a72385d3a040568efe61026a5752a07b6e8c400769
Date: Thu, 14 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755132593
