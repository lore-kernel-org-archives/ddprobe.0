Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402551E526
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739111154; cv=none; b=kFxN/9etZ2tTGMAxuz3jT4od4O/jJno+BRahD/Ehm4yfU74pcG7gWmDVBpaUO++uLKejCewu8P3sNnQZ12Dd7dNWNZFKDgZgK9Q6gaAlXz56mBePrvB6jAJI6h8N2GnSPYdFYPNeLXMJt3m7IDLJJj/JLYqe2P56B0Lnx9R6Qj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739111154; c=relaxed/simple;
	bh=w4WtjLo9iLiK4aKhHUH4HdtVagaCDdb+qrhiesbbrEU=;
	h=To:Subject:From:Message-Id:Date; b=MJBw5oNfebNnrWzvr1poPilenKhdZAzJoCY6cQETuLPt8glGI48Yhy9shp1kWT/Lkoek3K7I0XqYcnN7X6Smw7jDdBMnmVZ6+Lc+BvWUNENloBiVoJvLdRM4gCz3BFFInxbejI7Ev/M39lp3qUMVVoPFHQvPdkdjiHMe/9c3qqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQRAcphk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQRAcphk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14F7C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739111153;
	bh=w4WtjLo9iLiK4aKhHUH4HdtVagaCDdb+qrhiesbbrEU=;
	h=To:Subject:From:Date:From;
	b=EQRAcphk5qyXEuip3nSzJlh/Ur4+FFIoLhYrw3vqueDTffeL7VIcfjEJt/EtKLAoo
	 AVVt7pPw5p372SkNIqmuDen08D/FvSPM5RZomOIPDZUgCRqXhN6J6eZhXdl9enGjw2
	 l1WKYiOXKuYlEhh9/YIGbDjt3cvXK1ammm1t6mbgnq88pDV0z8LToLXldRQRf52ptl
	 8fPkt8lJ+v8nADQ8BVmGl/u63W9NBMl1SIrmNJlOUExnOESHN/X7lACSoaps6c0rIo
	 O30Mx8xEjt5JHjSO9HL5bhTXNfsx+LQndOFwtCVqngtpcgz1hquytZY/0sLUWE1ERk
	 7I4fPLe5AeazQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26F5C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173911115362.26172.6338660130450993338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e957bceecf86e652e87b4e6aadceab3166b06b58ca6fb670b9b536ef86433a
Date: Sun, 09 Feb 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739111153
