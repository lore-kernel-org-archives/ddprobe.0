Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DB615AADB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726554954; cv=none; b=V4iTOoIXj6m9dut37GIpwNk2HNB7BwIPPNDYgcd/MSkjBuwxCkHEnJmHuN/E31TdP4DeCAjp6jcthNrfglwRw9hZ2CxCVqKa8AniJjdIsTK4EDldRaRtPes6Tn8/TNjc46TLP2CpyxAJq49MgXKpQQ5jT4Wo7vgk0r3QOdpJSe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726554954; c=relaxed/simple;
	bh=sPyugKaJx/fj2Fl/vtaJG6B5dorafdH23OBxV+bS9UU=;
	h=To:Subject:From:Message-Id:Date; b=BsC5aXJA3KpyhPpMAgI62Xty3XrxCnvjBf9P6hTdOIWLjwWMrMx64xllI7IQqOwwE+mq7LgtiVFeooThqEX5Ch6sBER7w6BawUS8bRlMvw27+4d0f5AS2pLuVVUpU0HE89L1BLfBs8v10EzAmIbZ+nPXPK7677AnBJYuBQiVAU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaB9fqxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaB9fqxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F2C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726554953;
	bh=sPyugKaJx/fj2Fl/vtaJG6B5dorafdH23OBxV+bS9UU=;
	h=To:Subject:From:Date:From;
	b=qaB9fqxASQZ5Rw98vQO+IrT5+ixyqwx3K1d11NnZuD+el9+6aJXkgozIgr30rmW1P
	 Brfbn0QBZtF5gI3pV7APsMIlA2ioappdmVoZ9H0qcODJtEiY3A2r/3CVOzjaXLkidd
	 LdiuKuFzxWu7I+g1M48BseavYsTOOJe9QKg8jq24LgJUDM2gt93OKqgDBrNqBY+Rk/
	 tJZyjTzJ5obpjFrMcghiQir4jVn2SxdlRvNZEzp9enVM4J0h6Fjpk3Cmn+4dHRb3K5
	 vY7fjdI3Z3T1e6UzS3+XsUXwxg4rMVez91pTOvWqMRQxm5568rOEmdyhEoxkur6Rcg
	 bykeHpvppOdxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9447AC35FE4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655495359.4136.7765305292299712821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f3bbf0654e678dc4db98bdc444f3dea20e04f784a840bc3ef0d87d030aa2c6
Date: Tue, 17 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726554953
