Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3187F32C938
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765842774; cv=none; b=IGdm+SphUEZqaO5P3WjohytHqx4VVKurcZYtNP6F1nEdVRbDwpE95hshh9zrHW5KxYpYuBht8jhA8BuG6GzHh1xfCxXb1NZsrCeNtTKzTaYC/K/VB/NMtmUx9ynrfjRfG5wYXecNaKc8yr4VumFOkkidL8NPngAzSc0K87BNE0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765842774; c=relaxed/simple;
	bh=jz1RJ+xxdIu1Wx1SOGiIMxbSfqq3zb1UupXd0GzB9hs=;
	h=To:Subject:From:Message-Id:Date; b=ByhhlmPjH0e265TVOk/TbNoYVBqkieiHJtuTzBGcgskUy86qO+6JBpP1L8EDiscf7ZaLvAl+f1KNENq21WoB7T1cJR2TDmgulAIPu585ezkJQ73+o3G41juNtjKvnx7eNh62v7/5Dufx8LTWywVUa9E+qi2DKUWdUo4gl6okmPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfMSe+xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfMSe+xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F8BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765842773;
	bh=jz1RJ+xxdIu1Wx1SOGiIMxbSfqq3zb1UupXd0GzB9hs=;
	h=To:Subject:From:Date:From;
	b=qfMSe+xlD3jfmgHP9igcPyofsE8ty8pozqXJ0kKOyUtDhJYLNoehMQ6SdBGrs4Lyu
	 jS83BWQqICOG3RPWdoZ337sXXhTvCTtFBRddMuzQYMlDZGht0iMIeyB6jIpd1RW+xG
	 ussh++M5wzODPyjPaqAIhjHkQCuscdu4nWM3g8lbWtPnkUdRQUhAVVh3kCpQLjupOF
	 XGKpp2deiLRp6KMKgZbQ8xazTHHZV/7u38qWSFkeOizAqiJtjwyRX0Qa5JPJT7LhW7
	 +cLdpnZxZgRXil3uIliH6KXqMjUTNGyDSOftAgjkOBJnRk0WZ1pW0IZgeGhG61Z7+7
	 /rc9aeSIRz9Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944E7D5B87B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584277358.27670.9580712733657262912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1c6afc8c17b051bb19cab3ee7f3114b94db80c4afeae52c62eccb746688ed5
Date: Mon, 15 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765842773
