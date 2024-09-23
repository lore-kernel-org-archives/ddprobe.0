Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4A624
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727057754; cv=none; b=M+5cOqvG9rhfES8lgeNpLpLNr0UHzTqie5eEUfs7m6vtCw2KA8FRGsZYVR3/ii/x1qB5ENGyNuGo7QhlSoW0mgoIr24FokvEKYkuR/FzO0TPvrRvGa5qAmIn9TWbeRbFb06w+dx/nIa59q3CRQN0LgCKtYJV44AXP3Z7GCSL4vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727057754; c=relaxed/simple;
	bh=FzcmA82lq2I1PbVP1kmzFph70Z3RJsFvVAKgIaktOYQ=;
	h=To:Subject:From:Message-Id:Date; b=UawL+j4DdD9LO336NNyhTQD28QOKQ7mM7AyRXxp0UbOYDPhPJJYppYHAKnhNAuSdLbFdeYNLtaSbTOBGoo3KsvlMpppLdBIhytSq+qTV9YAqhRZwskvUrJ3psIsMPUTldXhYabwtmBL/YbnCWAQUyEcwA7ckY1abBYpuTsHpxAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQ1Jt3w6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ1Jt3w6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD281C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727057753;
	bh=FzcmA82lq2I1PbVP1kmzFph70Z3RJsFvVAKgIaktOYQ=;
	h=To:Subject:From:Date:From;
	b=KQ1Jt3w6mJK220WULedvcRAKBEvvBVu4i7lIl5nxEOUScj7H4MyGdugyT7iyxLlq8
	 IRBYIdp/vWx1jZxgkMPIwlWlnK9BhvsXecebw9FjlQqk2LqlXo4POVEBO+LP538/Sz
	 lW930BUfKb22Dv16zrt/m5Ydk3WXARfo0TtbAIOdpnjBGmU2Ikm4vcDqTCeXmtAkyS
	 xJ6bnavfXljw7k5wXu/euh00jO83WL2ggG92xqPYGIjY6XWSYrV/j3PnjaGOKun6r8
	 UW1TIsRdLaZtKzUq+Znya1YoucAHEnFXoTjadWAgdfKYnfpPjFKEA9YJWDhtlo7wPn
	 Obxe2ShBWr+5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D69ECF9C6C
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705775361.28740.4104478441071957072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323f2f140fea4b29273891a5f45065650172702dbe072759a360bd17862ba689
Date: Mon, 23 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727057753
