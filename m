Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9C2377EBC
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780339474; cv=none; b=JwK1tVQcqZ+YMp0G+D/AO5SAClgse5TJBAdsAy3Y3hXaj21skUKuMNQqB2vdr5xqhBEC/qHqZSimwgcCzI80pg0lZ1kKYpUh5ljjSvZDpoN1l9cyX/jDAu744QPqfxW7rcRF1u0BhW6Vqh6i6AYSABFvoLDUm7AgnIuEWUdV9m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780339474; c=relaxed/simple;
	bh=Nsym3OxsdXNY57H0K2g6BSfEDaqajks+5PrCDxCP5cg=;
	h=To:Subject:From:Message-Id:Date; b=TfZICQvmKUnI3CWTUuVvmXmhVsj8CFdqeEZVgrkW0TReYkXScFXtJNXZNHKNLOez6R+UABxuHK8NGAmEJ8y1aUZjBhbY3h42yyDybo0zmvfwkkWeu5AnNUpDZjDCKx29tv7ii8ToZ6xULRg1JYpa9Y5mngmQusrDxnRB+mRaguk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5BwkWcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5BwkWcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75B9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780339473;
	bh=Nsym3OxsdXNY57H0K2g6BSfEDaqajks+5PrCDxCP5cg=;
	h=To:Subject:From:Date:From;
	b=C5BwkWcuSR2x1cNv79fcR8NL65XgHfaxpM/iIp4rE3zHoDEOXEjcMAMwukvz3JdYN
	 uLc+YEQf+I5Ta1dp63oA1qUNwe5GBY+GLJlc5OVm5GxDw+NBuHfRswG8MrVEjwG234
	 qa82h43IsbmiAtM/lnFftjg6csmdrOQdXh/F5kfib7sWOZv6KVgLd1RoGWrj3Z1J3P
	 lXBTGyCGwsciDUWOYgVVAJ/fG4u9bh/nxxducdZ6S2tHzw0uEqTF2UZhHfRJ3ECSiE
	 S0g979bz460bzYhbBLib4vxth4Jtku46jPP6deKz1N3fs4jKUbrlCjBwjpgtp68PGh
	 141TLE8kLGWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8371CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033947368.23560.10584605090001067964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e73f3e12155f3f24407218c559d4ee05eaba75107900780efae5841fa041bc
Date: Mon, 01 Jun 2026 18:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780339473
