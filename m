Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11128237707
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768104834; cv=none; b=uvDNZT80WBmVe999gexTCXcpzc/9y+dOPyzmx7bnMCJflrgw0MbVQOcX9P24fALXoHdYF7T9zaCZlq4NRPLQRjDgoKwZhEjWHoFxFphk+jiSWRkMxl/zJXHf2DChq/uqAjUhxVdFiU5Szd84WujDUVh0TQUjKfTyN06L2lYqV7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768104834; c=relaxed/simple;
	bh=TYJ4NmfOGMHOpAlUMksSJ6sXKCH5DsW8Qv9r5TPeEiM=;
	h=To:Subject:From:Message-Id:Date; b=r0S3xnLiSlVU7JJZwugTpMKBBrQXlnQsoy5KFZZvVAvyp9eGlB33yHh3xldY0+CKffB+GA97kp6uGja2RY1mWJoTowsYeLIb8HUGQhxH7Onz4KVTHFIxVmZFYYMbZMUab1wCexnYXkkh9jYwECfztfKf9KDy8Tl4+CVt8lOppLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shgsM6bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shgsM6bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A054EC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768104833;
	bh=TYJ4NmfOGMHOpAlUMksSJ6sXKCH5DsW8Qv9r5TPeEiM=;
	h=To:Subject:From:Date:From;
	b=shgsM6bj+EIJZOgCBeGzbOx6IQtPc++CUrtRAnQgIX+Jo1Z+U2SGjaia6u/x5PhpV
	 ltAdzXyPYBUl24xnazG1h0yj7fSMAWY29aYYuIsLh1EitjamgVJGLGFjltaZySQVt/
	 DYHr9gW/cOT9Hc01z8ilH3o/R1CJXlNKhy+QFVMK/QmjjdzPJkiPgQj6nY/I5iXXcH
	 rMgW3VaCG/FxMhm8ZkWExxPiw0G/PnDSlgWJ20zKQAomu4JkqvbdbNeok8HCtpR2Q1
	 kwXLvdmfrj4IYKzL3lR5pT9TXcOlXnxw5tN5RnpX8LUIoyWP9GR4pyoODEXCkRgu5d
	 1nNE2Ddabs0Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55AD25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810483357.30156.14266093638487700665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb2c20f7ba64870fac00128a33dca4ac24bd8d12519e60a369aa2ae4accdb4b
Date: Sun, 11 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768104833
