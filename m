Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA84967A00
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711459097; cv=none; b=Dsh3Era9tBRRwsjb0+p05iSvB5wZTbTxzg8x3ycd04FL5aC79jU7lbCf7s/Ye0uYepIvYVy3wp3hvXdzoSCdnBALoEj/OIQ5vIprKQumSwSXaqUWiak4IozhVnxgPA/YL6DWw0XZJgYJaH4awg4bcOL7U5pGAtdYXMMEDh+qDG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711459097; c=relaxed/simple;
	bh=zmLDPxufOFLt0PwXs8dO6PZmtNFT48xpkRIc8r6QzZc=;
	h=To:Subject:From:Message-Id:Date; b=lN9Pj1/+0zGhFd4+ad2f0Er9c95hbdrpv/qjzmXXb6fCa6zKXRRn+l9TW1WjxWCGi+BRaSsLVjvruSGhAjiiYDauAEYGcikzt0IQgoDTRirFsZ0d7RsNLLEGy6lXfZQQP6ECf9itGx0ByotHpRtHSUstS66NACga7+1qx7w8Zys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh1rjHOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh1rjHOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1EAC433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711459096;
	bh=zmLDPxufOFLt0PwXs8dO6PZmtNFT48xpkRIc8r6QzZc=;
	h=To:Subject:From:Date:From;
	b=sh1rjHOzsOyEf402SZ7ss2Q+tkMxaDJYqNLT4U5ELWfBxelBofRZcBynlApTKTNHE
	 XedWpuR645ZSon+5saK+ZhJHndlUvZqKjxucTXURdn/EYYqDFSVnT8kt5DUpyoKFDf
	 EGnHCEO6TrQsefO1LxeGCleyPTTboPLQkY0gxVoKvJwAI9pnRHjFHQ6SZOS+G1cl5T
	 r54RxDX1+5Z35WGf176hAXTDFr7R+iI6wrscSxoAQetmTaG0SWRvGldwGbZc0t/yKs
	 z/oUYxhyd4wmWw6jKcMPXVjd6mMoUPYe2LlwQtgJtCCsxsT7GCSK7vM8Ne6K4YVRLG
	 BbKKM0XtrEMyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603CBC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171145909638.7056.4148168276781966306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d262d50e16ba2cf69fb93969db8b31ef7064c74d5d362e55616c48dee3f8ef
Date: Tue, 26 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711459096
