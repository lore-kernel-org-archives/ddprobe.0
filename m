Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8CB2745C
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765060974; cv=none; b=glSVsFVArmUROqJlv2O5DV76dGgKFUZIxatIY799uWEXcZsZwjBWIABWi9M/1Y6FSKvc6kg9mD+f+NknO6YLoU28qxRaFybj740qceHi5QVUtRE2oMHWYeV8ZZEQ+qUoiKcj44s1ycCc+4EQicWx3CN0Bzsu1pginYCQeNsl1ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765060974; c=relaxed/simple;
	bh=lUqpWvm2MNUNGYCBBEiJR2UVl2jxc/DyYUL3HHkKZfE=;
	h=To:Subject:From:Message-Id:Date; b=e53CfEj4O4QJtBvPo68CST7f41STgLjGTA0F9PMVDb00fNwobLbf9eEVxfx/1CHa2ryX3szcWdm5MVk0my5JXq5SkkjceRp1U8J3wPGYJd9zJhzA/wdG9rzprz1RPgXwgdkUaaAnXwX+vdykIXSDYoAAu6hZC5wcY3jneYy2oBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+g7TqCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+g7TqCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D86C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765060973;
	bh=lUqpWvm2MNUNGYCBBEiJR2UVl2jxc/DyYUL3HHkKZfE=;
	h=To:Subject:From:Date:From;
	b=D+g7TqCGXDGBCl9AVhqAR/lyeWq7XRFsTFXxQ3ceHkKo3+9Z9vIRUvlLafhakNUzs
	 pG374OzLdeaMoJzIjyrVtc2rxRlNAtaGMbbIZOah8VIZrXMAvpS6wNzmJKHeQ1LP9u
	 /GB1AaHFRfn/2Nv78TLFnsAlOunvvDsUPuJqg0QbVUehUCl3IgKQqluGwKTT8UHkqo
	 CXMv+EaRqXMnw3D5VrLWOMjPGSkuDEomHMcbWysVy+2pjhnyiqWKlNjGQCQm4bcW+C
	 mlwc03y6U6kblUyNU0kg5boNZs+MAZHWMQ9Hwi1n9nIehCR+UrG1qLeqSCVUoPN0/d
	 Y96UIkGSfWuwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDBBD3B7E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506097359.16597.2535616711159181003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc8c17dbc373da551ce9cb2e85bdaab3422de2e1b73f7d66eb83dcd9bbaf7f8
Date: Sat, 06 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765060973
