Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1CF224CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713083363; cv=none; b=KgbNNNgfNrmvgEPozPN/MsF6GNrZrIocaIr5mn+WC91GmRrxVzJhR+tbci5/6ycf1TH81NA8pMmMZRd3SQQyqTvUXKO3qo7h6IyxbPVoDQWn+MDtmJeGkaouqvdHRA680vx7duWf4Ro9AVYd2tluYQw50HY2y9e4KZYtcfMk9rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713083363; c=relaxed/simple;
	bh=eZu/cJEnBbA7SOJ6nYwgG0rrjusbVvUdncV3vR8qTrY=;
	h=To:Subject:From:Message-Id:Date; b=XoL7k9TqbUjJUTN5ZuwSmPnQ6aONjKny0S8MTtGvjbjtCbvwh6yQ/KPBd31FYIm732KDxloNOmX7F5l6W1xQ8CXi39k0BFJNxeYl4b0DIZjF46YTjOQSRm0PwXbzlWcawsR++Z2yuwkcCYA4Ywto038hEGffNNaiSOA06mmeLfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFr43QuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFr43QuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29C0C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 08:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713083362;
	bh=eZu/cJEnBbA7SOJ6nYwgG0rrjusbVvUdncV3vR8qTrY=;
	h=To:Subject:From:Date:From;
	b=MFr43QuEjZ7IwVJxPCHZ8CDnQdW2Xcs1+rlgK9wUru3dAqVpVovw7bTiUx3n4AJdk
	 3BFZ2UlKx2CI9/8cmnXPGjvvgQrZuuhNmvaYJUssUbxmJKnCVhw9bD6taVPgEAPrJg
	 O9aBnj7DmudGcCHgplsJxdzK8X5PtmgQRevcLXD+5lPGcWuf1w/54VkJuYYSmyQpV6
	 dgOlooJu5CfeS7pGu27ji6Ix6AeaS4qIIrgr1jZPS+Aa1liwAlaegPp0NOfKVl9GkM
	 CWXuhBuBPe12Sh6+DlN79nCBwAQ7vBZyY8s0jmPehovH1imTJ6iZSTPxqEnKQICM/a
	 cX4MART1HSh9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7CBC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 08:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171308336275.20360.14139186674341919082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed764073219f0cdce266f052e21a1522607bdfe00ed2600b0802610ae975f5bf
Date: Sun, 14 Apr 2024 08:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713083362
