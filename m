Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FD53093A5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759156794; cv=none; b=V2Hd4dvlMXqET98nDJMEg5R9hVpA3puSf9Bc3D3Mi+3HMbeZFQV5b1Mgnpzc93YT45x79PKoxOdp0kZslBM7FBBfDAQUl7hInowSLzbCmwLHzK2G+CLCmTzDLwZGepQZZjN9W8QQMLTzDPf8SYeHoUrEaeJ3oCTtUSufyavMtT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759156794; c=relaxed/simple;
	bh=EiAWN0oH6j6joOUa5JXSAriFJKbLxp8uKNh7wD39L+Y=;
	h=To:Subject:From:Message-Id:Date; b=hazkHTxbIiOOba3FagKHXbs0ejbzWbptuMXE5s7F/RLRt8BSWKPxTkiJBfYJUc7ednkOt+F+X6AByz+t/+0mW4gEMhLgSRqaNQHcRJhUzJxnw9/Jir5ybGeA/VjcGx2rJqJc7aGDkC3Rmf+v+s1ftew9O2QhvCQvIxYwrcPfeAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qb13vsMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qb13vsMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7425C113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759156793;
	bh=EiAWN0oH6j6joOUa5JXSAriFJKbLxp8uKNh7wD39L+Y=;
	h=To:Subject:From:Date:From;
	b=qb13vsMsUEZEwZwfKtxND8W4pms0t2nEK3HTUMgcBYkhRVjDsQ53HLLJmdx5HyqCL
	 q9AEUmiF/MPj4xiR6zw3M9VMAVYvjAkEha6bDqv8C8/JsvTH0drhSs9m/honZgVc3Q
	 Q7bHPtb+hbmXCCvTc/LIWyFLQhlnoXE8lzYPGusE6GRsu3z6EMTDOrXzZfQ5F1ZHyd
	 gJGHjVVGwjupi6clm2vaOGS5mTsn8ZS8xGZw68jqduedUqZ9pNPBzCWJ3AYgOPnMTP
	 ZOlBtSOXDFqKl6Orqai90HkfS0kdsyyFW67Z/nPzFkYPNr1747IxujuAu1IXdF8+Zh
	 j8Mutwqmq2dUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CA3CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915679360.17582.1150267291438979533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185edfc18d68132f15a0ad1b8e22f13fdccf9552e4d9ab7392d67298688c30b7
Date: Mon, 29 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759156793
