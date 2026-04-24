Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210F927F75C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777052254; cv=none; b=JaoolH5nEdyUa8zfojGGPxC4gLBmJgKz7y5a7yjQpXZ1qZ6ofKMovTI3hyM69F2gDPYtrsKjJih2u0PQC7YyUBwccW/u+6x+CWWSES7FLWd71GuHlXPRdfM5O9nIhHimUdwenKHSSz5Lw0liL0nhP1Ikc+4Z21AscEiac2Nuvxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777052254; c=relaxed/simple;
	bh=rUc+zK7r8KJczuOyNe3uE9b53BmQddCMV8kjWk7n6dY=;
	h=To:Subject:From:Message-Id:Date; b=p3SFrrlMdMGF5aBl2VsuWOPDAXbC81gWkEecm9vEhXgq+vlHALk5mFn+J/kCyoeQ9FRfAy0itY8vYfl3cXzyicgrkCzidp4uHNqlplU0IyHgFPIux6GoRZJVGBdeRYfYgUK1BusJX2uadAre4I53NBItH1gvwq7RMBBNY+RgM8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjBjD2wW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjBjD2wW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7EDC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777052253;
	bh=rUc+zK7r8KJczuOyNe3uE9b53BmQddCMV8kjWk7n6dY=;
	h=To:Subject:From:Date:From;
	b=LjBjD2wWmD08kztxH8xRwX1dwTFy0+dTWFq7vZiRtbg6Wim2qwwOgRzzAYd6u7Zpp
	 r0RHMDr7YC71en3EPNZvEcx4PmtQxYZVLRIx3t3fgb2JZAnFIZZWg7GK8S5dQvOJjn
	 4f/0KShjNILG02Ez3WM0nXtRk6g4qovyds2aIGDNajcvxHg93iiWVU6h0eA7sYGMjN
	 Xmz9BjzaQGFFEL2UkdZeZBGWAiDLBzw5dKx328gVl/7xhYAHD4uGTceA3EZPsUUIUB
	 AZlAkjXzYGPXRmJIvCUFQsUXysf/yT1wbw6ExgpFwsaZkiBwKKJjYky4m3whEKafMc
	 H58EuEAO8jTVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBF7FED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705225369.29804.943056267984750287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce766c9abe4ad73e618e4a06d77310d3e1d4dc4865b7e7cecbf43d4fb8dc1ea
Date: Fri, 24 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777052253
