Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39373171088
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732271154; cv=none; b=nbE5jlM+6snm5voB7wmuBf8N63QnxQvNCAkzZk5Dwoq7Mo9zjJZrOHg0BYugAV8fAzLItJu0FxR7VL/1TbEo/eNe0N6hfhJRG54ELAytIUm0OtnrNh75SEJYOk7JBpyxnZXdAQup2ka0zFkBPZXONxrPZl0tFIBlcErs7FVV7YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732271154; c=relaxed/simple;
	bh=61GqzsKJwmlwHZKBzl1VdlTvTGkLg1DpuW+qaxMyd+w=;
	h=To:Subject:From:Message-Id:Date; b=k5mfKG2YOVMlgYyPDe0qQgI7Q4vlOvOV7zrRBJwYBc4+04KYDxhHhdIi8koqpZGybGu5iy/L7llguobciqhWnsAbHL+JgoGeUYsKHe32OHzXFIXEj9V735VamVKxYX6gUo9t1rBz5HzfhMSfPIHhBOWSp4t3wN6nosy/9XSbPUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDHXDBgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDHXDBgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE32CC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732271153;
	bh=61GqzsKJwmlwHZKBzl1VdlTvTGkLg1DpuW+qaxMyd+w=;
	h=To:Subject:From:Date:From;
	b=LDHXDBgox1p2i0Pkf9M/STwNk3MTd+HtcgXKv8RqHgpKDDPEO/6iNnN5sijd3mgYC
	 P2D9zxTWAfhx3kCoBtdPrl46oQZDLU1fch/aZxjvzL+1PWyhOl0jchiFxoC7jvxLbL
	 /y/vDdnxaghZiY+2k6g6fHiuHeSGBtJvV1i5k4FhIeAZU02mQ92ZuFg4GGCELIlIto
	 jy/Rcx0fs0HR+0WOr6vod//es7NNVCWISF7xDyhbrMCzk3RrMhBy9y6PsgoxSt7itV
	 hY76FExG+Jj6/Je3a1b8mGWnHSrqq7uD1ZougzBx0E5w9sgOHVJb6kxYsjoJrKqzoK
	 KAWhrujd4Eyvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9519BE6403D
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227115360.19067.6559459815236843210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f58a598926ccef0abaae18a94018d9a836f264cbeb695e015ffc2a3ebfa181c
Date: Fri, 22 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732271153
