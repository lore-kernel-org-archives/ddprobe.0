Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480E31A23AD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743853194; cv=none; b=FCtpfh6bsd5FINnhkOLl3O9JwZ1hLTyoYhi8Z+cqW40Gzhjydah7StpFLkbDWizqxYctgotH6PAhpdNoDAdQTnyWhNiEm5pW4i6ubHzen4l2Q9Gqr/VpLjVquP0dlln2wMbalGVHV8C/vWllXTTiWsPXr3TaSd2p4Sd/juJyYLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743853194; c=relaxed/simple;
	bh=nG53fkSmC3YeNVqXizHvbXl8TeYAKgClWYbxGg75mv4=;
	h=To:Subject:From:Message-Id:Date; b=u+sqG9EO/8ndSY2aeEQsq4i3Q2XAiG49oF8aByYWscUe1ON7qnpwOpkyoTAgQNNAuEuPOMhSrJTwF77xSvWsD9lQv3oG6v0tvcMp4D5thnZaGpgYbme9PFbNPRnhEYoeNTXI5mUNyFG652i9U5qA2nuE0ccdMZg9L4xXfNK1fQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aryQxtxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aryQxtxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29BBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743853193;
	bh=nG53fkSmC3YeNVqXizHvbXl8TeYAKgClWYbxGg75mv4=;
	h=To:Subject:From:Date:From;
	b=aryQxtxAa/B3Mq/xO5gGo0Yy+hOCFDtz1tRHex69kA7mKHMv/o/nFDYyH4IiTw4Tr
	 0/0Rml3I1J/fmQvvm7pxWp8EPXrYPNkeXAwDxr1hTF735MHxTI/8T6XpGnbP8XuAeq
	 tTToQRX8Fnm38ijqLi/HVbIP3gcExnVKiWnDOj9XorQ08iYkedTfQt6wj6hVlqyp14
	 aFrgiQ67nGRb5fNf+DfaLhxW3YhKOlUeZp+f2DSDwsVA1TZGNV/St3/rmZ4dwb+ySg
	 RXw/F4p0UEkQTgcJVtdwlYU3qeeJ3mHUQ4sRPdTITSU7QIcm4VaaZYYjogh263OM3K
	 7jrp0Xu69NH0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6ECC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385319365.19642.7370664153043660921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a312c800d01c6ef21f95f7f1aa920cb58e033d7d84d11b3e6e998588d292cf6f
Date: Sat, 05 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743853193
