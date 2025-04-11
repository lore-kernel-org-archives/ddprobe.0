Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436B41F1319
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744383594; cv=none; b=fymAE24tPvmRoCtiea4lX7CVi5QM2p0J1wL/7Is7anc5Ne5AppJA+UXxvY4ygEcSBuOian12P1jQKwqR2OO0swPsUERLuvtmlPRWN9AudxVh9itsRksyo1UvBBGd6AmpW2YCgY8p9+BAQvoIANnoJnkUQbdnvuhAkAFzAVhaAco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744383594; c=relaxed/simple;
	bh=63+oHjpfxc9UdSRzH8r4eWDSGLRroBPbDrdNSbE9Omg=;
	h=To:Subject:From:Message-Id:Date; b=fO/uf9pV8cxnjxYVpKQ6b4Jjy5hDR9rFVLmyHaX+Y0VMc+cM7kBGZvD2GzxI2WWgN9C1KKVuS0XA38v2yUvM1McBslH/DJrQWP49uL/lK4PtKRSUl4ff6eZS+FlwEjQhUQVLqRiW2Z+UrJuxRis3sml1OzDKAMbW+D36+mjGWX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfZSEPBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfZSEPBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A2CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744383593;
	bh=63+oHjpfxc9UdSRzH8r4eWDSGLRroBPbDrdNSbE9Omg=;
	h=To:Subject:From:Date:From;
	b=ZfZSEPBB7WKpprhCI3gSGu4RmyoPo3Yft2hQXT8L5VJtbTlncU4mzXTWcR48u28vN
	 yHCNyOvNFU0gteg8QOJsRdFlcSsyS8ZgcNg9bOmBNkUX4jtoOw0Hl56665S1xL5Hh7
	 xrqTlAAsobt//u/eWzoAOs4Jnpf59t3KDh0ncMXnZuKEp+Hmt9L18SJtVjIF83Lfhr
	 Y6H/MDi+R6CU/GzGXWjnnBz3eYcH3MhvFRCuTu8ZCjeFTUUsPjMLmfblyEBt5ktLXe
	 hsC3i9Pf9bhdyaXfstlfxAgKyzIQ+9zJOZNwZHhDJvHVKu9YikyWC/9F/VzwQJXYlJ
	 n9FE4VmoMoQ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA0C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438359359.12543.4112419703046684900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19bd66fbdcfc2bb47a2cc95a188391e8d099352181bc49d294d6debefc56d7d6
Date: Fri, 11 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744383593
