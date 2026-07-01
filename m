Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414961891A9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782866314; cv=none; b=NiCXFRX0AioUvLE+Qjq8OWISBtKcYQFUf30MJOEx3o8NFhs7xAl3SO/xEF7lT/12Q+KEHK7c83ttXZ5xKgmRYa/qkksUXx+HjUKQwBPCc4+dy5xSkTwTmlrTSxuaXQF8CQShNZjKfol+4bHNAZc/CDBmM/a/sZ5qWyooNjM5jWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782866314; c=relaxed/simple;
	bh=3DCfHCmA7udu+OT1Gx6kqVX7YJTxuxK6W3RA/JUp8es=;
	h=To:Subject:From:Message-Id:Date; b=DrV+uaJVa8ZZE4rbfQbis55oWMLUv1jduGBVonKYhQsn3fbhHZmStQW4LjeETA7oiXHyhCD+PqeBw0yQYcFJe3et2AWq50b5lwJSO24m+TTgy8/FixXbQ+O61APIsUbhgrRaOLe66z6JAyj8AEU9uirA3SRIFPIKz/aHKR/Q7Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmqZ2XPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmqZ2XPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71ACC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782866313;
	bh=3DCfHCmA7udu+OT1Gx6kqVX7YJTxuxK6W3RA/JUp8es=;
	h=To:Subject:From:Date:From;
	b=SmqZ2XPTO6CHO/6UaxS3AVsSm17w32PPdWPLoLT5t+9PFZ73I6NZrrZiTnXDQnyw5
	 cl6x+JCNLtXTnukzxaibq1WrEho/wSYGE/07DD8oy0P7CeE4adTnbucQwH7UmgPVXv
	 W9ury8pgH+RBgdmh+P55bL5Fm7Z07nwRsNY8qUDIHhgs9wqN4XOnZmQBIzTDlOsgaj
	 Zou7BFUGT7pWpHeEFVyiYCnmx6CCrLu1bh386X5UMJ99UtH4ZMWu7g7h5cUc1fapXK
	 nROoFO5MJH2htn9cGrt9B6rSSh1kzDjk8XpnqXK7YY3hOPwxWneGuAxPIariPplbMG
	 pqpssxB7kQk3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ADDC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286631368.9661.5378886928340714106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97312a8b77aee88a7f13584e22c9dfc1a3421d534deb80c1d2191170aa3f6170
Date: Wed, 01 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782866313
