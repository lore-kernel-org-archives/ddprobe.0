Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF0C31159C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781180194; cv=none; b=c1C+1gt3ILJ5QWw+Lc3kMDsw3YkmQ0TcP+J/9+IfKUr0oR+lDNnfJfaZgmPx2z4zLVy621hnT23hbe2NNtASP1J2N42nCE+wv2HnrszMorFcFNISIDqLjeyHFN4YXm9Mg+Qv2a1OOvs8gBxdTLLk2bizIaRfyWMt6hA7kCqnIP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781180194; c=relaxed/simple;
	bh=RHUgZU61uYBLdilgtt0w/gpTqvLwaiU8LzC47JsITsM=;
	h=To:Subject:From:Message-Id:Date; b=VvE72yz2Iezw/20Bv7DH24FiMz0Y34WogwRZISZypBvXSuAePn8bfKToNSjvOYAwgq2tJ45g7Pgs7eWskfVaupvOg4qyNZYvYt3sTI1XstJjwJZ1utWt0RlKyRJq2WMpVL3Qs6pxp0svHZVF+cLct87ntmdkd/vCR5m6+w6h7zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8Slxfc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8Slxfc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB380C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781180193;
	bh=RHUgZU61uYBLdilgtt0w/gpTqvLwaiU8LzC47JsITsM=;
	h=To:Subject:From:Date:From;
	b=M8Slxfc+ZeKwr6dzqhBWn4WUDPEKo7GgWTAwUYFO5UEbXgYmClTl49EaZgmlfBm63
	 dEDWmeSSiVrpvXiEFnOJeDeRO4QBGa1C/82Xvc8vVcUGk35b0FC9AoPBQMct4pUrJz
	 z7p3Jf7aPozgJcpwJFhndX2oLpHCARU0HxFmMlf4eN5hrMxcIrhKfCPOY37Gtjnwzz
	 of+GEShhXF5FXMv+dmxhDJdklWhsL/nSK2Sti7khMZvB49DiYGhqI5P5ZCztmMBE4P
	 sZCXIcbmi5jPnmgS7fgssahAwOqkV8lPVC8sT3f6fbc158JoDHd2gD/vwXy5VvUSVr
	 ie3km7gfNBi2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF86CD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118019369.1775.6000825382625008457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9075e4225a05e534b4d29f5fbda482a93ac13a242a6d21ed4d2a118518d166a
Date: Thu, 11 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781180193
