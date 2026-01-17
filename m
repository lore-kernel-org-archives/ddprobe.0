Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CBA29DB6C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768688634; cv=none; b=qbPIVb0Io33sf2fvH2Ch9dqFKy4KRBjFKxq6fV/OkB+DvH2fxaaljAzpGqojyiVjXTYgHGWcaiYGSvlBa/JPzKDgm2xQ35wkGEzAEdC1Bx55ExxhW61boNYxUTMf/IZ6+YHx5g5RSeWFHx0uUswu7o51WXsAax3dLZaWHzDlBXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768688634; c=relaxed/simple;
	bh=uirUeeGeEHJaeam0IRuW8rOctFKacOHAMtcRUEusIKQ=;
	h=To:Subject:From:Message-Id:Date; b=k/zZjK03LaO+M0Z86zwmMRJ4Lrvc3rnIHT2vqpF6C+CxDK7WibL1KYSdYAJMg0liJ5lIKcpq9kP/P9Vpn+/xMAPcZl480blSsQWAEubbD+Du6nLyJt7h9+AghqL8RxQto59bybeUIkdfvccNCTtWaYkXNiNpiXYI94wYKty3X0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urcY7ZvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urcY7ZvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5577C19421
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768688633;
	bh=uirUeeGeEHJaeam0IRuW8rOctFKacOHAMtcRUEusIKQ=;
	h=To:Subject:From:Date:From;
	b=urcY7ZvREhDBHWWboi9sL2jJjFdqNg3I7KSY/H7sEkTUsd9j7FhxjnBSaqqibaesQ
	 pWeCjPZ0J47AUgBAzpTZOVevThs3DZ2gkgZxV5Zjg1w78syXnUi2q8xOpqODMZM9Qg
	 1IJ77BoSl/rVZirwEfRXT6kAqKjVZraLH1IEmYvRvrYgjRDBXhwpZ7HxlgiPjNRs5j
	 k+oCbSL5D8I8S2vNeMH2nOuxI+WeFYhLCb5+O83uRsrt2YOpGImfOSFBtNjn/3aUeo
	 8+dqvsiH47hbGoqGn52SWszPJSYmahkKzb1sTsSuWgZ4I5ju014LzetmC7RjoMB8dF
	 cKZi1IZCCylig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94700CA5FE1
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868863357.29163.2140805964331591435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd524ade2c794769ff70f1f3c476c07d0141be4cde749ba7aa031d75f0330b86
Date: Sat, 17 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768688633
