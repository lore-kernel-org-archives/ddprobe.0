Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B299334C05
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768971234; cv=none; b=bLbD/pdsY+o4NPCE/BXIc4os9FmXEWtpFEqYwR3TAo2BbSIvivYF82CFXh6LiRZJ5yFPAbENm7y1kTErtFd4X2p/E8qhr0ziEJbnu5HNk4/1vSah+B2mLAut6AE9t6+EjoYmFUW//71j2bX/MQ8w3th3t2e1Dd3N5/YbORSd10Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768971234; c=relaxed/simple;
	bh=Uv/YBwts1ojdiPfXdOq5gBCRSCFXvu1VHrX10/DdG0c=;
	h=To:Subject:From:Message-Id:Date; b=sfInSNkyDkbqO+kmIJDBsqJSm1EFNFKScQM0GYPHPgS0FAW49uMPkfJyeDC/YqGhGN07IXMcuyL5mzyPK46GyhHfto5eXpenT2mwGr8WsoKzN6j9EA+9iScuyEJsDJJ3vAr3oWuMVucQNhwoA9ABGXbrP1rFdj7UYkkvJIfnqxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xv/KqYQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xv/KqYQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD77DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768971233;
	bh=Uv/YBwts1ojdiPfXdOq5gBCRSCFXvu1VHrX10/DdG0c=;
	h=To:Subject:From:Date:From;
	b=Xv/KqYQoTs/x3DG/ykmjV36rbbqLHAEUNp5HQEQsL+rjGiiKfAysL+cGdzlUMzyzr
	 D2YLENxZfx+ni2CZDkewbbayKgrPXwqo0HVJnOVNBCFmJ39LoKmEoO5n9ObhEpUb4h
	 Dmq3lkbGP1qS8TCGv/p5e0guV7M9rib8+g4HvjVEeFjsLH7f9vHFsEV/EOAUThBjO7
	 CKP3BGQ39taNw6f/dtlqkkhlD/tkBO8nIp3Q08Yx/+GdFTStnD6Zwt6uOrBpcSya+1
	 CbLU+b54jW94xIDO/zgnHC7Hem1zLey78BLhQ9XW+ZyTH7tnjvgRyWxrxmt/jRIHD6
	 aAfGvBVxbIKYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98784D262B7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897123361.20528.3245383449388746501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf318e406a32686f8ebf770edd1fdadc3083c66a6e30e0b9be79bc4efd2d1aa4
Date: Wed, 21 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768971233
