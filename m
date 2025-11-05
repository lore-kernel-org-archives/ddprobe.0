Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D33F33BBA8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762361994; cv=none; b=pMhxypxFsd/PWOi2TkpH8WbKLdmZOje7/bhDVTMNLsnIdXQbUW5Ex/F10N408hAfnBqLeUofHJfsASkzBncca/LI9Ym1JtT1bcs9mzMM4Z4CJvbNbVlNeFGo/T3dYZAfKl53J5beN5XaKzbK7twSYjjPjbRs9lcAq8/WCGl38PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762361994; c=relaxed/simple;
	bh=woNBSlNcB/2xENgea7ExXFV1X7nSzkjQYyq3d8c90Vk=;
	h=To:Subject:From:Message-Id:Date; b=UsZG00oOboRxXRT1NHOX0haMgLLI8GMAUyGq+2FcUKkPkarTI3d8O7YKapsSZM7GRkw6+X72+ndIlGMFLVWoUZz5zALT0DWWL6WE+cB3cT7+0FLw7Sxh8SO6UXYI2eLVOU8BZ4ZAhi+s0/CR1HnGZ6uN+sOakj43lbxb4cCVQl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z80ONVOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z80ONVOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1BCC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762361993;
	bh=woNBSlNcB/2xENgea7ExXFV1X7nSzkjQYyq3d8c90Vk=;
	h=To:Subject:From:Date:From;
	b=Z80ONVOK+OkKOSz69oYu+5mc2b/Tc9qZLdDjD/5hggKZcbdS1ko7rjaw2L/ZZq07r
	 jlgM2nbyY6jueY0SCqVL7ZRamwWmAdrlK9VC7z5XILisFZ435qPqqcjEFgoC55HIzk
	 W24dZzRXHFPYUXn2TOLfPM7X2XFL6LZVmu4mpFAB9ZG2YEAB7cEaobPAy7R8Fkgofr
	 H2t2dUyxLUxFKcUmyftsgpgR8+BqNSy7CeFh8gzpMR7DWXCFfB8CtWgcEd3b5HMO5I
	 gsDlBjt3ZRq8BVW6X0VsMciwXiIB2dSRSPucxdXBrAhJIYG58xXZuypI+mVXQM7oBo
	 8ppGHFN7ys98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFDCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236199358.9781.7832259519713152862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637bc0ecab4543df1f3dbeea83d1e9297102aadf69f93eaa2f0ddfd5074252b2
Date: Wed, 05 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762361993
