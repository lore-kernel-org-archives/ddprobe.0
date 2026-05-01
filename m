Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E8519DF55
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777618054; cv=none; b=Idm2TGbsUQ0kycBP9BKCHqvDk5l7Ty20aZeXXKlMINoHIP1JGZDMfmWqs0GpRMGQrE64rRMz8SlOVH3xVIMyQX9YYJexmxYmiVsYok0GuicCoT+Y9Bay/II8M2GgDzvq9VXw94rXXBiEzzq69eL29TkYI1MpUaTCUPIP+u7GhO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777618054; c=relaxed/simple;
	bh=NymmyGO91FsY2Le+CfGw49xqda2xWyx9tuJwSPvCP6M=;
	h=To:Subject:From:Message-Id:Date; b=RRqH7AHDVo3oKg9k4HBUqFJANtJQcw5ALTBcLicXnCaEdTmU8dGLfN++R9Pw4k594joJREbU2Wpv5Ri/3pT27DnVenjQ0M0SGUasta3qOtlAd4Ik0kplZMLEtEiJCIXG40s+ZZq0NECIQPsbxylXI27CQnAFKFSH+WPJT3qz7s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oC5WpQ9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oC5WpQ9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2859C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777618053;
	bh=NymmyGO91FsY2Le+CfGw49xqda2xWyx9tuJwSPvCP6M=;
	h=To:Subject:From:Date:From;
	b=oC5WpQ9bz9pst6zEP5f59CnqE4zXv4wa1oQQKL520mU2N7K22K0GC6qb+Sn5/dg0l
	 nLGKoAleYRLa4xCOXaV6/n7VVjjQ4q+KoWW2Zb+8P6MKdRUGH3LLKs/eCcKbsWEl1P
	 tS9O2ctYJDtzacAVyK2J8bw+4uwgbK2x2LXOg3kjDXVoakBazOx3LL5f+crd6t3DiE
	 2g3IvZnvBjgTyxP/N8LqCg4HiX3jBE5OdnNQt6U9c2Q1u04G0ZLFgpjSyvCQIoH38T
	 QRcRxWhVZlvbjcYg+jlKseUFPlPN/SBqquO1DtgZ6QYRYmjHv8mEIwG3PRcKroinqN
	 VF1veVAG2vkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEF7FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761805368.19377.3556854717989825473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e83e06c9a5b2d2ec8a2a2269d0128f8ef09b9fe8333096fd415b33d73f56e6d
Date: Fri, 01 May 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777618053
