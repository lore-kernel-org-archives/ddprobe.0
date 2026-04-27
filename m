Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7B32652AF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777319254; cv=none; b=C4sXBB7pV94cL4RBEcG0wEHTABcwq7oxKSaXC1LbtxG0iHuI/UClHOMSko9GRt+o2gu0+iT7/SQ0e3pG4WbHe3jcT0Gd1CdX+kyGkdpy5CnyivhJi7RVM3lkJm9PixBou77D0zpgc3jKTeFAPAZqmUrvXZiNUbtCVXgv1T0RjZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777319254; c=relaxed/simple;
	bh=GRWgdYOotRsN/bEQblD0WZqqW/a7DsurxD/6lI2nItM=;
	h=To:Subject:From:Message-Id:Date; b=asW+Is/qrX0JMo3AOvMjfsBr55+2SVngLwzjyAJr+Ktlhxt7O5xKxoyxB27Le8RtBlSigyffAgRMujthhPR0Iuw2AU7H9sQVu5Z0TjSp0uuCIg4msmRiMj57DtQ6lxTtuS2i41Gu3Nty/wHyjy2W8Sx6pm7qqbGroRlIWzZAM1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVHrbRUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVHrbRUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F48C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777319253;
	bh=GRWgdYOotRsN/bEQblD0WZqqW/a7DsurxD/6lI2nItM=;
	h=To:Subject:From:Date:From;
	b=PVHrbRUUKbEqOnRJWu80hXs55pSEuNXOIO6dEBBwVhMlaKBWtkAZ4GFIbL4tELFgl
	 53hi8n1T4QNvpSMMs9CLb3Y+tgwnPLrTAeEv51r93z8rFuRbAvNmxtstiWEq5WJMdj
	 jvWpM9eNdP0Rtkm/a/FswQPl6Mwt3L3YkSRiIgBv7ONWMbxoA+8vPNwqbY3XNA3AY5
	 7ETvtuySq0ZF9d3Sz7dK2OS/U6jacMuvWShDr1R0FpeFk0cNRgk/TxQKRsHYmjEnzA
	 JhKMlHWp+33tGX3H3p+m7G8ibfWU2tiv7C4fDDIz4SRdgz85sChjZDNuMCp+klBkoX
	 RE581dny0c00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF90FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731925369.6536.8663130449177020857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00fcc1d5495fd245004250a7d8d500366d5a78f0d9c005ee73960fbfd75d165
Date: Mon, 27 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777319253
