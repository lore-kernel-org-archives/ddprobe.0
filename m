Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F16024E4BD
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746508194; cv=none; b=YqHJfpFeFif9OPBM0QgoNGsbouFcYfEW6YOtsWMMak1cJ20mMgAXKkn+2ISjUDZEWRI7y7yl9led8zj+MCC+Qf923Yd0OoZcyCKNYpiqI/bFG8bg2UkU8YoOlkljI5UFLKgMfWukr7qaccWTGRxoKAKj13drhWLM527cYqviiuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746508194; c=relaxed/simple;
	bh=OE3TbJofxj7rRRRRFNy51v4FbmlnDwQDcdQPpHuXhj0=;
	h=To:Subject:From:Message-Id:Date; b=D3OmxSQAR6qM06Exjvq0tHxuXPBhQMWBOHZWetE4bf0w1K/a7hCT4OOIVBwQRBliauaXnJbyZrFQBzMYc6r+hd6SLZwA3JeyRkT8GAKZ6FF+OSifI1DHMOohbu/x9uePi1vVcCllIbwedgZsQrjNI1QKs5G8l79b3rJWdyjGWw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYWd+5A0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYWd+5A0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBA3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746508193;
	bh=OE3TbJofxj7rRRRRFNy51v4FbmlnDwQDcdQPpHuXhj0=;
	h=To:Subject:From:Date:From;
	b=JYWd+5A0MOU53DM9L/Ar9/kPm1CbAFb61WIb1AFTMLjr+xST8kt/mlYcRihgJS3Ar
	 lOjDb0pk1gyBXLhNJC24tDwT5OF2LBtArbT4JVhqu5gK0z0gxXxZE+TKVGth6lCFQg
	 3uE9uB3jhchPKTJbAj995F7e43DlIbqaNnLHEk9DNvtat1VtbBqy/xt9BGZFF9qxw0
	 o5HKtMNgBfbbvE06+9xV6WDmWbuOyFQhEQ+rN/lBdqool6VaVNW3JRvY2DUH8jMmpU
	 MA+w3H/ku8j0Urm2kUU3rHlAobf6FmLau8874LeTfD/Xry9myFu4ipaukNYQjehqEt
	 TJKIPSFu0cdGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11DC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650819357.29062.12943962323118375183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6531c1149a632cc34bf638e6b16d60c28d1b58c8b829b1a4df906832588c1b25
Date: Tue, 06 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746508193
