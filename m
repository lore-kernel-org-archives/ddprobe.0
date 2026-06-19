Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8D23ABD99
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781904994; cv=none; b=r0IGApzGC+GJKgNRacLcLMs0vt6aWp4KJ/wcSltSYaK7aH2zxE8WxCE/liS5Jr/XCGqXlf8i+04osZKchBDc+t8D+QRaR16luNc/4iaQ36T1LDGLR9NF3wStN0xEmP7iE50Z1wr2no/4dYGtPr2eLW2vjYkZHplgkRn3pFxKdVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781904994; c=relaxed/simple;
	bh=zK1SeGrOGMjKTfsx0Iwp0NLwkv7m2L0ELK3AEscqC8A=;
	h=To:Subject:From:Message-Id:Date; b=kOfb6AjxSIjN61aZndvcj+2uJ+ghUa7S7qryDvlDDuuskRknLUYYuQHwEPpCkA4gvWmHJd8a6Zonn/QB7A9vmrDllHAbSZAT/Zdmk/xVngaqmD15eoVry6ecmwwQf1BXKQNbIg2beqRuZDae5P/TAkTTxuMqDLiiz7jZt0Vbx5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhbUV9Dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhbUV9Dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB123C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781904993;
	bh=zK1SeGrOGMjKTfsx0Iwp0NLwkv7m2L0ELK3AEscqC8A=;
	h=To:Subject:From:Date:From;
	b=JhbUV9DgulKUPyTXHb4K0xNgUsL+lQkdolvaAXI0qoqy8KewtCgRM/yPaVLrXQc14
	 CIgBd0e1eICHOyAVEOmjthSDynRb2W6wBHh3Ezdv8ibGuzBupo5QqsLmKvOtObGU7o
	 6Jp1zPVvngffCWlXiu4gXO+S8f3+VieKUObMclcgAUXmWJ8QX7rt6byqep+cd6ToYc
	 nujl5ST/tLggSQppWHxvv3ZPZjqciKbJ5UtXs6s1NDiL9H8mfFDI5ObRBKUnYgUsFQ
	 dBan/CsxvduvGqnv1/mBb32CWC594/gKiNZxthiM7F+EwQe6aeqKvvZHsGg8mMJ6iD
	 qs31bAZmpc6XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9B0CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190499371.12161.7705163120817929147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fa40f8c0249a0f6e3505e0677f6a82fb13fc5d116d800b7a6524d24cc796f9
Date: Fri, 19 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781904993
