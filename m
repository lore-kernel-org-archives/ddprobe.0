Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A55B168DE
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713838823; cv=none; b=b1MsOurIhQhnte7LmU9mOQyK5klbndsbB+imBDFQBcGSWVERWWjxjQFQ4pXHO8UjGUVTRm3YbrhkAB6WGvke6PCwItN1YiOVohzyyJULfTFc6BzysJ8lzC9plqt9rpWb+zUYiD/BRnfhkGyGlmFR7c7LBIKHwTTraayyxOE5Kbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713838823; c=relaxed/simple;
	bh=tlGFp8TmKX+3kDnyqfWvlP1vbhAAW/KIqsDubNtSdAc=;
	h=To:Subject:From:Message-Id:Date; b=CTZ5cfd5pA2brvKPy2z+pczxY/iO29J8QvO50vbS7GZJkOvJ48uA7NJ46ly254yMqaa60cpdn21CFXfKNlYtpJbJE2gHDjRMgteozW2U1bdAQoCJ7Qe3FxeuBufLkbDZwyL12t5GSPHynXOU4XjJD1y7wbjNLXk/XmzJaQBceBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OW9d4dRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OW9d4dRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE3DC113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713838823;
	bh=tlGFp8TmKX+3kDnyqfWvlP1vbhAAW/KIqsDubNtSdAc=;
	h=To:Subject:From:Date:From;
	b=OW9d4dRzF0oTAQiLyPuJXT+6CF8h+exAV3+1RZuMB4SzQ7ndQ9D7xSFnmZLbJ+19e
	 Qoq8CraE8GXepVIV5HLTqBkmzTxHUpalbvF8HIdaT05zFz9XNGQSwPgfa51uTzTrsR
	 dXQuAAS/TLw6qmbRBLYirxeEC291WrwSa64TSfCkIa/r1fdJT50taLoL1gzRi1Y16u
	 ZNqeF+KRWaWtGc7dLiBz/CgwthA3vK+QxtTOPtAG04fxN3KozRASuULB+r/scvo49X
	 DnsDAEUzx0Udp7NcB8oLbSpxgCYfodPhs4tOf4IkTVUpNuRkntNwMtYCh063ztXbOm
	 CKCMEoGuN1t6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD804C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383882280.20500.18297943003144879243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ebca6127cdc6e4e9242ada700c4b37e29975e14ca16a7f7234e6fc77c56d7c
Date: Tue, 23 Apr 2024 02:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713838822
