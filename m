Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7C320E026
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736527554; cv=none; b=rvoJXcSZMP8H7CVtVZlnDhbTMduWPAEN4nWqxRNm6r1lch9BhemCMzdz48lsPZnA9gnzUKxEePHoVBEw5kNSiGcP4y3str+u+b/avBFyNYgQckWzPbGFoyE33AcXm0UYjtumiF+kZMjb55d6x852yUA2mg9MSC5xn6dnrQYohpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736527554; c=relaxed/simple;
	bh=7mIlR1uX7CiwRwWhi5Ji0FcofGtOYUebi3+TBVbqWJI=;
	h=To:Subject:From:Message-Id:Date; b=m5KrnzESL3JCfZWApQtrCfaE6hPklP4LL5k+2gvp7OpRduxPqXtSXS+LVSbNj1G30sF2Xyppb/bTZ/ryTAn+YuF6l43ogsrwe1Z5lnbHjmxHbseisTSk6kTtgdCizf4BrUtVDkNIwfpjHnRgPCGaVSiFAL9eUtSXic0Lu/Fy5E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTFkgVSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTFkgVSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A666BC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736527553;
	bh=7mIlR1uX7CiwRwWhi5Ji0FcofGtOYUebi3+TBVbqWJI=;
	h=To:Subject:From:Date:From;
	b=dTFkgVSVnCUo170/YsH7GPMASYHHJRTfxvsqB0y2KoS3ZZD85uLdKqS0bTVlF1ZOf
	 mPiOnkZKarmUoqwsqYy+qMYrFDmgPfPwCp/Af3tn4R3saYvRz9895vRFSViP/JOfrx
	 n3x2yb4Smyf0+0uSidbyB3bMkMjo4oZGOtglcmDlxAc+VyJa9MPheYMIWoD0c65w5f
	 QrXKUk00y9vCG+ikrMDyPKSXkrfbSnc0BukWCZff5E6ozNuw9oxlW0Ko2v4ZOfX9s6
	 LUQG0LRXbmyR1tY7kK4m/x6qNKfpJcbMx95nzRnpj+yFPt+5JJhE3QCAgUWIKSr6EC
	 fbY+VQFm5HLRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94080E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652755359.32536.5273282152377903582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c234065d5cbd45131a183dcd7f67f999a666b7a1baa2ede4c6dcef26ea11c197
Date: Fri, 10 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736527553
