Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265E91367
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768655634; cv=none; b=SCdJFs1sMvH36NsgKR+6OOejFnPHpTuAvMckWITSHXuqTEdYc5i7A4C95cAtkIZvOonf7gkD+rOPDx5iqyeNbtAv+hugPUUK22FdIl5GBr6WEPBxwVp8CKW631dX5gRKiWs1cy1fiJXtHWX0c+t39y6VJHW6V238Dg6fYZjWq9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768655634; c=relaxed/simple;
	bh=EhwSk2p543nCc3/ayCJ6Fs/fdEdBkAI3bgMM1c9o5/E=;
	h=To:Subject:From:Message-Id:Date; b=sjAmS5v449vOQGDpHJQoQlwWwG2xV92PzM9ztsnnWT5+IaXTTNYQjgarkyZATciqqaxhLQ/0OqA4O5th3IO1EpCcqJUOjExYL+LrKZogTU3blAveSu/9mz661UthxbT+bqifNkzcRzyEd7o+qKjeLJqy6LxlEXjGg8BfAxGGfMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9BEIksl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9BEIksl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38ABC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768655633;
	bh=EhwSk2p543nCc3/ayCJ6Fs/fdEdBkAI3bgMM1c9o5/E=;
	h=To:Subject:From:Date:From;
	b=t9BEIkslIh1T2/8svqBbyH9j+TpqI5wnqTtJsWDyv2KscNVgYTN1JYYS6nura7oGP
	 bIyPwUEn+qAk92BpFNvrQuwncAHkkitKPajgKp/z/koclg1RMMH2NKPAdMFR02p7+L
	 2X64Q3h/V3sYW0JnrNbmjAOBqQOSQKfk/9hgi60Sy/JxuHj8wGTj7K7N7UBxbvk8G9
	 gSkuto9w8bv+HdIDdwgpP2NwNDjjQok1c7SiX20vIUhU535W5LBDguYdwzIxX40092
	 R8stVL1FYBpH4bJf+S+JQfjrWVKTlEkg4GSUruTljYjbfNWA0yYyfA0YLqQwKqlmpb
	 1dOdIdBvLY+kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E56C98328
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865563358.629.7234520968853817291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d5119be0d7896fa8dfd078112b0044334d5a589131c1ab2a2937dc8f2b3909
Date: Sat, 17 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768655633
