Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12998330334
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772195694; cv=none; b=dVuIiotwNGdPEECgt0VUIiPWLLXSCOp7F4xX17xMb403RL2MP2kvxWIBAt2mJA9+evoC3ayNWPqvbWm3AssreN4hkBAJLvjg+sDXh5QO2HXIsMG+GXVAKl+b00+cuh9NA16FgQtOVwhfWiBTv26uC6vGpJgrY4nANXVm8+njXKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772195694; c=relaxed/simple;
	bh=JKw1BADO6TDWctVsYlCJRvYFPJ6nTeka/ZrT5FGK0Yg=;
	h=To:Subject:From:Message-Id:Date; b=CPkasR7X2LdmTFnjgSAPGITEWc4Kol/mcr9Mz+zqcab4suLTJ3/kwxJsdbFzcwW3/h76PU80+1XT9HVGZb5VoKJKiFk0cozVsiIVkcIrlnkCn7MIjGQ3kHSAe0KuTVMP0noRIZuYkgwAq3CsZEN06prouri2HTLwYXY7DHoJjC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDgRzYKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDgRzYKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0678C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772195693;
	bh=JKw1BADO6TDWctVsYlCJRvYFPJ6nTeka/ZrT5FGK0Yg=;
	h=To:Subject:From:Date:From;
	b=dDgRzYKu51Y60kUnmj7hxAgGTiZTyKMi+789E7dqF0q8xdwHjSneAMa7q8FWscYQM
	 Y6wGQ53v8bdgCf8kXP5T/3dIGAaQiPiLTxMkiwgUf1B/GtG2Nk4zIP2tOrEFzL2Prp
	 zKXeI071XtQhHUKnQIiJitygwL126KJwAyj1JMb2yohnm1NouJQiebF6ggPPybSpLO
	 ppouLh3iMAYH0fo14tx53QmN8ap46vZmS+SnwMiYJ2dIRuy9XXKjb0YXbxUqYBwXfZ
	 dGBz78QCbdhggLAInN6tBEoJPHJoTR4QOWYJ+LlSw5bv5CJfgUYcIXv+EBNlYVPAj/
	 vZ3/zaESl8vIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F4FEFB48
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219569357.11007.14422435097665285345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716ea5c581b54db387bcd83a528001261b40dc68c499b74d4ae3bb7eed516f77
Date: Fri, 27 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772195693
