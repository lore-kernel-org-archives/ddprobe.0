Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8D92566D3
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756591194; cv=none; b=jJMKomlGu58Lt4u22rDyGZCxDu5apIB3xuK9PnGMGKEfRBxinVCVoPoYicCwE8J/fKimvJNyBa0XzK1SUGtK0glk+CrKLMSsgLSmYsFA4vTNsP3I1uV8SGfSESBJAnf8qQNSX85Q08aZiQDduAbvopXITgjuuLp9KWincFYnw2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756591194; c=relaxed/simple;
	bh=SDWCBd7R0v7Qok7COnjNXuoLe/EOq5FZNOBPoeVvqzU=;
	h=To:Subject:From:Message-Id:Date; b=AIbDeSoscYe6t+WUjLZDALaY0BEo9y/kh1axp+W6xK2djC5bi6H//XvBtzFYAbbq9uA9Z/iOf+UtCYet8e89oHczx22Gh3TOb6RCNg3aG4KpSVQOAOZ6KxYauDQLpA6/EHXAT/rVsLl7brmxe3wvt1A84Ho5W/d0Ehp056jQIPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzOuVjBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzOuVjBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756591193;
	bh=SDWCBd7R0v7Qok7COnjNXuoLe/EOq5FZNOBPoeVvqzU=;
	h=To:Subject:From:Date:From;
	b=nzOuVjBYIirdFWhgYSOEJTGLTQWlkuy2ffh1L9+0Igk5SCs9x/kzVhcbVTmTPLIMT
	 KmM6GZ1NqJU5aiuskmWF7cR0P5VK4nFeGhj1egpafWtfgtOxTBRZAzBvVc5O/4DdXE
	 akXrIuXWEUzWKo0Bt94g8Ikpn6tTsfT8jKChR4TfFSOmcCGqci/nwqJCcIGq7s1g8c
	 TB+GDUb4RIMHAKd0BKoEjSBdMFUgcIeuZ6EOt1yUSxkHudWaCVhFnPAiEJk9R6xVAk
	 HrGCDsM/YG98U0BcZmYM7uBVUYZt3KorU2TkrbWBG8ljmfmDvM0zMbsiwVe73HANfF
	 YOfyJifq+SZLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1E6CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659119357.2134.7686950328697684737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c18e3347305ae723c883ac810345ec960f42ed7669a33e737815f95fc58001f
Date: Sat, 30 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756591193
