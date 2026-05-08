Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17733CD8DF
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778264254; cv=none; b=Q/rkdwkV+KM5ywuf+KGrqdBCnFFDBlvWgBGZJ9mQPWuktEYJ+BxG23BXgjB8PXPtEuPFcP0NnS/jTu0fedJca4sUA3Wb17BGJ3Lc2aLkyF2U/5n9KqaXjHMDUehxdCPbmzF/tTST46ncH+M4vdMr0aT8cEpd3HPB4ueWclCbiyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778264254; c=relaxed/simple;
	bh=uMTgVceW33xxqZecx4o9aIMA3bACBruchNGAy1kiJvA=;
	h=To:Subject:From:Message-Id:Date; b=CJGHkklhWZTD6JNrmuET4DrsL0vyimYTSTPfWMet2/wtiE84YuQYrG9Zarqm04WCHBCmGHIVZi2tXJv0UpAahD66z7VfG5KEVQlRFXScgvoR/HdKMju8ZD390NePIvavRm6yozlcEi/fJ9rl8aRIEXGNNN+QSbhjZ/yXewQgmak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6/299ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6/299ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E8BC2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778264254;
	bh=uMTgVceW33xxqZecx4o9aIMA3bACBruchNGAy1kiJvA=;
	h=To:Subject:From:Date:From;
	b=U6/299icaBJ7rP/D4UAZl00uGd5qMXN3/QCaPRNxYjOIoaHD63XSCJL84GyzFh66P
	 8ck7qQx13YHdScrc7lmoxsnBEPnyZKdQu6zgUZtUSG5G+PnJLsAtle7rv91f3cR/1x
	 tGAcpG1WaQ+xkYF1yDMOVXcQ4oGtyn/0lFt2lyln/POkJAAfToUnS6vTa+vB22k2JO
	 K3HDsMlwsKVH2xVl1jzCN16U2ivSFTQ8rn1OtAtzJpusThaqLYA2idxXbU2zUZKaB+
	 tEGSh8cmyB/nNnCfdPFSTdU8do0l+Tu1yOVDR/5rOSnM5EZhl32uePjDDbtFNMCary
	 ttbB2xexS6OIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C20CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826425368.29842.9207576501406227941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2235438c8c678cfc73de1f5617b5009ab7fff293bad2767c703cb8fadf530b48
Date: Fri, 08 May 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778264253
