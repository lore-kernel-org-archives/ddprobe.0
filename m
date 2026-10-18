Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5237F4DE724
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792341034; cv=none; b=o6rbvuzTxjzZVrt5TQtGbFp35JSTztSkvAkcsNhF7pqScrCcaWm4T3YNShPr00RY/a2etl+CXZe3bHvwT0117HZH5zrzH4FyeEq3RWdt09DUlxhDRS5FsVFDPhYDojJeqMDiAFtPCVgPwSrjYH6U9vrWqZ/7HtNLrEsTWsAvRNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792341034; c=relaxed/simple;
	bh=8jIq0EjhEeVRFU7/gursTW1M7R9owkFdFyhZSsxT2FI=;
	h=To:Subject:From:Message-Id:Date; b=nR+4azmzP+nFoTEczhFXsubOl0Nc1fKacpN6Z/pQhuIKh8YO5TfIa2j0h+U8kZLRysqEHP9rIHqs0WAoN8qIHf+SNZO2pB4UVJiiWibG7BZTyHab1NaY5SaHas//Dik/HnaTqTcbOPRXyEcDOH1sGFtSfyKCkVDClpQaiWRAvBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYQtOlVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYQtOlVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34A7C2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792341033;
	bh=8jIq0EjhEeVRFU7/gursTW1M7R9owkFdFyhZSsxT2FI=;
	h=To:Subject:From:Date:From;
	b=gYQtOlVfSiaoLGI/YjXLRcQ/24khVyOOMU1PaMe90mVCjfN/vOM2CwpKjNlESNulb
	 VIUpQdEU59opglTdxzgas2vz72I+vMGkQHJphIGX3MRvCGRUn2MY1u372LyiltrtV0
	 W97CZyzT/MBbcF0gMbx7LH1mmZ81H87MoTcFjEIseFrmaI0kNDN2/0V+evsFKSH7XT
	 Q/MVcV1lalWCvBZGEw8CAOWMninBy57PCrPa0mLh+AQ1jXbz8PVgBslg0mTUJVgFCT
	 wbpevmRHjXTLr/qSdrAq6yU2BnhlhTEaXXCGf2IzvJwpUntFSqoraEaU+1rZCHA6Rm
	 UTOIdHiWxJb/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9C4CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234103369.21030.2999927937737503980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6332d3f75ae7137cdf4e50498ce2f616a4d67d26e166f2df68d3d56ed1132125
Date: Sun, 18 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792341033
