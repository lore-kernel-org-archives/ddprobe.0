Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3812857CF
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766372034; cv=none; b=fIdaz7d2Yx+KN72iVTYHtufqCNvHENbYSEqbogK7drNBvVeDVqfqgUEHUVQMc91ts33kMb9mnDPKrXvV6rIv1bLCVpz/t/SBtmxnWGWHCQwzzhts9D5SmSV1PxroPdEpsl3PvENI8M8Vdb+XHx2EIcgWW0BvUxpnIwhEeW2BziA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766372034; c=relaxed/simple;
	bh=Ij0VRIwGu99ztbvtT88zDqVZRzF+jQdNEtaII8ZzKHc=;
	h=To:Subject:From:Message-Id:Date; b=Vuc2uRKt/3vh86I8oUUdVEgw4DzgAj21Vq+/BTp27Fg1YRSOSZ/SfVL2gMxcchr/UQT/rCWJlDrEx+IXOO7FvwgpIQMNXprBfWW+5X2RlaxaFDYEY89o2T6bu99tVmyQLO4r4s/hlbcqVUMZOBdHDAwBx/tk479epJH190b0QY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMe1t4yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMe1t4yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A576AC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766372033;
	bh=Ij0VRIwGu99ztbvtT88zDqVZRzF+jQdNEtaII8ZzKHc=;
	h=To:Subject:From:Date:From;
	b=rMe1t4yhrf8ZFHzrXP/LAAty4I02eU8Je6p8pfyk1Db+ZIvj/unIlPJHQ4rArH5q0
	 hhLqy7/INuhKqIOePniQIm9HmF7c1MmP1X9qMSL4PMrTh+dDFomG7NNPVdZgJKHb4n
	 UpCstvVpoZAnLcpwf5hvU89o/VDG+k9mQyh+W7WTC2CbigGHlYvg72mODcZTEHi84V
	 k9AbDtFPKOKGFbadnSOv4A++GwlqHsSWYpCIR/edRWmuy6iS2My6BcFrw4GweFmN6l
	 0uvjQwM5WcITadQoKKurlDfbXiArJkS53sCq+8z2uJvyFqfFxXr1M7vzWLm+HY/rS5
	 e7VyUMjkQQL0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E3DD68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637203357.21512.18164983395913386705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d2c8f5bcbe12aea56295135a9d14f86cff902ee19f7633c75696448a719f9f
Date: Mon, 22 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766372033
