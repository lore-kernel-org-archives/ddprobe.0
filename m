Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CEA2253F2
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762397394; cv=none; b=Nii9Yva6VEN02LQHYZZ1gKoOu8lwlLo7BPk+f5vmNKfje1qJc11gcu0bAar+CkkYMQR4BFmDPAFIm/jaGBzLDILLG/ahLGZ+dnqWKXkYa+HzkD+wRmBlEav7CGGIh3vhh5SDfaWfDWPNW7/M4J++w9YJKwaT5E7JqPDI7cVcFno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762397394; c=relaxed/simple;
	bh=tzyKRGjUC4mvom5BgRCIfc3aE9+KEw4jdJYoktnzdWU=;
	h=To:Subject:From:Message-Id:Date; b=nhTUzTHw7MSt+bnqYX4B+D+Nsj6Qywbd6gGCNdPXojn8M+4SgMDkt2dBPs1K72NYZ+3Btt+Z+5vvwzrV4Q/3t64NSOsufXDwhljRvqVDX1UihvN+HlQi1SsITbqccjcY0cDjSx6yjfy62i07VBWmjdQNffM4L0nA+MDR5hn1MqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goA52OTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goA52OTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B1C4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762397393;
	bh=tzyKRGjUC4mvom5BgRCIfc3aE9+KEw4jdJYoktnzdWU=;
	h=To:Subject:From:Date:From;
	b=goA52OTT6My7ClvqzXXJ2JvnSWvLR/zyUgiKMtL02gWpyZf+9Dh8Bd5H/KJeBgOn3
	 UAulIcM4pjBYcplgEpApgJTMfZ8DyX9h6/2/VKRAMfbISpaBxEAZPESe37FBnEEiy7
	 qsTk6usAiMQKsk1HMHufCglPkll/Nb49DJFu0mD3pNZTokOQ1Zm9QBy7oe2YbWfUEx
	 ElCOqYRMGwOFb9H6XLVsgOXhI5myEN9iSVBD717JpNUSg4RtIN6gTEAci9y7SP8AEl
	 P2oIQSTC7TcK8t3DX3/ptNp/3Fp9dyHALdIMb3fJyQ61hpWMyajct9l67NWQ9UhOPe
	 Zrero40xNA+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C4CCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239739361.1102.14029102191113836437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecf1fbe44a241adede24a10c6af32781b9143cc2453996e55687e9db3723c30
Date: Thu, 06 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762397393
