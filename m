Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3410D22B8AB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761447594; cv=none; b=FzaGFKCqDy4UE6vNd8F6GdmbvpVliQv0IWC+Oa4AdiZPTLwoUqYIvx5ZJArteq9cd5gmRt4jqXDLvnSOzpn0XjO/PV5KEVH83xMWrevpsSQzve/tM82vm29Hn2Oafd+tXGZIj2C7MWM8i+tGGmwKonAbxlia+ZEuwmI21DRfgkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761447594; c=relaxed/simple;
	bh=WNFO9BPOghVubVwni1kLEnXYRot47crQ5rMevv6WD50=;
	h=To:Subject:From:Message-Id:Date; b=cv6AmeUfed+OG5FeJMP+CM2qJlzE+H8iOmRPaxghvsehES44MUoCHyB+mQ62QjoZLQacRdkz+BKPnY5yqzE5U1rkVhaJ8wEIUE2iU5zs49NfYBVaggB3WxMjz5X7I89nGLP62gvU2hTtCLPAbdrLOyRWHcK7BBVuzNMzgfMTc00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFGnsPfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFGnsPfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8980C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761447593;
	bh=WNFO9BPOghVubVwni1kLEnXYRot47crQ5rMevv6WD50=;
	h=To:Subject:From:Date:From;
	b=EFGnsPfSgtDS1WDy8SCcx28Kv1TevSPrn9+QJcS2bv6R2ZNduip+3FfMHkhZvTQ3E
	 w770o8mqRgxk/r3GdclcyjRJqiGv7Aaz2jHLqwbzU5LxPU4fbfIx7mtEjgAgKzJc5k
	 8aiRkq9oe0/qmLbpBtM81gYZnZjJ85oaHJQMz4Vas387s4j57RjAaEEyYVFFgIKPfK
	 /TJWcnzg7QAUSGjolVumBbxsUSlFMbtmCVmVgKyJCpq3QQIcB8QAtsV5wJSOgXE9ip
	 4FDiJReZIPq37uh638m69CtkH4bYvlMwCEFPcXmSrQuxW8nyxS4nrkSPdbVq4COok+
	 g3mPsUiz66qJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E03CCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144759358.25885.3362111567225386746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4925a85e167191cfd055b88186207bb794bcada84c5af0ebbdca193f2c2443
Date: Sun, 26 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761447593
