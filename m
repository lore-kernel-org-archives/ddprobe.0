Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A5D6FB6
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 18:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714156343; cv=none; b=VyveFLPbHQMZdM6yA+9+ykvPKVojGs24Kv7c0EFoxp5S0x+Ec7ULEa5L4ndLXeJleR1CM/yZQDcKp3OMS4ncqUyI03AfOyEF9RSjrZBLhP2vAqeWXu8VxtSkauxy8Gn/ZYT/CK8TCw+buaT635VmPJXfaIGCcPwzNuLkDRuyTP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714156343; c=relaxed/simple;
	bh=uKEZQE7xCbQ9V7OEWM50phBeILpxi/7hob5FTi+uZZ4=;
	h=To:Subject:From:Message-Id:Date; b=j0wgaBU5SlkYgtAk4CCjVa8FILTdGFAO+lMKvAmU8sTHRbIqbGK+gdjYJcPvfxO1n4LcYIMRYqIMGYOibrvRb0ZLRcef8a3mYMQDXJF/l/Pa1GdNpyCUShCu0WJSQWkIRHZyP1h2kr0s7MS0LTGyOYACnVIPphnNWPmRsIdUMKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GB1d9M0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB1d9M0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3341C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714156342;
	bh=uKEZQE7xCbQ9V7OEWM50phBeILpxi/7hob5FTi+uZZ4=;
	h=To:Subject:From:Date:From;
	b=GB1d9M0p7PCQgTtH3S1iPyqFdkoWVsf+2Tj4N+LMcdzfvH8fKQqN3iNSZfKbcC3WW
	 oEzhqIG4AeeTptokhrVJvlrppH/WMaHHnOfQvbN/1TGtUT1O4eG9SucZkQa04ZWJsL
	 60ISS8/QDbPBxkguG/YkjsditdQaJJ57kGDSi+piahRO7iRZ8OjGMnCvMjRzcOc33r
	 jeIMJC3Ebz8hOHN1wHM1P7j5MlI4xo1F2w0cOr2YjumYNa8L50A9VPjldNYZaaairS
	 u1D3Veqlz7oqji22b7deXDLI6b15nDPjqeYWiIdWjcjRn3U7hImw6FQgHa9zWFK82+
	 q1uJ1r5aqnOKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2298C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171415634278.19183.7932547963436570809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c360b8d3209e0de9ed7d2f69befb82ce985231da191bf80788902a568374d6e6
Date: Fri, 26 Apr 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714156342
