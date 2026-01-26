Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC31433B3
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769411034; cv=none; b=SQs4wK6aVMhruEzeVPs3XEdJK4cw7dZfPRgH+9NrggpEr8Ijw+Sqrxcqw58fEjvR2SM4M4OoNo982wyU1c6uRa3M8MmLBU7BLXF41YVLtWUZtr5eQK7Lp7drt8E6krRMLhVst1YuMTsu6MYVwzTiwc7FUIwvG9hUqXnz6FWHJtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769411034; c=relaxed/simple;
	bh=D0MFHFDSQTpJjr6ZPUEfoYK8PB6huGGC0/RG/2USKXM=;
	h=To:Subject:From:Message-Id:Date; b=qZtyURsaTK2GarCcxFI/WbBF0MM2TzQJ3XV3jOM6B7j7kb5Bug2Lv5fr7XRR7sybe1XpTjruZEY/c9anJq4vXnQGOR7LOqLeYzCuBM8iXkfrqcKDSxNGQF1SjAtZXOzAn0iRxT+KmN7OU7hYGjyfRlD4Db3naryfsnM4ZgwjXt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q17UyRp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q17UyRp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA21C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769411033;
	bh=D0MFHFDSQTpJjr6ZPUEfoYK8PB6huGGC0/RG/2USKXM=;
	h=To:Subject:From:Date:From;
	b=Q17UyRp8Yuomb69xF3ROTOvASqS2N9xNwQWC2wcowP7X+4pEN8JIH34mDycSeFiLS
	 pLPkcPGkM93akjjbNL6bQPfChVvNyOK23LF7xNDraYX181Rwj+v9rxrfZyd5oAceSy
	 eomV5lzpBg/p1q0Pp+pnwb8n4PeN40F8X9Na6dsxlIdd9O4RNBC6k9kPTS7mnz2MIy
	 CjXXMRE9Zs0MF7V5kCWt9+f9hKfqh76fJv30aacunnz5IdLKH8W9UNnACHKeM/cRQE
	 4dNikcc65MLzH/8+kA7YL7MtgqmHqtybOAsPO7M5NTRnj5S+sf8xYYKJyWz4FYj3rP
	 DUe1bOzmRM8zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D689C88E58
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941103360.11715.12348809042522815185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca51bfda4617891cd7ad0ac8f3301e4bee0a8c4b32253fb29c4ea434c6ab2d2
Date: Mon, 26 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769411033
