Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4602126AF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783256914; cv=none; b=TIJkjsBvyU7E0R8F6Ac5wcgtmgj3y8N0sjV6fDNY2oEzwvCdFy+uJSdjFG/gnTIzdUL9mxQMGcGT/7orpN8fT3v/i8mHBV1iYL87F2UwUes6EGLJHmY/cl1IqUbELeNDfq2zwriDfDIWo5fBgQ+vlOLDNxhSYD4NL6PBYB2GgSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783256914; c=relaxed/simple;
	bh=trsvKdTZckGL1FrpmOFd0basDLeclewTB8srx1o7cJg=;
	h=To:Subject:From:Message-Id:Date; b=sjqTvjIjT2dHlEvZQgzkEc1PjJ5m6KV63d4m+x49eb++C4rm1YGjNkFcYbdPQjXSLDtDwfSKoghpWFP2kKmUvIpe1STr1xbKl5t+49pBMp2IASX6hx5t34Sta8iRrIB/rCdJMRxtB4bLJUTdJRHiR7ZghG0TUYkcnp17egDzWks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eivQUq4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eivQUq4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAE9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783256913;
	bh=trsvKdTZckGL1FrpmOFd0basDLeclewTB8srx1o7cJg=;
	h=To:Subject:From:Date:From;
	b=eivQUq4Ri5QzH83ON5Nl2rKDuANg0jouXPSS0DxEk9CGbSQlyajSP7SGtTe2wJY2T
	 zKoptY4Uz7s0zRwRg90O3x0LExwzWkEfjOOBrT6vXXPUFU5h3U/PWtpupXVzrp9SS/
	 hVTdW4m5mDO/NXTNeMF1+exNvcqawt8CBHCj56sIlothWkZW2PZigl/kB5jffrMEx4
	 rrGhwchZucJd+xW+XDVnq9+cp1BbVpTOI95xVnfNyOEPaNZoknCbMl9LCdrfqD3HrF
	 iwJySRtiyjwzOwFtO2SptJXgRmRp/PBSzhvEnYS4sNAbw+iCcDl3/xooaLQloTzw8x
	 u2vCueZ2WuuLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8420C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325691368.31111.2020209234173856956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abb3934f9a0b04da69fb6f1fc649a0e4553239cc56a8fb25d8a44ba21013036
Date: Sun, 05 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783256913
