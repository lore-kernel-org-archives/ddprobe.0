Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC502EB10
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759208994; cv=none; b=fAdwNXr+zPajHMW6cu3jxO6gfiO2C6y9QynmcnjA1ktHBp36ZUII6l9w6HlNJFRKypnPFvUKx+MfUTh+8aPFMwBN496IvFriSZfmVMBo23U+et/aL3SNKSwm7hNHyesSmqGIuljJwhOT88hJSIHahzoUvI7NFGLpsNcRXtN0TjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759208994; c=relaxed/simple;
	bh=PL4l5qYcmAdW1TyHz5D8vEKe3BodId/L9TuzhGQyerI=;
	h=To:Subject:From:Message-Id:Date; b=E9TiiOr0CCDpAmv6S+dqUx+IDEAbG0Tz0xVg4YghfAiU/WCsmVzluabQs7IGqPZWb6kUnJZKT1bNVVey+q4pqH/Gus4TCTzRSXo0qiVlNyipR6YarH8SeLqEqa0pvtQopP14+l2mwR8bMUmqdQL77c5Vq269k0rfLJJUp4Rvik0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ka2+Ap0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ka2+Ap0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AABC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759208993;
	bh=PL4l5qYcmAdW1TyHz5D8vEKe3BodId/L9TuzhGQyerI=;
	h=To:Subject:From:Date:From;
	b=Ka2+Ap0rjXVUkktgSCFECqsoKUsMBekvGxyPynXQ+zb5BJMqcz3aeaznYfKgH7n+N
	 Hk5hbfiwjofIpC0qjVPPA/GGyLFfnZ+q8vo89beQE/+qBjEAUHdEks0EJRZwRcKC0S
	 YbOpkoYv3DmgyejHtE8Io3IMOqcCM8ygeSRZ5lG7Ajjf9szoUC4qVqpnsGaF9bLON2
	 mxYgEj9mygV8B+sbLntOx/zjNyej/DPUPbtnc5O+exlwi0hsswYjcWAPCQ1ZV7zHum
	 gMzky5su3NaCA+vpluCK2LE//jieC1SHdS9cYUzdSVf7DyUJkdYzbPz1V3HWlMC6uk
	 XL60lyjXl8JaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932ECCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920899358.29226.4228871232966831325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8eb903a51971c8967b5d912604deac26c89633a2dc3ef8215a6f57bc71b865
Date: Tue, 30 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759208993
