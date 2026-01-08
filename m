Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB9F136351
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767835434; cv=none; b=UzA7n7pyj9TI6h1fG2N3MIQbgWU5ksYyCVEx2zJdTus2AjXxKLm10wL8joPJYcITxRxqLdyxWcr/Mb2K8/+Os8P21bbFlplsW7BuYh1Qzk/kqsBBwhf1sxTCGr0/fLhPWW+168Bv232vyibOgtcf8AbzgXmu/pAoVh2TDiWx8Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767835434; c=relaxed/simple;
	bh=6gBitQ1f4DX6JKMscds+1oJ3RT3WKiNz20HMBZxV2Cw=;
	h=To:Subject:From:Message-Id:Date; b=rM8CABxLQw0FzYS3JBz32D2Dg6G9lEaT7NZfD0iZ23rFNG3Kwp8XX7Sxlmiu0QoqBh8InFj2SlT0JyeVLb2iSC4EpuP4oEkzbyDEpJX3lLoLD7goB0UooJ5E5EiM7ebBWXv7mpe0av2mCc9je8qDAU1xFoccx3q2ziK/TEKM38w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsMWErE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsMWErE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7FBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767835433;
	bh=6gBitQ1f4DX6JKMscds+1oJ3RT3WKiNz20HMBZxV2Cw=;
	h=To:Subject:From:Date:From;
	b=jsMWErE4+2aQAqQ2iysT7Nst2igdyNiXXikAG97/kXUXY3510GaScO4ZUpnNDtIXc
	 bA85s1INJgPHmkepXtUyqRP2GqCl5Uy7Qbf/Zk82D9jQNPEEtDuGuCHzmE9W45uU4y
	 t0YAWLmoUHAFzKirESEOKZnXwuljDgOhLnRB/6o5XCDWeoRPHZAQVanZcT0d0LFv3n
	 YAWRYVAQsHMEC/f+xugTyc0AFY8bHRBBP+x1f+MRiC8DpBhmZjAGyxEktu+g80JkEd
	 AXOae9XR1dPDXW+xbZBpzUdt24TpHNyGAlRLkAJM/zO2wpy9XSLf6kLdzsS19x8F8z
	 NDnQoXVjaNycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA10D14888
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783543358.26249.7859055161458171895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f62d0107ccf6a0202b34d656bcab1639d712f579f1ab20178fd9a9cd842c756
Date: Thu, 08 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767835433
