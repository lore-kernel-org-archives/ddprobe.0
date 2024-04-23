Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABE7FC18
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713833423; cv=none; b=LoYfUCS6nzKZKPhx3633ccRkiuhjxzHzFyfawWk0Pq9pkyKRTCz4HTtPrY/OyYBqVDlwzMNFPVDrxLi4gAtz5laTCSBI1+BNP1pzHnaW2KERq5kFglIlYXaGGrb4uiAJ/zMIwCZH2Ww7g2OBcpZbg0HB5QEsuSVe088Oe/ps3vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713833423; c=relaxed/simple;
	bh=kU8MxSV3g5rN33JRuQ9rlMSqEA3OIINcQurbKkICCD0=;
	h=To:Subject:From:Message-Id:Date; b=ufQUJZQztg8n6mWOoBQOfiGRg8q4IgunEPHS4opS/s+0NvglmrXyiylIJxB8KXos+4Qz/IWw9eRuOpb/hSTIXYSkR8GVLA65zHyDjtmKxX0+zKPXO/GFPQzs6S3qCqVpqMeBSUnScPuIJ/1Gwmqukto/YUqbSVEawdmt727pVnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLPJLiOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLPJLiOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05F0C113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713833422;
	bh=kU8MxSV3g5rN33JRuQ9rlMSqEA3OIINcQurbKkICCD0=;
	h=To:Subject:From:Date:From;
	b=BLPJLiOJo+IcwzMywMNzKI6oUZnt9hR1AWfPBWFYQ+GUkzdtp+dC9+/OQ/2cvGQkT
	 7vxWIRm56HmwxZRpv+A/OxCm28OQ/J7JaKaWhK7vm3NoMvkRfyaFO9W4hf5a58Z7ju
	 zb/na+vhY+a/hLmPrm+yZ6TQBKadFqgECog7g2wFJHkZ1tcyEGeV4HiNg8j07DPRT3
	 ijEZMaN/Mar+sNIN0Js3hLj5tE4E32rDBwRWDSacUVNDI9UKBs/dnjLTQkh2fsXkky
	 3yCCCB79+UW3FsAWlCPvMXoGTz3xUSYUcQqEYaKabhd766mwhDjd4E6P3YY+jpuBcc
	 OelpF6OHtsIqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A8AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383342277.28787.1338183075169935426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0068ca7c97ff8dd7bd3b12921235552da737cf4082f517997c43b0e4857fe11d
Date: Tue, 23 Apr 2024 00:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713833422
