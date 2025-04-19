Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3764126AF3
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745062794; cv=none; b=X4i789OP5JpeozUp0QVvi8o9YXUm8CWvzN8w5Q2ZXPfHDIR4sokh5XN+4azkbTRIPEeCKVd09vsWMqGta7S+pAnWmn/kEfBLdjEFtpByQkT69yhAoG1OhzJqmBFhrm4YGqTQYt/SrggsUOwI5bazZH2/TGmzdeWmMNqmAx+9dZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745062794; c=relaxed/simple;
	bh=jJgVumDzYL/19a/oOLW5CnaGRBqgv0nVfvuDviD2MXw=;
	h=To:Subject:From:Message-Id:Date; b=Oz7JU0avrF88PaaEXTloRYTlLIHGbKcyuYhgh1Q5HaMEFyUqsq8wwl9ThZJcBCNsVf9WLH2M/gdQMv7slnf0X0wdZN102/3BzCocDYF+Ee6f3H0JsEkJCdtYvuGZ0LqzGlq1AXYUUOnjAwLz7ZPltRAnuJHOWXG6qcO9P5+ks9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSovwKCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSovwKCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A616EC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745062793;
	bh=jJgVumDzYL/19a/oOLW5CnaGRBqgv0nVfvuDviD2MXw=;
	h=To:Subject:From:Date:From;
	b=PSovwKCuuVCpdQ5gPYmmIcXh+g+BiutNMSMQEEgoDLjiJh6BiUgBaItt0ypvi5KRe
	 UGtK5qgkKTuHckXZq5d7orXOTZagXSAZHUvmhmZ26/wbw8anSmCQbJ3h369jmfNx6E
	 TsvM5h7AJTDqEdKflbyy7624XCw+3/x1ynSH4NJwnZ5xJWqvt29080iS5jq6mp0PJn
	 wYgLy5UrRmqtb5sVTr4PVojtCN25yS/Tab9dWpdUhaJBCwjp/CwCHwjnrVXfgi9G1/
	 /8Gs97wPEcfIOkjigYlFZjntwE40ybAg+pAZDgWQtIVpy4Bo2U0A35XhMSFD++p2x6
	 mPTLdS0CRMf6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D59C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506279359.5457.7305729146468756541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae1afa6e6f134507b26f1e354d4df05c04acbab41bbf418c166599d08060dbe
Date: Sat, 19 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745062793
