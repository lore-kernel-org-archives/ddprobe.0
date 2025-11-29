Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9B08635C
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764380574; cv=none; b=f8PihGwURx9SxE8ssg1nVgzgVXI61wIdWMSnptBkV5poU1U3ULuwd0FdtB9kcPQRcgPS3BqHuA0T3PMmvvzYsUWopenDQ3N5noGw+jl1aXZx/11NOP4uSekpjDuo/bwTTmaY3nqexaPH9vpQSRGrLvhlkhF8XZAN+pE6y9XeVMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764380574; c=relaxed/simple;
	bh=LrSmvS96UvPWhxUE+b1JTo+IPNZib60/eRtDucElS7g=;
	h=To:Subject:From:Message-Id:Date; b=cCLrsL/fq/8HMPZSPatBGhJOnsU1THOWvd4CW6235FhDfpXpY7TWdI+Vwv1jL0tm5GD+uGt1CtM9zVQwVkhjcWTWJMKZT7TtE8mJTdDh2hKftdjow6vXHC9UpjTRSorrwkAxrm96CInb/Eui7nJtCYjdwo4tbhwAiuwSKsoqut8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHUyKXHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHUyKXHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F94EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764380573;
	bh=LrSmvS96UvPWhxUE+b1JTo+IPNZib60/eRtDucElS7g=;
	h=To:Subject:From:Date:From;
	b=QHUyKXHZ8PjePzeQc/uipvm6yDGPm2N9yH7tw2We3SyJW2kKj166UX10EoG9vzbDg
	 0CKIgBKeNgyNqjEmiIBm2XVkw1O5bx9nn32jJxN5y4+mEjslGuTwZicwFfUEm4yogT
	 grzaPuqGXoVqpRLCvHnA6ub5DysolNzSfq3vKLr4M6TnMrXH3812JmXadTCVNcTuHE
	 wL36BpHcgcprLP1NgHtGZ7/3ZxVjjiqGUJ1yjOQT5AvjXORH1kuY6bItKmnNSWBxDp
	 VJRRN8jrdzNX/CA4h1fXzu6PJIQP8VHwLkKqXMMZAU8dDV0F7L2IZCDJ6aJ1C1EAIr
	 VeRCR3TXh+9Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD2D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438057358.2555.4256551802731448406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30842063d6e6a8e13ea80d703f39effd5b39469dcfe0f787e5c3232f4e163fc
Date: Sat, 29 Nov 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764380573
