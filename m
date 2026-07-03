Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107C23B0AD6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783071514; cv=none; b=EbpCrhsyo+oJJcgYAkPdkpfMdESJU5bYGYFtAzcCTDfFjKkWI+E1kSnDxim0lPRBhr0+dePk1dKwYduZfn4h3VnVzl6hm6cifY79g2pAkIAPamC8lTAZvP2rYRCowXCcmRqJi1BO+jJ8jn0ino3f4eRKPZ8ttdK/qRcdl74stkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783071514; c=relaxed/simple;
	bh=rGVo1VDJbQ8mgdomGL/Wb8CwqjQxVsIIcbZY+N35RD0=;
	h=To:Subject:From:Message-Id:Date; b=reQPp18KbXv9rxuju/FcmhqU+DdoIV7iS8r+QuvQ9fspcljcHOAfAH8QAu/gbOE7WZxLrUVkjJQKBwSVlAgdyZ7ioBkbKABFR+RGjbdwzwKLrkRH1RBjR76QLvN1AKB+k5a1f6+BqRukosGTn7bn2qkCanBzmnRU7fmvaRbUHhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gv+CI8EN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gv+CI8EN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2A8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783071513;
	bh=rGVo1VDJbQ8mgdomGL/Wb8CwqjQxVsIIcbZY+N35RD0=;
	h=To:Subject:From:Date:From;
	b=Gv+CI8ENOzqSedOCKkN7UvDrWmqLgcwnmfNMljDiwj66atpPXpzuZ4B7wYF4MtQde
	 /5EYRGMmLJAO49HDpnTQp81xCwILrrOM6sZk234CYdTnfRqsUdxyWJdxDwxZH9+hgO
	 JZuvUKBeGQfPwe4MzVARu1YNOuOK6eazLtp18/Xpg/Xu7vwqwcpARq1IHJzOKkcHQr
	 scnX++f4Rv05XLcK3BioK3HiiYYSUiGxX5dMzEE+vGD79UAFfwiUmSE5ibM4/3UdGI
	 XV+lduhRKlZ1pARXe15/acOFffurThH2GAHyDmvVGol/GG7L+cc6D88RjgZ9Rzg7mj
	 xRwWFB5uZSMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9406C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307151368.20809.1878137970578272305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6de4f4bc9e37b5e3c2dcb747a406b45000a1cf50da5818dcb753eee11f227d
Date: Fri, 03 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783071513
