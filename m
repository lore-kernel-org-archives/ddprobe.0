Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0771DB361
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732645554; cv=none; b=W1B9eWdILu7DA3TeQ+p+bvLbvfOoZlwO7GqHRKkjhsSl2CHmrQ/qJfwkA4b1MoliRSsy48GRIwacqS5KUTgPHAOyBiZQ2cQ/f3yFC6vat+6JkQQGVw9EoXAB/3JNbwfN2s+1fxtY5UdRnUgqE4B976L58NLsK08d+nvQdDqPSEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732645554; c=relaxed/simple;
	bh=wI8eRcmmnitwTNfEHxid5/HngFL8pKQvj1dpdRE1THk=;
	h=To:Subject:From:Message-Id:Date; b=aSSnXEl+x1pvbwydLHRIeCDdnW58mTh9O53q/T+czbY/838Gi6aA5DQ5re4rA9or09sLn+8HdOZmcsdT5E/eB+uJeVSHATeyrgY7jCjGktY1ocpOCPcXd/7rtJXVZnT8elWmIJwJN+53fe8NRbJ62l7BKEsnVvZneRhpqZpn8kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XP59ij4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XP59ij4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1177C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732645553;
	bh=wI8eRcmmnitwTNfEHxid5/HngFL8pKQvj1dpdRE1THk=;
	h=To:Subject:From:Date:From;
	b=XP59ij4eKk1mlpWC5EnUe7jHwWzEryEE0ZYcdCqRfT4VA3t3md5Cb3Bj8G2YVJjba
	 WlMs0hvpX9J2kiKgO6SINLBlPJGKAnJcV0U7vYC/MtSSiF9m3dfVhnfo5SkwRaknBu
	 EJlMg6ktecvCfVf6JoS0iFACa1/UeG/HVpzjt6ajZz3mVe1h8xZwmRslO74HfI1/jT
	 dHxLJM2mBMfcfWbWjC+TlBZPBMVokcjm09/+q3Vta26Zay9st/fbdrrsLtnBnIEN+K
	 mw96igN0BGOazCNjBWbLXG9Ctx62eWF8AsiUpFQwfqjemNGbFwJrwoW0MTIuArbdf7
	 l1AmM6zZviaMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0452D65544
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264555364.23854.14116036583813487613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c88dd259368511f603957f4b4ad3eb6aefb2d178e70f118726766d52e9eda6
Date: Tue, 26 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732645553
