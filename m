Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4160214A0B7
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741427334; cv=none; b=bhsVoy/LTGOtcJBAWppzl3jvytQY+cHSna/LUi9LpLD9z0SI3mlMombhFaArkxwiq+I2iABlvS53bWXDhBcF+4pm+83o7l9x7jCNl3Y+uAc31dPoP7vnakpwBqBa8EO90mxus+3szT2jMhS3jvesOxAFaOK+z1WuhHgfhx4uh3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741427334; c=relaxed/simple;
	bh=parKRU4goRwW+fk1SpAXK1MZfR9oFcpENgHY3osd994=;
	h=To:Subject:From:Message-Id:Date; b=F6LYl/7hFFs9kvYpj+hv5M8mmGEc0GAXTLnhuxWaHLGudyqkV8YreJN24zd48wwzcgHGFa1sZ3JGDOTRdqGY7PjstR3ZR6Ljw9BsRXfSM6SSTRHpV8wijd/ML2PxJ85xl2X8q5/VSu7XXUGvR5QAQYjT8gvL4ioiI1h5HuePOaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUwjmfx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUwjmfx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEB5C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741427333;
	bh=parKRU4goRwW+fk1SpAXK1MZfR9oFcpENgHY3osd994=;
	h=To:Subject:From:Date:From;
	b=mUwjmfx0UD7ijx8pcRU/ZajOhy+2FGhKZ6OP7XZeyIgMEX77Qq3fos1kyI9okW8DX
	 lc20AbLfZBKRoHOfb8l5Amb487Nx4YBQmwaFy4m4tZSQPZcqM1FEUn9tp7nb+P/46w
	 FGA69bMJbzaJXhnqfXIWvj2TLGXofm9FC3LlS6fDZ0cwNIaKM9meR+wcPJ+xqj+aNU
	 1LNMH+6eTS2EgWrpcqTM7h1ffXRo3FjzgDS/+sFvF7FmMrzQ0Vl0cEW9yL9dm38x0/
	 H0XDuiciTGnwXay2RygXrYAqbR9jJ8+5KZiakHm09Hc8dGJmysl8RtcBAE9xeR11xE
	 Pt3I6zDKQFHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F725C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142733363.14383.4821475768737588239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45189076ef1fc68f4d84017742c95a5a41f3b3fcbee2a324ca96f8c7cc5de95c
Date: Sat, 08 Mar 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741427333
