Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C232B79D0
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748705393; cv=none; b=b8HXo2immsaZsTSSBfYmuvZg2Aj947BEKgeK7aY4w0bB+xeRz6JHKNZyocpf9pCo6vb7nZkHr4pepnUmQRhTHgUpY6POEyY5V8XXwXjSf0KuTkMeSxhdpMDv60sbyo6itqqDQIxbf0lKK2IJrmzrzcunbREKmvcxUlpCzkoDFKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748705393; c=relaxed/simple;
	bh=ZkTuqx9ZQLW1W2Fxqy+BXeS/r9nLQB8O/ILr9/3Kpvs=;
	h=To:Subject:From:Message-Id:Date; b=mKZdkM7sm7e2/Gc8ULKxWHP00wgebXVASc9ZoNYZ7L6UenuD/mUCHYfv0U7TBN+G3NMLZxKrIeDDEidOLUxMzUQe4azMyGlwEEbY4vOxZRAwW628i3KL4zqN3xcGwXj+3ls/L9VKTZRDQvR6FyBGYHjAV3cUqF2IkrUbtbNIbA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8rlB7VS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8rlB7VS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6555C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748705393;
	bh=ZkTuqx9ZQLW1W2Fxqy+BXeS/r9nLQB8O/ILr9/3Kpvs=;
	h=To:Subject:From:Date:From;
	b=g8rlB7VSzkESb52tBFjuP94/iF9qbfMgwc7AJ+TmHesRRRuFkpq1+zgEb6hebCiBj
	 OgvYwxhHSc6b75xaf+BeFAvxpGH27d0G3AKw9/XqvKPRSY9yprq78tuzbIeePf+VWW
	 He+nGviW+DIHSZC4EoF9wtOGETYOPSzDs1NVOoQIYBZNfeFE4OVv9VlgmHsW9AraKY
	 L2EY5ph4mKtRccr3L0/L41nMFoJ8OQ5e1ctjBF/ca1O86EuUJGP+yb36c5fX3OC1pW
	 YC5QvF+OE9v/sgJvTlMBbI18xs4wK2V5J6u09f1AB7TDin/l1XLDGm60zNCz1aKwbs
	 WVbWWviWKrMyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96201C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870539358.18959.14146791695091106753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e84a2dbcb3393df765cb5ece8fa4a264917e02901d01183ad27cc05916edf6
Date: Sat, 31 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748705393
