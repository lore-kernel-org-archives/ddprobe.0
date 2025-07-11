Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B92141987
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752198594; cv=none; b=KVFMzeMB9qyB00+bNFOgPtaey4Az2IjL2U/AX8w5+FBDj3mW395JR/p54+Zb4UMMnQvW1wdev+SxAgjSGq2AxA3w4NhjOXI0ygX0DWEeKZGZ5bLMQPxndw1YqwiUI+1vlpdW3LGkpqkdfuxEK6IzWcDHT4hVEkcCibdAv92oH1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752198594; c=relaxed/simple;
	bh=qBghgVsp1veRkmWhVW/y86JtT10trmcEbatTqRvlkFc=;
	h=To:Subject:From:Message-Id:Date; b=lIgnysVqhN/o/m4h6z5vS8mmioNnbeE0npSZT0eFFZMewN6+kyCLjrS8SABP+LfuI1HS4SVWDAoSHDrtSQWHihQYIt9X0tcNxqXGgd+PFVgRhLLHzLKt/R/OeXYnyHS5V2P7X6QGPucbbsIjsnf2nLOhXhLNT/+87beB3eotr+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBiPZro+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBiPZro+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04FBC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752198593;
	bh=qBghgVsp1veRkmWhVW/y86JtT10trmcEbatTqRvlkFc=;
	h=To:Subject:From:Date:From;
	b=MBiPZro+ChV7hti07BZcNdM2JBCtRHxzkVW6lPBuI/7BunZR95mnZmCLe5Y9b8Wgz
	 DXH4AhTfXIWS0+g10TStmkIsBNhlmgZ33acUIIltFejjoaeRuV1Zz7+jvexsivltk+
	 jkqRfWblp52shl0E+ja/ykO8NHoCYfL26zhgNsIgQf2pO9XMfomgUMmoygrGkgCe1h
	 mRzkG/5d6+q3B0aT57GREhOE4kmXvJcd+mHcoXeQDSe8TFaFWXvw2HqmpLjjLNfIRT
	 N/jRtgDXN1nky22gtRt2W7bELJq8/IMwyr0iWTrTMpY6h3HUaFtY2EC7IaYQByDMdU
	 TGov7xxKatnUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92329C83F17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219859357.8236.14689712178845588585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2506fe7eb32d4067644503656fd3cfd6378c91f965baf7ad29acd82e53538e5f
Date: Fri, 11 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752198593
