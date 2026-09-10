Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C45C380FE7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789018834; cv=none; b=YfIXJJ06aGwxkh4O/lkcH7vcn9A5TBFEQPhzv8AFTxilWHMHc3cK+uC8vC7op70Rk292YLVWzCBr5xrrzUx9G6a/mzZjzfMHt9nm/sN1C6CN7sJDoQ/SB9xuM0h/kGAR/n+LkheT/2vE6dx47lyu9RphQPiasfxr/hEkL4PuBhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789018834; c=relaxed/simple;
	bh=oQ5lXUeIpST01/3X8F5bFjA6ju8Ixam6MtoY5ArdSWg=;
	h=To:Subject:From:Message-Id:Date; b=TsHNsyhw9pwX3derTjESJ2bnhid8h9InxHitLPOMT5w1Etm5Z8kH/c2B0Py2TUY/5//nL8C5jQVmfFU20vtCxOCR7D+FDEdYngOg8rD1FQBULZzchUG4GtESu7PqkUQM3bsaFGYvFG9LOG7/w1CPY1DObmkgtVZLz5feepSUyzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3OlknGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3OlknGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FFEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789018833;
	bh=oQ5lXUeIpST01/3X8F5bFjA6ju8Ixam6MtoY5ArdSWg=;
	h=To:Subject:From:Date:From;
	b=c3OlknGhwX90EBoBDR/+jc+Gmma5HVqopsodX78vWmmBbJ0CgmiVN/E08k0EnEe3P
	 MvMLqAcF3iC5NfJU5kC0+7DAoOx/THwnDtCxKAP0sxitKYnqN9/Yq417UZC/PGgUGL
	 ti+gVl7XIJ1lYAbOsN68ZUZREiwnDXJS6g4zsl3RiCeT+Wyw9saVtmyAMH1kTrV1SO
	 9ApPvOUppkWt73dNxmc/EBwV1g1rIkDrvizj38DSEQ33iiXNSp4PmNfCz64abc7g31
	 4lJ5k+t8xZpnlDJNC32vdKJsE1u8MNa3HJfzAumTYUNAn4qPMdpAZ2U8kKWXHcrfZB
	 zsVZGszepNWpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD74FC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901883368.6684.9004314752697168560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89a2b5031abf034380fcf09c50c9b76f08bb53c91c3d0062e0c9aafebd71769
Date: Thu, 10 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789018833
