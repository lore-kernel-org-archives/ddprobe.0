Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F98E27A90A
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759339794; cv=none; b=WqUr1qX2+ThkQCcWSAuj3JBZE98zHXjqvIVt9tZwPI4a72c/QK+p/mIli9Vsol8EqrDniWxZoLFGEwgrHcw6YOiOhCMSV70LSDolwoVRWnwNne/rLRpZWWZQ2Be9pGPR+99LgxAGdjU82dhNTH2A4PaQhNrKaS/JL7Xhsh8uPYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759339794; c=relaxed/simple;
	bh=bIejxaS50ergaBAoKkMAzebVadlXUWk8PwC5Tse3gFk=;
	h=To:Subject:From:Message-Id:Date; b=EnvbVQLUajAq+o+imAwyn2oOgJ1QcQOYfvctH/G2bYrQBmYUiucNHT+S5PK+W6+iJtict8uUo54grLM+fbJKqWcxSdhQugragVWRffxqTM4PRSMoo8a/D/9BttKtDojxIjuuKIOO9kaXTqV4+Mbzpyi6XhqTW4j/1VFrRsLkZ3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfU3U36b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfU3U36b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26FFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759339793;
	bh=bIejxaS50ergaBAoKkMAzebVadlXUWk8PwC5Tse3gFk=;
	h=To:Subject:From:Date:From;
	b=WfU3U36bk40yQ64PtPwmwbkQugSuc4loYQPR/qzdz/S/mMuf1yET8vHqOzEcS9ptV
	 D4Il4XfyMu1vzII0A9+4so1m0/DD5bhxRlBiIZGOrJdbRt33aX9nHVPbr2TY0d9+Te
	 MZKIwMAPYtZjajT4Fw6axrLPDrtT74VAxV6J0UUhboFg3UB5rljKl1PrOLAwduI6zB
	 B48TvsoPfz33hj0N5SBXndUcaYid09pkkoY0/R6oaYRWVm7cN+BPFs4XXmIds1saJG
	 OyYIzfnduhHJTXnqKCBqNbHYOQ7hTsiRLhRTGKwL11I9ysB5OPlOKEvfqY5XZrQprP
	 IXRzHx1o5dC3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF39CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933979358.5207.6090893521839576129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c472e23c326890f2d8bff646a1e9de77b76ce94a9d0f8082fecb53d018ecb7a
Date: Wed, 01 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759339793
