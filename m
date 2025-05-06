Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507BA269830
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746525596; cv=none; b=jyAQH9T+U/c/Z0v4WuiBx5yybBbATHMSfI+yNu+t0a8Io3ie3NKchqHJQFAZNFTzqqBBIzA6wvUAF/qSDlvUxn/Td2dpJ50VmWoXWLlJjKFj7dGNiJOPgI5XBUhp/ADWtHXUDFLqnqm6XZqZF6lR4EvToAEREkEKQfqlLYMWCGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746525596; c=relaxed/simple;
	bh=QbKp4ZOE1EYQhZDkkEVi5sF95IwgExZ9x3QYPmxvsdg=;
	h=To:Subject:From:Message-Id:Date; b=SocDECnF/fKaEGnSDNvNTYKixrny6sgCiGT9mHwLTw3r+KR+hDh2ShWlNkyEezwMyo+aQ1eiH6B5vlT8wh7M81GTTla++9xhbCi0hj7teXGbrouCSqKdVDggzFmnedZNKydqPpvVLfQQndsn7DuJIWrH1utoqOsB5atMUlCclHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PalHl28X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PalHl28X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D83C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746525593;
	bh=QbKp4ZOE1EYQhZDkkEVi5sF95IwgExZ9x3QYPmxvsdg=;
	h=To:Subject:From:Date:From;
	b=PalHl28XVaB0n/aRe9gA9rnl5zH/lACBO2Fp9Ucgwhj0BrNJYv3sPTBOXVcKLj2C0
	 LJZ/a3BzNmI+EktXuGSepo/nvnjL3A/Amb5uZRK/ICU2fDERVgGNcrNr1mBZegf8Ed
	 SLSwFwBHRQ3Bvr15cETg2ZT1O4NN9nAPWMSu2BX8AP3Dp4cjQONlx5DpRsLzH6zT+N
	 2FVAqcg7w+I+Q+E+CgjdYjmw0gOVamM5hqQjkFvphg9Pnof3MTAD+a99EFnlWjNdyh
	 jQRWJeWKXxVfhZKQkT3QILhh53irW8VvZopqDYOKhDwVtE2jLoh+XtoQfWoukW0Mwl
	 TLse7kC75L6mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9DC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652559358.21241.18318146029846490748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeda5e52db121d90bfec0d5472dd1c4b0c0ce9f3e0fead0ff89d739bc1ceabb0
Date: Tue, 06 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746525593
