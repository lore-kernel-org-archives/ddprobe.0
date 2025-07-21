Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB2B21127D
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753068594; cv=none; b=WgV61TfVDWmdzaSYUuX2WU4884O4TA3IXpaBvb9Rdl3lfcUfDah144F6JyCtrIZYYuxOeTA4MlZIvj15cka6FdrpZCjoWD1H2aq//28uceMmcwgs84s4Vgb4Et6nfjdI6cA9KaMP6xfcun1DTB6WEH1Apiip7YDvpiiypEsIYTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753068594; c=relaxed/simple;
	bh=hKPLPOwlQAwU4b9EWgOlH6MOIsqk1ETGTAtidAQN+vg=;
	h=To:Subject:From:Message-Id:Date; b=uqoI3evWuWccwas2TQkEmgWa3Q7ks/+SJm+OHs9/+IMXVf4kjL7lBXsWfEudf2NiVBPNW7NXy7/wDx8faiB+KNYbKmt8cV8WckswXU1C2/vGMzQUFx3agyTwLhWWP2Yccfym7gjLOVeEesWdnO1Vl1CyvX+53Mca5l8BAFIaLZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qgb5EBXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qgb5EBXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC99C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753068593;
	bh=hKPLPOwlQAwU4b9EWgOlH6MOIsqk1ETGTAtidAQN+vg=;
	h=To:Subject:From:Date:From;
	b=Qgb5EBXm7zADcNP9DlHp1s26qMM34yuiYBnrnbXhFcDqV4q3Sk5nqUUoBd7Naw2X9
	 XtY/wZMYutHfxJfeD95pb4nEfLEwG5wy389gN/tz7YzRZ2QkWpVaT8ciqPC6ElppTQ
	 AuV7PxxMhNG279Se/NbL/O2OtLfkPddSkgujTrA/FkJvsAmV8QBZgulcxnqaFSv5H6
	 oTz0RV6cEz3OOte+HiMehFiPWamnPqS+gf9CudbTK80Kv3c6wxYiv27H8cTfvQDyVz
	 mS6y6y96KeByJluYW48thvKMJCTkKMnA8/udWusErrScs1SM6rvWtwopYW9czjAiqb
	 ZPiWAp0mmqlJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542BC83F17
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306859360.30605.13376538569000960358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7749911c3916d83b8f3f21cf2492d04cc7329f5a38ce7a6e7cf5e86ff69eda
Date: Mon, 21 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753068593
