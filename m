Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB058F58
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720793903; cv=none; b=dXTRc+AjFRHJ2clZtadnohw4evPaqQh7MJlgaNW2LoqWTTiNKHe6s0nXa4OH72a9Ho6nB1dvnh19kxMo+wFngE4jkhfxl/to3sDHkj9XWwFG1CfPDxtuZgcyNK3oCFUv1s8rBx58/G+dY0W/A6VP3exYnJu5JIUSMMAt7OkyZvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720793903; c=relaxed/simple;
	bh=0yGfV2Ika/6PaQgjKy1HLo+10aGHuIKXcr085NxFQd0=;
	h=To:Subject:From:Message-Id:Date; b=iEW7BvDd7nKSxG1fCdb/4t2C27Sb5tdjDvI35McBt1fettcKeCSKguYFaoO2CIhy6SIGDoPgg08+5aTpiiGF9SdwCh9QcfoavI+PWy8xagugvmOWecW6tVOQkL7cAcIX/CKdOZdT197/xbBP1nRMVc9BfcsXxLseOaht5WExSRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbBmEAbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbBmEAbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBD47C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720793903;
	bh=0yGfV2Ika/6PaQgjKy1HLo+10aGHuIKXcr085NxFQd0=;
	h=To:Subject:From:Date:From;
	b=dbBmEAbMrUkq8Cd6ZqoSVo0Vp8REookfhCwIXvFT5otFdPY4WdQTSe6gvEAuQ2qpg
	 OerOtH6VIEaaLOEpB+TYDh4QSDpSnc9+MjB9q/q/vFjFlA8OhKaDFh4NZt6sE13ZUR
	 XmNsYtJYSNpBGi7qTRqKiK+HMRscDfr17zERO3lmrkJGOjnTavCmGh5d+s0/fDMIoz
	 CyQOmzUNjp7ETXCLoiB2lJJ90dLjAkxIgZbWnAcbbyDCHP/WJ7jRpVt3BFW5c7DIGp
	 r6mNgY2fmJdEJk6So29pYOsH7Huu79WlzNX/zvFkDBsy35hgA12sULE5KU+Alg2ubW
	 b3t11m+6S2Tyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5462C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079390286.24633.8314805149841178223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718c44c1080d950c7cdcb2b30b5f63a5c432675336a1bd84d76a7d5dc59f9b4e
Date: Fri, 12 Jul 2024 14:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720793902
