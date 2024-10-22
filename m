Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6FA12D1EA
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729592154; cv=none; b=OazkHueaogDM9b94Ze0dZ0IdrpFS+noyAeDeXp8nGfQ4GnbxA4DPh/2P2xR8sAjq4wT3xfmewcsl8h8Dtjm5G9TYRGhUfBN4JGClyuioMC/f2qVV90bOQhSg2sxmx2cZLnN6egUiE7/eG7Tis7EkDU0oIYYa9N9ot14Oo0gfjJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729592154; c=relaxed/simple;
	bh=KaX4mySMQDcq40uEYdQKwDRRO5rccytQ5J49Ko5gocY=;
	h=To:Subject:From:Message-Id:Date; b=kPdDCGd4fjRQe3OdTNWoqkkhp/z52aVnLwkOQidAdWkYu41q+/nv6XWedCpuJ92sRlVJTDf2fzQEGSgM/nHSZ5TjmerubSJtWqXisfukiHaZH8aKoAxNjiAR5ZlDk1/Cx87Id1joiP2S3NTeNksh9NLRns+Xv1KMgKrZnAd2Sfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ydef7ZVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ydef7ZVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB740C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729592153;
	bh=KaX4mySMQDcq40uEYdQKwDRRO5rccytQ5J49Ko5gocY=;
	h=To:Subject:From:Date:From;
	b=Ydef7ZVqB+jrAXbSXXd2MUEsI/DnWlIKFnZ+y7HOLL37XVvG/PHHK0iyHAuL3a88N
	 rhzLEEThmty5O/F9iCdB9LeXXkInOd1Pab9OoUDOYzonYICxuRlEIgnM5JL5omGreQ
	 0BB9W6u5BG9DdF5mbNBqNc+24YQtzniwNJfT0mNTToW3iGhVFoFGyOFihpvougu8h7
	 P/23JZLEwBZQ7CSg2kNWPQiEi5xwMY3pXWb+zAaiN7QxGi+5i2d8A4CS5AJlG8DOle
	 SqCzHOCDGT3+DNHyRzglqC+J1SC5DbRAk0CKlWg6gL91MAQH/ITNfDWe7N7ljGiZ3z
	 +IolgVTCW4puA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF4FD1CDCB
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172959215363.32069.18126487398242038749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7c6924e91908d18de36a2407fa95185aaf0b17fdcddb02cdbe4a8ad0f7b4de
Date: Tue, 22 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729592153
