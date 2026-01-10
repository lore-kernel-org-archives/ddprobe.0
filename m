Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA87256C6C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768019634; cv=none; b=Nn2KJeQx+Cx5XSpiDEnmsvNFOqZ6OSQjI6Aaw5fd5IxOrZqVD9byqhWL9Wi5Kyr5J6Xk6WOauNR1w4/NtY3RaGee8vNhBjtD+w8GH482VgwjOo4OWmNxr5D7iiUrvdrp7NL0LbkP0QcN/eNDoH6MJ5uZFn7g1V+txntVxG88O8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768019634; c=relaxed/simple;
	bh=5xuZwhJvtNgOUKCgcJMkXcJFLBOJ8dRlvtXRhLtiKiU=;
	h=To:Subject:From:Message-Id:Date; b=QiLTWq0wjg2rtLc5hsdsNuiP2Zd2/RmcsS8QN35mFU2Js8pVvzwjSqZEThUtI/HM2ZZWRU0bp8xiDg+rlIatCCfU8KpuYutp9fzHkglSgiJFnZVfHMKF4ZX3iuw2abPQbICjWtWQlxDUHb5QBiYJ/+xIz/r8arlWADIIGLRjwAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBicSkBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBicSkBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A749CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768019633;
	bh=5xuZwhJvtNgOUKCgcJMkXcJFLBOJ8dRlvtXRhLtiKiU=;
	h=To:Subject:From:Date:From;
	b=GBicSkBMgXdsk43/368KkMmt67YL8hyI+dbC7ywSVfBXpBC0wiDYwYwXkWZXwOp6i
	 Xg6jtnA45mtMG7WY6kynpoOlnA0IUYxdAYetcqUwq98O/uM31xH4pFFBilesxYX5Dw
	 /Nck6q0iCOFO+eSqNVJ0taPCcODLxbAzfKWmoCNEQPoYMCBIRopqgQo9NaDip0SkM9
	 HQPMulI12DYbOxPJydUDqsIcYuUXsj3/Cr/G5Ly0OFzxXjfW9ZMgrUZSzrTYb5YR3i
	 hoAkqF07Uxbu2Uo0MDEJKv7phiBFjC5XKbW3LgnxZh1Y5hbUGM7qMor+4tgyRRXReg
	 C1M6pbKcBD/Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9745CD277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801963358.23521.2429301348173392508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc72df949997b55ad67b449535f26819230fd6e6891350e6e0902d57c862c39c
Date: Sat, 10 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768019633
