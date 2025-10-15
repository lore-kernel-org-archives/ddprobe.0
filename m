Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C01202F71
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760549994; cv=none; b=FOJbNqoi38gzKt9VUuvcpnjB7/XZMC7mDsswmYcENg40zE6j+Om3vYa2dKUiPwS4gWaBQMnip6vu+hP05t/cc7TXzMBqxexrXmc5BWLvQzmDxvGy6UzkueRWmSBaU/YbwvG7UmAt7c2+B5Oh+LhpqlyKhGTpvuD/hTthOtiNUfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760549994; c=relaxed/simple;
	bh=WaNBq7muioKVunn2VmSc6GjQXoXHGyeE1rTZSH8yid8=;
	h=To:Subject:From:Message-Id:Date; b=BNSuehqWw2ptkwaMEgfzflZd+edX9T6y/vcAF2Wec8AfPVSKVyzeqMD4VY0qsYaN8+v0obnjALBFQ/x/WfcrmtVrzNyruB3eZ/iU2cRHzU/zw3Ji8NcQoOVko27o9LTXgtxWbdlv/YxSu0KFkieLX/BTI4kYz8BKq/UjxqdbsvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko1UeoO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko1UeoO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62ABC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760549993;
	bh=WaNBq7muioKVunn2VmSc6GjQXoXHGyeE1rTZSH8yid8=;
	h=To:Subject:From:Date:From;
	b=Ko1UeoO4fS0dx9fmeittNFtWj4Cp9scsIn2D9tjzH8Z4n/gNiuDjL1FBIceHmNonC
	 sIsVZ4AFuvoXojQchRcplgZb/OgG4nykqqjw58EGLlcI4e1PjoHJtgYir65FQQnunv
	 RSAgZqguZVbIGZ8ApClk2eYNlASPZBkAdMMw5Ro4ti/nlVdeLWDoUV3BmEp9oNZltz
	 /AG3Uh+E3p0ti2EQTi/9CYw0/eYyeoFlJkeBOpJMt+Jfn2sj7dI4OD8sq9fHWPaGKY
	 bOSFFG6u0kxfA3Bk/xd7oN0PmmM4Cz3uw9Xr/pUv+RD/jJd0tBAHLTDoIl+e+LGj2u
	 CpqeVIJTtp7Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C5CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054999359.18696.5506623254627209799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8d5fd100500a99c94675914e05875731a18ddc43bfbeb58f23d11761d6a4ef
Date: Wed, 15 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760549993
