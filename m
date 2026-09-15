Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5B337187F
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789447834; cv=none; b=EvKQhSuou/WnPsr3GuSr0FcuIrhcge6iyC9eJqKL15fmx2UWGibvqsEzNA+UN3FXycT4zFeCCAbFuzLoPPtstzO9iggCR0VF7g5m8Uu+T4N2AfCdHNRauyNcapIEo8JxNeTM9lMq9JY/I9c8/eMlZecToyKgLp1eSntbkaaYq2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789447834; c=relaxed/simple;
	bh=Mz/yRY7VNTyzFY1HsmKN7N6pGNfw31lTPdg9L/WZJl4=;
	h=To:Subject:From:Message-Id:Date; b=P6rfXtgG5lx+dHay/MEszwsxiq3ZGDagcJz7g/Hwy1ubVozwxeIwVmCBVY4V7ysCGBQyCWxwitSGI4pqEuQfm9j0d/CI4Hq8fE195j2SzehlU0iJkexr9GM2loLf+inDFbHqUP2lsL2dvYOWcSlCd8300NiShySMFCX7KRn4PTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDFemRTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDFemRTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE68C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789447833;
	bh=Mz/yRY7VNTyzFY1HsmKN7N6pGNfw31lTPdg9L/WZJl4=;
	h=To:Subject:From:Date:From;
	b=WDFemRTv3HKfrDjqFy+mMK7UYf6cUksoDPC9AJBAotpLxrNpXqe+WwsTCS8XaWZ5g
	 UnKeYZC7qnQA7xjtY4airS9PQwLHxGGWBAr62o87Y4GbA/oAFgpRybWu6wgbB6UOU/
	 8VCrPZFKH6C80DN1EZCTcAd1ZJyd5gckHy9sozeEBFOy8EeC3/WqnsyEeaE1e7PLHe
	 /b1hc0sPvjCacw1tOA6JdKvULOVESVQWEVMhQ/ROzbIfmIUv3Xa+oyCBwcU2i4+oL4
	 H1H/kuo5lLdixF+Tpi1q+s8CaOO25R2vAR6tZDi1CFnHFa/J0xAk9jRcNLN0II2KLp
	 CwFUMZDsEq8BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5C0C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944783369.23869.7328854363495668018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae939d56c3dd3134c539e4952c05116a27d5d6ce6e78faf337230466cd23f52f
Date: Tue, 15 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789447833
