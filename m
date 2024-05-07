Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3D3139F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715045543; cv=none; b=pwlllTu9IesTISyNkDrF6dQ/OLRHt3DlWVCm19LvVYEDwzd8K9BhmI2QlJSbqv5nPcwM5+X7DtOhlZvaY3HUKh3bcFlAHURWmR2sNo/4gU8f+wzdAjK/M91pzz16Vka89X+G1j1SKAO9U/CxrQGU/MYgLquAUpbbZe2CKtKmx1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715045543; c=relaxed/simple;
	bh=invO53obVRwgwfxsHbE6aA86+U7RnJMVe4ob3COzW1k=;
	h=To:Subject:From:Message-Id:Date; b=eeUOqlJgXUq4Ce29yZ065zIsj5Dx4uzUUZDkf3E82g8r/aDhiJqSC3d8VMMysyrBNYhI/Xaxi1cr58bKoaj7Wd3kh/YQm+jIeBj0ms+EF7kfhnfsnjGZRlhNKhEFBwvGmpf0PELJc4VFrgCXxGdxpvlf0kMmN504Of2Hkf4wBlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTfquzhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTfquzhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF39AC116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715045542;
	bh=invO53obVRwgwfxsHbE6aA86+U7RnJMVe4ob3COzW1k=;
	h=To:Subject:From:Date:From;
	b=hTfquzhHtyRKbzCMzV7+/zkVYCgCYOkaZX3tIfsfIN5kInQFEW89XHH+POEJLxnUC
	 0Wi1lpH0MNHqlzE7l2vNQefEem5sYEak/rft9JORJ1ajoc4fWtv5+6JYcOMT/AQt/b
	 KThL7lsK7X4s4/t0Ngd+u+KMeb+77Siy9TRPDnkRiYf2eFLSVOpkrpB/O0LiGddilG
	 sXkwZO6fww90lbkZhioIM6kmzWYnOYNvNj7OinmOWp08C5CTBsHNBlHKFoYX0g/Nks
	 iL9B07pHj8Go5WtCGj4YUIp96zbRQDPbB5NG91eUq+etFSBHAmH9faTFYD2gJRNQbD
	 MUb94TV0rrxAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBF3C25B10
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504554276.15346.18119951893497085967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b6182cdb04d011cb5815669172f45527aba428749083849a757a8b0f6c9cf2
Date: Tue, 07 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715045542
