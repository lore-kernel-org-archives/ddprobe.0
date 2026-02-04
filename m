Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9ACE2D5C91
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770219234; cv=none; b=pCP6ZFenbzH33w6AS0pAcgvE+yg7zjEvPI34DDgGBKWEr6zbE2pyPMrbhKJd34HmwDtGfo1E3QgzbA3z1+SCtqXrCH2lkgni2Xn/WsrqvrWRkno1vTgK5KWILpobN5YwVku8Sh7X5teZyA1s3ZvrheQyb4rE5l6KHW4QgU+QPbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770219234; c=relaxed/simple;
	bh=tYKSm/GXm2B/mL6BblPy3uekJ3TYSIxBdGDpbw/SB2A=;
	h=To:Subject:From:Message-Id:Date; b=OIoeR5EGsPNLUc7RV7/kpEZ1Hvs6DQgs7svqXw+6l/lTkTqNa0ZbUaJe1z2V9d6y27ta6r3CfSnitWbXe9B6x45jitdIPPaCtaAq9CJJNRdiBL5aNkxKq6naOSkodCYd/QUML9sSuqdOefjRqNhEYcScXsw/R+JmwbROKyZBPl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1HNWZ+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1HNWZ+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF94FC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770219233;
	bh=tYKSm/GXm2B/mL6BblPy3uekJ3TYSIxBdGDpbw/SB2A=;
	h=To:Subject:From:Date:From;
	b=P1HNWZ+QN9hg4pNqyWy0EFN3S/4+QiWtvO+cc0E5bL1WacgD1BvM3R+6n6NfU45A+
	 0p3wxEgkSwtNYGOdJr78SD6OxDtzexBmZylVCfu3qjRL4+//Yj12VoCOLR2jCqfNvO
	 QY1obHUF6EUxItXEsUj009KTxzolS8W9brmd29r3vrLXCqVdl8hqC+KxZy+hCY+O6e
	 0HrtGoujm1dArATO/Z4sZ9WCN/ivybkyaiQPsyvBCn9w/vk8OhwJIT5cr75OZCmN+M
	 Y4o05cOgKNcJ5/7tdhsfdeOCBnR+eCkpb0MDX/0FCCfTcaPTmGrqjGtl40JpyqnCsT
	 VQRAmJg/cDs8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E32E9D3FB
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021923368.13797.4675042453223916756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bbed9542740dfd5beef6549964556739a91626482364b7fbe3de59d458284c
Date: Wed, 04 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770219233
