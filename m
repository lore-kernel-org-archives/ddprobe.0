Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1308F35BDDC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767988434; cv=none; b=MPLtsBtfMz+ceiELWtbhEcFp6Gdwo+Zu3hSWLmMr9TUZLZu2vX5ieW9ILDdZRZu/qitBQ2htUyPyXkxVrAoz+sHjkccAEI41ZQYMK4FJWza5sujDMy4VK0b2j0In+sFHn2cfTDaudFGOkO25Vu7bAuNHtWmZ+Sy6xauCLhoMscc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767988434; c=relaxed/simple;
	bh=lolQ+MX1tyzP93YantGHevS+/TDRUsDfwKzcaiemwSo=;
	h=To:Subject:From:Message-Id:Date; b=uNipNUhtYDNY2if0lcolu3vUhE1zjMbPB6Q9SnRxe2zNIF7iXWZOrikfRVq3EUEtogTKz9l9EW1j3sdNpVpBmnWkRKynmZYodhqH470JU+Eq/w6mKhPVJObGHMEjlp6oHQ4mMc4aRpE1Zb3pKBshVm88Gv4gljVBHKIWe8HQ74U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvxF6o38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvxF6o38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A165CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767988433;
	bh=lolQ+MX1tyzP93YantGHevS+/TDRUsDfwKzcaiemwSo=;
	h=To:Subject:From:Date:From;
	b=LvxF6o38kXaHVSR9Z/J7qGOvNkJAqjmfiqvKcl00SNsRgWn/T63X4VvQYXJse2gV0
	 d0np1KNkvDngZuiZoOGs9aaa5tNmoF9441xAi5xLTfSwElU793U7WcJrDGAF4dQutX
	 aWbJjoZ1TSnHzMxl2W+J1tyFZUVCJL/ATE/CFxCkSRVAvTa46Fbh1kRs8/+sGxiUtJ
	 oXL7wjS/aYxF1IZaZ6sUVGm7HdRX2U2YV7MNjeY45xW2f96ICE0huDzTGNVxyInEGZ
	 MPOXUvTupyGWkbigw5aEn0BfG6N9UQm3jzMB4DsfZBwZf30w8pH+J5YxEsWzFmyz/C
	 TZkJxyEqLV9xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64DD26D9A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798843357.20930.9300957620499169832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d4318fd6dacb87826588532049ab62173dce2f6edb980c47217be5d1a7739f
Date: Fri, 09 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767988433
