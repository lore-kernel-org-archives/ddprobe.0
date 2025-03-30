Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DC62B2D7
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743367194; cv=none; b=KSh1EPX8eSeb0Z9KOiNR2NfOUS+1RwVEIFylMzDFkgMxDQ7oVrrgcU9XTmOoqBMZgVvFH9NQZ0aAURjxZkpTF1wEonw0zTty6qz+nI1SRCA1Vt7mEUwghOJLueTWZA9ZPelpYrZhf8syNHtxUQlo31c5mj3VMIcB8iy1JkexdXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743367194; c=relaxed/simple;
	bh=GOQLjgUG4bacqueZliFvK7jWCJ6fQ209zZa5y/WmKSk=;
	h=To:Subject:From:Message-Id:Date; b=E5vkJEd62R+Eg4TInI7bHFdpo9XdrLifn5P/NdH1f+HV/K9kyrJSdh+VsFRtHt+u4ern18j7PQNeog1LKZTUU+6LGlUTcIe5HRD070DWU/iCKRiDNQuHNBuB0Kxzcm7Vx5ZvFezcdjVEbT5pJDSbuNzLSAA8tOKX+/K+WO+s47w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNVLRL1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNVLRL1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5E0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743367193;
	bh=GOQLjgUG4bacqueZliFvK7jWCJ6fQ209zZa5y/WmKSk=;
	h=To:Subject:From:Date:From;
	b=cNVLRL1D43G+kr+2fUjWhrfla1H1413il7QxSMIZFB73cy8l2HbC6Me4tqGiQU+HO
	 KLVxoz4RMVYor3FQYNQFW9svWL+TN0EeJb0MCqtCvVvGGUdz4c059gwyMsdvc95Eha
	 vsbsCQOJl5YTOsvr7QjvUb1gwJ6UETK278RLj0KDES3yZyOkUsV9TrHz0n3DJypQ3r
	 28j5p9+eQQYxH/i7TCbV4L9+bB3wq2fHhL66Gw4BA+dO6nDUEk9XQvKC7BSAG13BW3
	 6WLPZB474VzbxmZhRMi4z1oE4wH8afN3pols05C5V/BDPkgdkDWMPMZQNPEaYGhZRQ
	 4NuUQglV49IZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F49C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336719358.28052.3580169302286785842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792f17ec683f1ea6c7dd7da0fce068707b0dfc7186a0383ed5bc6e33da35b439
Date: Sun, 30 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743367193
