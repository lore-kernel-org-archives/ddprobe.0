Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8851A256E
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744810795; cv=none; b=SLGYWehBEiEIrjTHcsHb9ZFG15jDJNJftXtWWaypzltcd38Vcojhh89aGw/eJgSUT9D8FviPDT4NnfXmliFx8sTe5zysMPN1PdzzESWZzYKBQrmnXnRw6fTQC2IJADGgIGvfFVJgtD53WmWczXwNbrMR5SCLSVOAJyOx2UamhuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744810795; c=relaxed/simple;
	bh=ETdQ12k7f12jDOak3FTRHBFPe9PYSmHYZRUOAFDnXbE=;
	h=To:Subject:From:Message-Id:Date; b=UQ2DuEOaSD8ujxC0b0EFuHWFUx/7emIZioiwSW00TMSssiinLZOdrIwX6Gye1vdmbxhdx//18uPHL+pD0w2Al8qPOTQqdvm5VoJ6DDwwpsEWniVyX7C6M2KE5Z1n+LxdyUC7/y+KRgZ0wtRuwehbjgrCC80fQubR0zevgn+vICg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9Ux4Gy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9Ux4Gy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA49AC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744810793;
	bh=ETdQ12k7f12jDOak3FTRHBFPe9PYSmHYZRUOAFDnXbE=;
	h=To:Subject:From:Date:From;
	b=f9Ux4Gy0bsw0wCHqlL+bFvAk6FBXDlnjl9pVXkBBa9rlKNXWId6eDupvUAIldoZ9q
	 fWTaOLyY6gmFkhSXkaE4wVbGovH/OMArOhwqrXwFawOmKQfkprUAWDE7r+qMrtXepX
	 mUTS4c3Dv2/8Xol1cXV9kTotweMMeDn8jjtFZAghiMcCPIdwyewGGaZIt4eeGJifa5
	 tH7gtEOEV8ksEgD+0xbM7qEp7g+tzoSkdvqQSRsJjw4X+tdCKXt5WA3k/PbRUzjSyE
	 yG6Rhk03Es4poyRaSwcQflaDYF8zI3DsK8KQda+iBCmFYFZTgiEBGmzMg/s16sDvwY
	 XFav8z0H+NOwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F21C369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481079361.3394.6536393650283969599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdfa2ac35250fb9ae8a87169ecc287bfb519efe57194c634ee8d1f1a1ee1b7e6
Date: Wed, 16 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744810793
