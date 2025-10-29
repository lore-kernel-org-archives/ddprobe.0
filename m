Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B2132570E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761751194; cv=none; b=sSu9w9f+rU284h/BX1anecDk6RhdAGQ5JS/ULdjZpzvPPveV8vNH2WM7ZCfcF9FAmiagYISuOwnit8K+dWB5ajUT+6uDYTf5B8pIKA0YvnRMSWTfnH3x4Af9DDIJZKsp1DemJFd6jQEYuNlbSPY3oATtzd1kb3vQyIRqBdXh/cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761751194; c=relaxed/simple;
	bh=jjpgzzn3oFOb5HFUygLsbUT26/T5/tTSewp5vYFjIqI=;
	h=To:Subject:From:Message-Id:Date; b=n6Ead+2mPXi8u3uxRCR2AnEpfTVC0w4xfxLqqB+5IhibXjM2CGyQSs6oNE33LNnw3wMYrEgD3wCAAi2qvabPkVbD7/QKWwY7DQUKhdraiSdrMvPj2wMFEfqNDRSAuJPa8p69eDcn/+DMgQjicbgopVE0wDktETWy5GF9Nn4Xm7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YysvuuG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YysvuuG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC35C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761751193;
	bh=jjpgzzn3oFOb5HFUygLsbUT26/T5/tTSewp5vYFjIqI=;
	h=To:Subject:From:Date:From;
	b=YysvuuG5RIrgSUU4wdJMNhZK1YMxwBJeWWDj7d2K71V2fUjgSDRriZSsmvBNNxDha
	 D1n+FrcIbLkBN3Qgj8vfdHdz1MGlz6etz3w1iBCYFVhO4wr1taq1JVCXx08t1tcW4A
	 ydNqLmVooV1mtosRTEU8gzHlrCYkUNj+MvFAISmhj8jYDxR43Ot6+F3YswFZ54MraY
	 YmzYjwUGNoRvtmwwYfgEEARa6ZYgPsxz4WOeltK807sMuno60m/X0vuHjPyA713Z3w
	 ZzyQ/Ixxrq+TcKVCJwiCZVkXNwkWUwqyrtcwmi5F/R48g7H2IdlWVfY6z8ZQy14anS
	 KW8jf7XwpDvag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F966CCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175119357.4424.2524370129717839619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936a6ea57e30567075941600a0d7fa0b1806de333e70b654121a0f743f294bbd
Date: Wed, 29 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761751193
