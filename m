Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191412FFDCB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771607094; cv=none; b=X3pcSKQZ1f0YxOrtq0U9ylW306U9zpqn0zlgef8W5A22E436iyUHwi9QtpoytoER7UgaxuCXDhlYE1zsbSNjwDgR9PtYM25EXvLZLUudzjX+gChhbom7xKXxbDBEw78cCpWZHRygQ20+UdyumlciDO9L6ieOUJVdjvXc94bQfwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771607094; c=relaxed/simple;
	bh=J4fkwhY6cclqW2x1j+e2AM0qu21bustvFoJSl3Lp9ew=;
	h=To:Subject:From:Message-Id:Date; b=nfZpe39JO4/ePOKa/is5r0TMc2f3nQaRjlr14p2QG8LnqhhlHflHk7Y6OM1fIcqCr3q9ziHNNp5lxPc031pyU6WXGgt8u4Zbzqzn1MaZRY31b8TiaAdmeywmAVKXUQxjymX0KxsXMXy/1K8ApWlmbcdpMpdp2tt451vaE/yYfMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqkcQIcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqkcQIcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA517C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771607093;
	bh=J4fkwhY6cclqW2x1j+e2AM0qu21bustvFoJSl3Lp9ew=;
	h=To:Subject:From:Date:From;
	b=IqkcQIcBLR9vORG/sh4IU2E9yaSLgTTPnlj3xpCuYwTNYDGLIihFupyoFwskeWH/O
	 xgkaDRHNtxrSe6NoK0NZv3UAbIWerM3xPTjwRTWkCHgJap/NVK5634b6hfJK9nQeU7
	 867L4cwQmPxUXxRmQs3xXDI//oTH+cae0+V0LaS0jKJAJsIe9PsT3kuzGNeYfjTPKs
	 Xh6+jUK1QR1hQVDf7lKAeQTs2M0nBsOZq9meAPnAfYI5l8YchE0nEMZ3+N3iVmQq8i
	 GioyzJl9z5WHYtO2MtaWXxpousfyZWbfvJNMrnAy1bq/zbLQ5Cv6BFVS8+uz7fFQGx
	 O4qf5MfVDmqqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986F0C5ACD9
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160709361.31079.9561769472083097799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73df00bfa9dd344e6e75f7203825961b820fce1d7a83b53e9dd829a799f52b42
Date: Fri, 20 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771607093
