Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1615C2459DD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749443394; cv=none; b=OMl2+8e88qGZ2K48kcFscmXNSR+qoMSrSPITnPytcrzcHwaitfkDftgBmw2D9vexEjtctWLEK96K5jMXREuAGw34P2Gmfm/g8kbjnsBT6j7MR0SC/RUmah5uKu/VV5CYyi585A6qLNO6ronkuppMIF2xfnuTZjpjIxnBjwOvDbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749443394; c=relaxed/simple;
	bh=tIXYi5ipn9XHRuiGf2964y01Xg9TvJewl0aL0HLbXFI=;
	h=To:Subject:From:Message-Id:Date; b=BOi5hWEjWY0o/2bYZlqIQRllO2BH4cWvmWcUVWJ7bmW90Pit37oHp403nm7kCJACgsZsB32y7xtbszc3dKosjt12lwzhJ9OYvQc1cQRjI6hfKf+8z7wrNI6se3ywGClO6Lpb4BsGm7kmnYWlYJxvjumSLPcOOjD2rHHlBN/umMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+4j2qGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+4j2qGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E09C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749443393;
	bh=tIXYi5ipn9XHRuiGf2964y01Xg9TvJewl0aL0HLbXFI=;
	h=To:Subject:From:Date:From;
	b=q+4j2qGuTQarxcRoh1gGmUwwu7ZvV1HcpbAbWwkawx/NKzy93hBVuFdKJyQofevWT
	 hEBoU3i/7zNPEXpKLrkPljr4ZD+xHLTce5eUXQPFlHR3TLdsE5yDdnzo8ENOIbVIwH
	 z6SKF9nrkDk1tqPkuo+tCdSROnMrjN950C3fcvJuNCI917XeCLvCdgZt6weLTZ0i6P
	 FXkG5uQPUzZnDqKj6q4QNZIKHRjw77YfiTgjRn418kWg4vtoWVGiQFmi2nvny4UQYo
	 fxnb6C1oB0vLooNygL/WxHl4OU4Cd8yTODzRPYusWerGTDjDwyxFPgU6v+e1IH7uyJ
	 vlQsfaAgnvVog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E612C61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944339357.30906.12364193637001390558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b92334a53927ed33f27390f3dd3d2bcb3317528e6779d4c85a1568a1c806286
Date: Mon, 09 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749443393
