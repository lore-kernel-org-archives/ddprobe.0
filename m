Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCDF22173A
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757237394; cv=none; b=UPeu56Ws8VJVd9yf3NDY4cy33N/buwGV0d7n5unX8l5mdCBkgkDr86O9SLtrHx3xSQxlVrCszTMjA3ZBC5PlWxRHZ5YFUpo/ivTP2HPhdVMzbgpfY5U1+8jbz6s6Ele/COIpwsH+RMmtoQutGcvGxWfsMCeoe66JVaW78e5B1FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757237394; c=relaxed/simple;
	bh=5EeTRJ0O8a+qHui8gkYECXBkALZQ+OIv1eADfETsrGE=;
	h=To:Subject:From:Message-Id:Date; b=glsrzD4J8r3RvYZbrVD+i6FhfZApzVFxFvP9DuJulRkoXuw59ynDKXGBHkYNeLvp49469973sOR5Jy35ZDQ+T1tHIpqcgHHN0ylBv3zOp/tMuTPSrJJkGlUrTZEQqXHCXtMWeRU2YlIy9x0gpoid1HR4jblVTC9r9p3A9V1H+m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3rVwIcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3rVwIcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4305C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757237393;
	bh=5EeTRJ0O8a+qHui8gkYECXBkALZQ+OIv1eADfETsrGE=;
	h=To:Subject:From:Date:From;
	b=m3rVwIcLskTSHxgCNDmuUFUk763cWiluNXLf1Jt2DUjKsH248DZZjDHyEdE86ZWBc
	 hl9HFuYf2+yUgXVVe9U3aLrZUygZ1cImjfePMOKYl0dQPJ/Q8V6L0Y0GF7OMyi6FwB
	 zn7S3F9aJa0ibpi9UQMyU+PwkxIo0hoqrvd3a3BgH6BwHo8/j/QH9lXNoPabobKflp
	 aiLTZIG4OL1GiVjIk6yqUKVRpEE5qtycL+mgnpn/X/qoPM8lK9e77k3JRcH1hxmBgo
	 i8miI5cexBo1hz+v76uE0gIxVbOa0ZOtOq1aRpoPnGXQy0xKj9U+THh0F0CvF914Mv
	 Zl0mIO3Aboj5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9221ECA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723739357.16935.1503974193539408487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce385d1b13c1497c0530594ceada8095839aa8db0f3f54fc8cff75abbbda16c6
Date: Sun, 07 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757237393
