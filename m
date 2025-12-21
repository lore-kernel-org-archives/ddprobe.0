Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD606FC5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766282634; cv=none; b=I1BFGXiB2L1f6+MgHkpqRhG/9e0V5B15VbhYcMECla6z/L2Yty4jrLpDsUWBB208NL0U52tdgZCX4dSA79AHr1CDwzLrn+Kk0/8nLtgo0PSprQZfj3xjWzWB5rKUNL1+lIc3AnxyqW5JLYqcX+lv9ihHKJC0mxw3fgdt5WJfReg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766282634; c=relaxed/simple;
	bh=k03Ic1AS4NN0bisUdgJB44q48qWFFtbMRsp32h+BFkg=;
	h=To:Subject:From:Message-Id:Date; b=hmOOIjNpCk371jKCC7Wc9reo6LPwgoIKHBWqhnjIA4JYR8jjo48yQ+SDt0C3QVD0EoQfNeF0j27gKHUnzWZHxXTbugA6Bp4TeN11bZXYSZd8VnAkd7Ecd+nLuM8ZCaUUEHANIGn9tI4j5O3rpcbK+xauGuXgGx9+vJOk/dLfsng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkSAulB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkSAulB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC75C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766282633;
	bh=k03Ic1AS4NN0bisUdgJB44q48qWFFtbMRsp32h+BFkg=;
	h=To:Subject:From:Date:From;
	b=hkSAulB0291BEBttAHHZSv8KjNW6kL2tgkRrtswzWUjJ19QFQIg5u0fUfcZAxag30
	 31CZMuaXRzgCU9Kpbyps7F2tIlXZhBJ2qiaXzAAczn+ntBc3IiTs3GakiqogqaOQbx
	 OrUIY4hslThZYYrphMfIf1QgTN1UXbgPjVUMzOC0v1PO+KmQ8kcdmvLWb6/4cS0Hj3
	 N5HegwhpWy2ASioXY0GvD7t1Yxicpk2mIFiGcGaKOEl/6NAXAyF42IcumJciRQwnvK
	 i/i5EQIkZpt1eEI6Hv5NmNm/K21JwiKsx0zTaW/MEoAC3noenAy4s7o3epNC3nhI4K
	 veJjkQSnxzOhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BCCE67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628263358.10352.14525454171235842433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf02ddcdbceabd299d774caadb375c5b4283a7ac8140adfe8be551b2ae15634f
Date: Sun, 21 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766282633
