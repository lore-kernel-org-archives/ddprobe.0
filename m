Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BAF6FB9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751203794; cv=none; b=erpHiYIWcenbkju+Qdb1aPanLVF69XmcNDq7uhRu0LWqAHr6+Co8TRSt3fRsttGs/Ks6/FPDI2LlKvnBsdyJZtSnbyGxbFoI/Y1BDNSdO4OReaAAvbx3eLtUyUC+btOr2ax4Nx3OWZDZ1hPMkv/w2ymn0mGOWTkWTRbXDk0jgDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751203794; c=relaxed/simple;
	bh=ZGXc+h71vhoKI9syoR74snt/3T5udTcLuRWZ3+mJOm8=;
	h=To:Subject:From:Message-Id:Date; b=uzv443MvgOd5R4v7rJE+sa7NQco9UbdElEDNWV5ryL39mlRJKKqYCAqF0wR4eGWFHfuBQLs+QEC6IQlv9utn3XbQBhIl4RgWLp7RCpF37uliL2fljCrGDEL0QHbbWAZVOVr22L74eFeatXz4O81IWXKq94REbHpTw3kHX9JFjOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCaxnCMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCaxnCMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D10BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751203793;
	bh=ZGXc+h71vhoKI9syoR74snt/3T5udTcLuRWZ3+mJOm8=;
	h=To:Subject:From:Date:From;
	b=BCaxnCMtYdE50yOR/t7A07ZRcR7bCP5qBxiKDJJv3d+8SXRAVmuoXRhM1KjV80sQg
	 Hc2plixca5/PBu3W0S563MJS3ffp8xC+Q03tpjVWzvE8gtJTQi7c6KrnJbv6QtGqle
	 nln9S4z92g6xpJdVMwJiE8k7WJYC+Qkpg/IapPO8QWfSMkVV/KmJ/XasqdTo4mix5G
	 Rh2m+LZMHyTbhIyJ8ZjgL+lc0Os1tioNgyZRH8neUiw0kODnAj/FDt8b2VvDtcWRJA
	 gpGYF7foL3yhIiH/ScEwG0rPpDbQEWL76nD5rSbUz3F91AeIJ8qZqTxL9e69BGXg8Y
	 woR7zluS/MOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E088C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120379357.4532.15436475420926156445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58d238c5bc5870e674262f52bab8afcef42bced709be582807c1b8cc00b091c
Date: Sun, 29 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751203793
