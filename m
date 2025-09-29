Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AA31A262D
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759136394; cv=none; b=fJR26rwTyvl6GvyCdGUiygmVYuy01ENVjQXswxEpNsKbBYVO+/ZysZkcvKTXT0hsecDOLp+pBpU/vp5/iNVAazeSUubfEbsRQ/d2/a3n4xNyP8ix9QqoOIzJmp5CZM+Q6LCphTICUq3FB1JyuX6O9xujMLsmFPaq1b8jAAq933A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759136394; c=relaxed/simple;
	bh=DDE/TVnwhodT3GrOgd5hvuaJVf/IdkHDTk4URR2tVfc=;
	h=To:Subject:From:Message-Id:Date; b=XQsqx5TGgQnGlwmwiQVFYBQt7cshACuk8t8nL/UoWhfqFsGfT3L8gc4tkqDuL37/SDg2BHvQ0U7FoE8vuJKlcnSE+KgsI1nfwIHtz7o4izSHT2x9s+hdD8BaKig9dC+35WUP9LpZlBsxgn8O8XGXoeP5UaitJrSzOfgFBB2S6kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtA/zH+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtA/zH+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B2C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759136393;
	bh=DDE/TVnwhodT3GrOgd5hvuaJVf/IdkHDTk4URR2tVfc=;
	h=To:Subject:From:Date:From;
	b=EtA/zH+YsDPypKJbo023SCwyUdWnyL/R7rY0qkvORoOcVgsD0oGA9cdQTy1/MgSNo
	 B0oTnsb9VYNbxYXtfAiIUflv5fL4cZJXqWEGJ4Oc0oyD89WAh2HyXT3EF8frB7RDRW
	 eMNC/3f82wTZDAlNBVyMHWlVThZm5i+x7PlVyPLeTq5rEu8WxFT8ik8/RLuvFqqMDA
	 /EtyJcOAsdcz6z6v4pXE/XiQtVC3FRHK4bJuM1tbTHz9La1wxVpZOHXHt68kKT9pHr
	 lqBVYUHYSr/8x7G9pajpu8OdfB49agZ2DZqcDgP2R9kYBqtViN6s01Y2J/StW77caG
	 jMN/UdJv+Ce2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95558CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913639360.9773.3818574848630419320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31e96ce7df404454d41dcd7e3f087db41dbeb9fc14e1e87ef6f55fe7bcff481
Date: Mon, 29 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759136393
