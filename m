Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28CA35947
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758223793; cv=none; b=Rx5FYU3GRS0mERVjaNr79uvHuFPJVEiUuO+Fz+C1c9np1n64lEuyripHCS7KQymAWJym10Pi0uiSjGAbell38YfqJXvwGQJ1uBKbimVxyR1RVQSlXxX+i8fh1cNvfbpDGYXOaHMBC9g6D82ZnwtGUKNsW9WdzH+7U3MKjFUV1q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758223793; c=relaxed/simple;
	bh=l+I/zs2uCewhiX833cSzahKpvS0argraw/uJS6j2w8E=;
	h=To:Subject:From:Message-Id:Date; b=it6UI7sUgENyaTAbe74gCYVrmHFkBGLe2koS6M/r0tG+qBh+vBEt2v+xoO6GXPKtGF0uN+hquC8LqaSio8LONFEWmQ/xLFgm/sCqFzzUD3Hsk9wktMaWGnAsyecpfIQq0MquYDJbSo47TQ4ucMGfK6s+OCW0AnlSsyT1eowpGww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuTLwHGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuTLwHGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD68C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758223793;
	bh=l+I/zs2uCewhiX833cSzahKpvS0argraw/uJS6j2w8E=;
	h=To:Subject:From:Date:From;
	b=NuTLwHGfOT6F2guJXwRLsk8dfIkYUlhYJLTUX0SUuTyCnRlVjESElKDYPOzFd3jAm
	 8YfDwDFCLJGCRyAHiNB28d+XJifQHJIPbnnwl8RgdHYH8KvhBpsFYIGjyifxe1Yf1K
	 w5m1VI6dtjrvNx+9Tb0DNiQWXedBLwlvEl6d1d3Z5SJ/PYSUAKNiaNis5hQK61kD1+
	 f3eDKlOr+UwCMNoLXzkJZBi+0tVczZm0AsnjDTJE8vgreVjJ1ktINxWt4n2T5CR+0S
	 1BiTH0WXfwWhbppRAl41BWYK9ouLNCQbUSwNOhy++xuEsmKitsyaGHF3ET2+rr9NEf
	 tIK8XcF5brxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D29CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822379358.11113.11439510722522742218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661a4cec52e1c3ec7032df2fede0bfb2e9985d73e2e2623683de26b264396f7f
Date: Thu, 18 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758223793
