Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFD8350298
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775277334; cv=none; b=rDAm3oTLLKtFEIU/iphNoLRKkLGzrcTyxEZE3tetJxabKLlsD3GaRT/CxkcwnKixvnS4GgIEkcT2nmroGHzFkSHUK9/CF+P7PLN4ef7IY7N3f5qTSnSi2vdRjg71oJ9BbXJ823y71+Xm3reN8/gcqJgGtBc4xR4UxCSU/lPa2Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775277334; c=relaxed/simple;
	bh=j6Gv70Bhqu8wwNqYPbOJB+umd8/1kjHwwMRCl8jAhMk=;
	h=To:Subject:From:Message-Id:Date; b=ECn0KVSdSV89n/oHcbeCzRWTpCuFodkwuYsLrjMFgZ59o7do8y93KaARXNXYJvjVdk8S2odpIIX0tXBeXVu2Jv3ZJRGvFzlcDsLEQsyZujYpgIdN+c0d233W+e6T+LjVy3capr5qQ14oZ2cxxuiHKVyRJpTgJT3UU9300JuOX54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lm5uINC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lm5uINC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CD5C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775277333;
	bh=j6Gv70Bhqu8wwNqYPbOJB+umd8/1kjHwwMRCl8jAhMk=;
	h=To:Subject:From:Date:From;
	b=lm5uINC1HWhtX7MmA+BnhsW3Cl7gGYSZSZbTvb+SZpX7k3/XzEb7cYoW78HdIsjje
	 RtNmLCAJCDSr20VFlTLp0X5PLYcUcCKEfBNezhqTxsIsgNi8izC2JEhKbzOk1YtRjo
	 tAucjjRIZAoHPzgGK/8+vxUvAmUqAnE35Q1gtEKE8BhCG1oS5CvLJxXtejM3CVPvIr
	 vDYVxJgTwTs7NJg8yoJoTCvX71ggzPWRSM3gxjLk19ATaLLM2nGHNX+paBxjv89Cxv
	 Fx5/ZwrVw6x3zbMe811gJOfARGbtv+8S2cNsm9S3Tf0yYy3LTcW6A+LZelFWTrd45j
	 dkB/usA2HUhWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6C2E88D70
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527733373.13617.11126489961354744657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f2668a9f034bfaf0b8c1963bd91f4683e7d9d3eb20f29e410db643c03f700b
Date: Sat, 04 Apr 2026 04:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775277333
