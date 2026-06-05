Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3966D3264DD
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780630474; cv=none; b=O1DtpYre1bXk4X7G+W14tKEjUaYblorw+lCtq35CKBRksGD2V9czotZgx/+fQbzKW8/ar9nWIVdRacODz1zZYxCrTUsBFBE+Kxi5PgDPri/q4hvQVadIJYAQUL2lvANrx2pTIlONiGFRWA1EKVPeO56hoGxLIFCgmYCN0689xGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780630474; c=relaxed/simple;
	bh=jYoqF2Jk6N2YxYiG7bp5tm5FZ/VLjBW30S5/Lmthoa0=;
	h=To:Subject:From:Message-Id:Date; b=fWsxlJl8UvAxonPM+dVDZ3B/FEFQM4GthC8l4tVXAmG9zpAGCKSNOmkXB1cqOAE1eN3VLHuOTvp94z8PJ5yPBlX4HuZauaSyV8lqfyXe+i437qlN9cDAQjH+fGVzkQ2G7/1oUT+sE+3LmtioKZbP8WQS81X6U7BXhvYLCSnGuWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZnQDg6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZnQDg6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA468C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780630473;
	bh=jYoqF2Jk6N2YxYiG7bp5tm5FZ/VLjBW30S5/Lmthoa0=;
	h=To:Subject:From:Date:From;
	b=FZnQDg6aQGpdsMbn2g49grS+Pz9Uijfai31pKZMypiB+SB4CJhPsWNmEv0O/QZU5B
	 8sqEzTvgIlI98eDgetbfkHVuwpqtNUfxLmZtedp3c0NFLn5vA00ffd4rCOReCMAJv3
	 cGftSXV3k/S2BD+rngF/fSb5XrPrZf9N3acqpAE+cHcn3EA9JhxEZXWTQa8NWizr0M
	 T1M+W6F+8kiWwpHn1NjMCoqdo8E8k7m/MOIykpykJAIghQhK7XhbWkAdTDmDqoa6XS
	 Gq6netuxI1S1BEvJgS9s1f8cMDFNzV2c3+Ow/myN7u443SR2KvCby73iC7O6BQIyGJ
	 0eGexFJAJF2kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8F6CD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063047370.878.12973475262157029066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff2f0962a869e62aadeec42340cfc2a41d2e0c3e018a97dd2b653c5442480ea
Date: Fri, 05 Jun 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780630473
