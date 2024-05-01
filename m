Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5917C082
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714564343; cv=none; b=scHWPn2uJMc3lUKFAIfHmaVCK2uFay5cRB/glksyZwC7cf96+SpIeMzrkbMRmMhJm4NnpTXRqTHS8mE4BK3N5zpIPixnhlvJAFfWuRqDynMDr0Mn8bRFpFdwQq9t3E69JpJPcvmJA/TNn4LLXruTc8xon5Kq4rB9XfVx+6Ko4jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714564343; c=relaxed/simple;
	bh=Nosfetja6w2KxnubuCJa2Xak1aQnxRsM8lu0JliCsZ8=;
	h=To:Subject:From:Message-Id:Date; b=GxRGJmd6Sl7S+fJTumzvAb6iK9i0swba2tHI6qEgNWGg5vCODhJgaNPEKuV0s2ktAnivzSn3fb5gGyvwSKw/OYV4zLGk1IbhOb9xK9+THYP+Up87Y6N49uZ+Ghc1rz+vMpSybMO+cZuLbm3RRoE0nUpWoxLU3y7GWARXXOVLv/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OofthXoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OofthXoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36B2C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714564342;
	bh=Nosfetja6w2KxnubuCJa2Xak1aQnxRsM8lu0JliCsZ8=;
	h=To:Subject:From:Date:From;
	b=OofthXoMkD4bNyaIx/JFJEvtv7DghcjRwzR4o/skusZ+uGonwtzNCo9Vc0xVfpJ+B
	 RFiF8ry45OO6vtpulNKa7wNZXmV8qUQ/gtsXj4nDsewigwGFWx6iMvZTQBDv1fHgwR
	 ioK+BzXW6uQS35hdcaZz9Rd1KTHd5Uq/n25yRSRmapNOwac1eM7HR6OEw3RDNbTZE6
	 b4g1m6CdnRtFeKs0R2n4ShehAq8d/FkbnDdU75j31TxRnpoktQ96vsDMOqfxeHEpJc
	 xcgdnSZBjNBE4OiKJjE6jJ6UaK8QNaJjBWweleVTSyJQNyopYvFDWnQpXaJN5GYoYe
	 2H2YsAsEqlQiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF23EC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171456434277.17525.9554315388591737016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec4fc08acd6db3bd81fa87faf0285ed32f2a7dc3e7748a49b5a6f308348d53b
Date: Wed, 01 May 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714564342
