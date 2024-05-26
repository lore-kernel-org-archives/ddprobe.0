Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5C2652
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716697463; cv=none; b=Zok673KhVd6i/TBOOYFTSJxxRraTwhm37RjljzVaA+ZLONJUeUe3XXP9CPOfnRN3i5YmqN6Yh/WeYRMW5DVecJTHAdz7mvYqNCku12kjruCHS4cEfM74JEoXjS6aw8D6/v4QvciJjyRk47WPpNTMjYQU0OW2patp+yxFeLbf8pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716697463; c=relaxed/simple;
	bh=PZxkK7PkI0MR3lZHpYu6koo1ND5/siQG1rMUWWhDmAw=;
	h=To:Subject:From:Message-Id:Date; b=pq7D2Nih3CCxquKDcs1bRktnqxCLTmWtQrxcpF5ZPyMGEG5/6lUVmq+T/3Tk0ESdxVE5R8G23+wmac0+fvwNuaLarvmG43l0h235beSJMhkJ6b/kp25CEsLXpZW20lK3A2Xy/orWBIuwTpKAnyoizoCPGJla2gu0ZJD/Lh/0b+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdQ74YvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdQ74YvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7780C32781
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716697462;
	bh=PZxkK7PkI0MR3lZHpYu6koo1ND5/siQG1rMUWWhDmAw=;
	h=To:Subject:From:Date:From;
	b=kdQ74YvUQJ7oLI9NQC8+lOnioRRfdiqWywenvDR4egD9QUnb4xljkhhRFOcwH3wIK
	 qXje0GFyKjpZ+ecHPc1GLwlUyA18KwJ/qtgie/tRdRlswJNqKrug2zqoB+OlwsMB7C
	 L9Up2C2E4VuwPLco3shLnGyRX50rEh8fXOa1QDKGtpi9wb0tIl93Twm+G+dZUhi8kR
	 wix6jdZgxEIhzDDxb8gHpjPzJD77fuZEVeK5BbGFIzgPHZzQTDX1bcjB/npryhJs2l
	 7bujJwURsKPbLnLFxeFnZPAr7PfDjDk4Haft9y4Ry6EheoAhCl2TAD/SL3GlTQB6ug
	 9uy89F2FZj8MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2792C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669746278.19825.10654957101457211978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f748c6757934e842b0585fe71fa4f2f74736dc841a8b107d674dfe403ec5f9a7
Date: Sun, 26 May 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716697462
