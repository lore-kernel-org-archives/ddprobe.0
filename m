Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE8E1BD9D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761270594; cv=none; b=CtwJx+q+0omFwKEB7oENDOVPZ9olujN0yDIXm+FlJj1/MnvgtN1766mb5/3GHyWSAG55ZJx2pN85mmBWY8jNi0dbDPPC4aprJ0zaW5c40aDVUzipr3QSNrWsq9xwdMDFRMFHCinc6Cq0tU5kSEdjZTJVkjCLREj4SYHhVYFG9oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761270594; c=relaxed/simple;
	bh=ttmI/wHjGgsGoJLrgBlUH3i8iIAn1jhOWdt+HtXMojI=;
	h=To:Subject:From:Message-Id:Date; b=Zlsg7Pi9pk2ie5fY8b7QbhPA2uZh9g+lJAOEuh+D7xRmf0WmLMg1BwpLb68piKPmBZAo10nlvglll7Uy5yKZe57/UbtB6rrHnTYk9hEVFUAAJvvQMCF+Jv67C8ApP/29Wss+L3xUgMXXKY3t1l0OiDjVTuxl0eD52FvEQVxVDts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+N6VDcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+N6VDcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761270593;
	bh=ttmI/wHjGgsGoJLrgBlUH3i8iIAn1jhOWdt+HtXMojI=;
	h=To:Subject:From:Date:From;
	b=f+N6VDcbT8BNlojBF7DqkBguN2scxQADNFKs+rLAsWD796gNUISOfaB+ODfVmJc8M
	 Nz6RZbht/eR6o1rNmLyAH4d9C7RFnDxkT6EVr6iPdg6R/KNquIobL+KswEmpYKtU/t
	 ajz4G8qCWGvWYmrL5CdVCXJ24ITHGYeEI0eEwzCMMO2RvdLfSsSkHqEL9A5MxoxMCB
	 B8UrPNifosItN9kQ/24CuTxqFKov1nUFUmGHPuaPcY2Hkh5Ba6kujkdVveHTtee8rJ
	 1Z7UacD9ttEoPIMmLAsFk0Na8P70s7ly/E30B/UbrsUMF7mgrmRZ4l7/4KCxULLBaf
	 UCL9TSLxap67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95047CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127059358.11492.8786574177369786610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7179a7a21fd48482132ee03f4800f7d50c86a1dcc2d738258e279e1e997bb8
Date: Fri, 24 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761270593
