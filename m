Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B1A361640
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776415654; cv=none; b=KVIn4aMsTmwygbfNkT+BzwIyICvOTubutDKErwN4ixviLcut7jk0IBK+LNEr3PMZYL2bMru4948DakFNrHSr5dAW6Whd3eJZrQtLdcwtY+5lXgwpzmmR/0glqEHiLnsR/QHqHKzxSKKH8CPyiWHsd2LXwh2BW1OCwdZ075Sprow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776415654; c=relaxed/simple;
	bh=4GkNda2pCHBxI1nCy2xlZfBtgR/ggLCsuUjSGJLhC/Q=;
	h=To:Subject:From:Message-Id:Date; b=tOIia/BUvrk7/J8fXhjJ9c8x4r7QP5ERhgNMxf1Zd403h/PsIQWouDzuXquuoKZ8Tn6VAxQ0B8j1kEjqNwpC6qDGIySCLLeM5iji8Up/pVE3d9nfjqjrBQ1YeIW6cSbB9kNCGkPXuee2l/xxNR0IDJLOrfv3e0xEyedqRf/LErc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPAq5gZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPAq5gZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD396C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776415653;
	bh=4GkNda2pCHBxI1nCy2xlZfBtgR/ggLCsuUjSGJLhC/Q=;
	h=To:Subject:From:Date:From;
	b=NPAq5gZcPEjXT3XXUOJm+m8i4w4Lu60TxQ5VBu8cM5YUQhVbTZijoZQs+aNLlCydV
	 fKmicVQQtupqLOwpvGtkuBntaKUWbLMPpXeU62ufYhB0k7pBJQ7lgxEch4te3+PoFF
	 0b6g1OTZ7+xLoZJ89v42eGgkiEqZ3sIoI4k3LE9vXHXXEAJyCoY0YLGfmJKk2+f5dc
	 K4uyibf0at0eKZJKreqWJcD8MYvqy8Bgg35HYR/2G/RhqWkx22rI1j3yZPKaQRGLJm
	 e38U3mU8VafrG4myRaYZ2IZ0BCBap+Y2W2/jDwLNUmaq5E1MSdpHtpQF/0SAd8ICql
	 I4trs2TIif/+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBFF8DFF7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641565368.5250.1998493183040007311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bbd2942f4be7f04283a4910ab015b92f36c073acad758b7fd558bedfc79c08
Date: Fri, 17 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776415653
