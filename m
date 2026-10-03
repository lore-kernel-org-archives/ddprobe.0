Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535FF3955F0
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791063634; cv=none; b=Gi/IQIjGQTEUfnvOSevTuN4T4K3pWVsmbqa4FtLrf7jvuGHipmfR4vmvGbR7evGyFqP0k5IBnHRLODqpcQ+XJQCgTXHcoAZL0hIGzq2b8/7BdoXq6EOXTORcJRyy0Wv/+LKn4IN1E+uQK2XbmkvwIjZRdwa42MvK0T9A/xOdY9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791063634; c=relaxed/simple;
	bh=kngDdPPY2LQ52OkIeQku1/ZmpMAUwboQcKbdUi3ZATY=;
	h=To:Subject:From:Message-Id:Date; b=tvO4Kn4uwcctMptvlZNly2SnfmHaYcGf+6F5B2PGB7Qh24EP4mG0DWACfaCTv1R/rX8Wk9FJXZ4WJCKtZ7QUQTLlVjQDdvNFkw4vkh81+jMlUAID8Pw/sBH9H9vojwD1vBA1isvqStiuqEAA2pDHP2KrSfUs5EjG4phTMvUn8hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbhns1m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbhns1m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0571C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791063633;
	bh=kngDdPPY2LQ52OkIeQku1/ZmpMAUwboQcKbdUi3ZATY=;
	h=To:Subject:From:Date:From;
	b=cbhns1m9YGkRqT+0iCWmpZ0SwgErr9tWVCTgq/uTX9dvVNScW/4TzGWBiPNQ83oO5
	 ttBDxR+15MkD3lfz9BOS+IxD7Jdp3Cf+bNP93Jb6f66pU9+WVd45YZlYuQ4224cm52
	 MMWh62Ezizj+9b4TBWy7/hI53Ro4ZMSjF44CUQVQJtOlyvxjEYIWju9Q00QcYcnfsD
	 JfqYgvZhlzL5r4ykgy8/B2Tx5YwEiN0+RoBuVwYdsxfLXXx+50jo6duPsaFAffKHiB
	 BiEMriQt4ogjlYZGVTOpUJcF/GUFjBYLlQ3VFn8AjpVf8Geyna/tLq/UAwzngDGWv2
	 fHM6DrSNLIiGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA275CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106363371.15650.9867473907064007319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5931f0a17cfe150cd516bb21700906ae5b7a90d50ffed57b1b5f07ccaa7540
Date: Sat, 03 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791063633
