Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1D62E11CC
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749949194; cv=none; b=KBQArEGDb9ysyzQBqaib19P2DZTe+WD67hUzOmnfYqCaDT8KNuv2CrHeizef3inMX9ur4UYzNpv6528kj/BYYfED7evnVMt3B5aOwCC6K5L3MubaAWmOTjWUZcg87qTKelU0H6mAE7N9PeRz9GekbPDz6hF/qqjdNDYoo0sELCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749949194; c=relaxed/simple;
	bh=jDkBytc1OdRWSLf32fy3Jfxx5xOebdPoxplkuP40W7Y=;
	h=To:Subject:From:Message-Id:Date; b=Qdw1mgJtWCTfhxaia1xLqhj3us31+VX6sEmjMKHYEwy24Umyetz6heMwF9HQjt577v0Fu6dkpeC/Bw4723F5qFNhfL2iEIwbsuphMsBlmCcA3yYrnsJc2TrwwHLhPOoSCVV3+4zaAEFNxTwoQdYHOqnFwE/ENEhdh91iPdRp3Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AERPi9BV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AERPi9BV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA61FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749949193;
	bh=jDkBytc1OdRWSLf32fy3Jfxx5xOebdPoxplkuP40W7Y=;
	h=To:Subject:From:Date:From;
	b=AERPi9BVMH0VhO8gPXHvMgtnOiU5KcOMjGIG9U9KHLKELBJ5ih7PQ/pgbrbF7FtYo
	 Vr8bwmYxet5nwYzfr2680Y8s0rbxHy+wS6i1+8aDNHqvSo0mxY/aKk63sa6THhY+d3
	 GsJ+xL0Tj2ZKc4D97ALa5mumUHISWbQF2rqsJaeWb5eYnXp52iXO+RYmZK+z+u7d58
	 WjbAMgAXgm+cLZH4a0LEvC+Ase109WYqgfrw+UW6K4AZwnOsxNgutsMzp39rPhHbED
	 CXFoUDLUrvhU3q4m6ZF31us54UBApk0Zbvj29Rlnp7irYdM4kk6bpSqdaKaQeqZJgR
	 OK/WTUnXh4w8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BAFC7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994919357.17846.1839357433399634676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f422788f1539afb4e37a2b6b33c83baa16960196873b7be069c69a3bc8783a
Date: Sun, 15 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749949193
