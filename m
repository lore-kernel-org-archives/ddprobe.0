Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366611DDA31
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745705394; cv=none; b=YSYLf5iOvBYsc98sSaGFo9URgVaXG084U4O/lwIJdk4mw76tWceoMzW8dc8UV4wtUJVo8ko+gVUAjAnGjnJ1+Z26pDwLp9MGz1/KksYVFwCiGnuORCf7QxKiZ9x2PNtrmXU2FdaL/3oW9NPZTvIesINSDIAKjaczTXJgtazxZkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745705394; c=relaxed/simple;
	bh=pjmYMGWYKJGKdI7U3S/g9zar+NnO82sO83iMbWfqk7U=;
	h=To:Subject:From:Message-Id:Date; b=LqzfondQatNBXHXFuS8B6qKZ5o/f3w29x+0RBwTeNxmc1QQ1jfZ3UcKUcw85LdEyU1gsPZy/1uryYYSOuT2ziUx8/X/UGd7pdCututAk7oGf1xODQ83u28urMFvo+phHSX6SFSmFeBc2byolPBvLY8mkg54FPO7XpXBBPy8HRoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOnAUjs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOnAUjs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF7C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745705393;
	bh=pjmYMGWYKJGKdI7U3S/g9zar+NnO82sO83iMbWfqk7U=;
	h=To:Subject:From:Date:From;
	b=fOnAUjs2FGsFRNecfygSP95qJq97seEMF1KMWodB/boPwPFUfY7Rndx17XkPXyv8Q
	 uYJRrXAW1zUZd5QaRWJicBMmI4MC0yRTUitV/wnQu3c0MfajJQQJN/0HlEs0w88Iuw
	 hT07YGj4RhtEqT3nxm8K8WMkA+qR3aHLOV6FkzNe3vdUiorqp1EVpOZX7zLf/74v+8
	 hXFxgrPCYr1Puq8o+qpFlY3kIm4vMBmHG8jZCLO6621E3yflr8/zSTF10lJuW5Aa+O
	 GgqOUsebGAAEg6eIu4j/uEVfX453VX9jCZ1gvdvKtNhUZDSK1IYem34S0TDHF9iS/P
	 31P0pbDz/TDZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD98C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570539358.17587.6041291481719071656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f21a949aaa466fbea4b3f76a06a4b9e32f5025ec6639aeffb6e9a4f6c9c37d9
Date: Sat, 26 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745705393
