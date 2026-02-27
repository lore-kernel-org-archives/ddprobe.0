Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EDE355F3F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772178894; cv=none; b=lmqOg1FVcqgG/tO/A+hFNu040bpC314elYVn1s8q0RP18MOD0CTrSCO4NPRLtEGLp9SJMAtp9jjn0B+D+PuuklgDLbuCKvK493Nb5UPXlqFsKUrdW5C/7J+bxIGdZuk2HoIikG/IqkPPhikHPpoSYbkZoXaQpLyDq6UYFKsXBpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772178894; c=relaxed/simple;
	bh=Mj5KjH8KAg7HCvG2F/z/AMh2EVNLbXMA9e4/6s9SvWM=;
	h=To:Subject:From:Message-Id:Date; b=aCMsrD06ep9VJA2CYt2psFq+lYvJEZKBl4aFTaNET8Ox5Enksq7FR9BqM3Gs6D/qUTzD66+nfoEypZ/Ah/HBXkMyqxQJ8wB7P1TLwJkJIBU4XjMhLfioYnQT4Z6U8X3rESZGY1P+JN44cffYk0O3h+JYyaM2Dzm/UL2mwwGERmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBKORIXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBKORIXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F170C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772178893;
	bh=Mj5KjH8KAg7HCvG2F/z/AMh2EVNLbXMA9e4/6s9SvWM=;
	h=To:Subject:From:Date:From;
	b=lBKORIXZgVjiTt8eUIL0AyLs6WKSHHUEdvBFtuycl7FtVVuF8BVSxiX6HH2aDVC/X
	 th5zltRr+uWnjq7zGpbGrfgc8GEw8o3OOoQbGFCkeINmi/zZrwVvAVyqTlwWeoqQ45
	 YAhUKg9Y92+9U/AdVpJbkEJXW1Vf5QYnYGg219fuJJix6/xiU5472a5iAQVE1AEdRn
	 Yf7+8N5Y/tsJGQWqYfmdmztuNzX0UPtelDqlJB/RiseOz3fqxHzTF/MbeAndOiierc
	 bZO9i0EvOHddeAsK4u/lWR5HTmUF4zppLGYoUSeqVcrM2LlKLXGfKHIzijoWlvsJNg
	 pp6gl+JQE7mEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90937FD530D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217889358.11245.8846265435562282871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ca5738038d12cdb73156b9d7e97619b7e1ca5a6249ed3f7b939fd5bf03e6ef
Date: Fri, 27 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772178893
