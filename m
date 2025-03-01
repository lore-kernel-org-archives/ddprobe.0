Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A79F262A6
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740844734; cv=none; b=af86JUyHEZVQYKBFek1JLhbi4TrxJLzCe/hOCZWtGQnPG8MSerq0tCVLelS1UiKR16bI9C7V2XfbBcRVpbfOxjO8M5DWg5t/t1pMzh11Mb69+grkIVL5JKwQCQUMCpRLm6uHfkPsYq9noKfeToMo+ktv7soza53h3mUbRrLrALM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740844734; c=relaxed/simple;
	bh=D4PaSfrQkRjMj/ktLERoUHzEaTP2HVgxZW/9LeCbUXA=;
	h=To:Subject:From:Message-Id:Date; b=r0NlwbX8V5tYAjvwhjDtmThMsrcM+UmbOf8MFKvwQn/0gVOSLPo13Q2O6XP1yruOQGti3GvvR4qyczv9T2mtPXQLaiHT+HSSm+FiEYzfwyivkFm13KOZAtj0brgM1F4s/j+184ljqLYKDGLSKref68H97+TExYwd5LhsuubbA+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMbDcAzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMbDcAzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B192BC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740844733;
	bh=D4PaSfrQkRjMj/ktLERoUHzEaTP2HVgxZW/9LeCbUXA=;
	h=To:Subject:From:Date:From;
	b=mMbDcAzDhd3I++zdRiiQaKukF5vE8aMEpnc/M74ZmJGWCrWOBtBoQmQzfZ+hztXBD
	 AHTQw8d/Mvfg1vxpP1ICiAeTdJXl3m5h1L2yIKnnsFsQvrSMpw/wmYSSvjNMaXTNsE
	 lKiWCC6MvSrtwe4PG6u+Znzf8Nhh6SOdrZpD2dGg/BtXFfnmTzJq/Zd6UtkiqX+T5J
	 C64G8vTf2KYOXyDILpKx2T4QZHEkIHE9xekolRW7IT2/Mnz27WJrw0kLBw6LKJXFj3
	 uFscnOy8Ib3yrkYqZT82wZdrVSd5+cHtzHpVB1LSgZntO3kNyB/IJA4Rlbjx4FKEF4
	 yYIqPBHw/neJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFFEC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174084473361.30689.8370587215100021928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e7e73df1a4b31e0d356a88ab2e5d6238b14e85a2d21e2eba1023cf1899a2c2
Date: Sat, 01 Mar 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740844733
