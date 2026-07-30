Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576B7446833
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785433834; cv=none; b=USlOKGAG0CsIXHv2cDamKzJmB/5GETE90vhJ7zwLftfhhmuwW4opp1o9xbYuazYYAlAI5LMrHE8Wo5ZD/IzlOjlbjaWHCYYMG0e0KCL2V6RbA+gS0xH0SWWZAnkJjBVFa79UzYkLP+vZS3dYHWTvfKWnjHZ65XQcHQi5xFlBOmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785433834; c=relaxed/simple;
	bh=I7j9A2mdIEXO3ucVPors+HT4kqf6gJFmJeACFFOLwDM=;
	h=To:Subject:From:Message-Id:Date; b=fCGEFZn8XIYa+EXI306uURXU1/d7/zoCGRs37WOlDHgwzUsgNXk3LwmEz5+31Ft0ye1VvH1fo23FTRpX0lLSDaS/trFMFMHmqol2mnjgB13kP3LTWcoCF2Zcvn0yt62xo36PBD+PewlK/ZN+Mm+9GkWLiSMcWYnU8ciuob25M6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9CxUt2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9CxUt2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12AFC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785433833;
	bh=I7j9A2mdIEXO3ucVPors+HT4kqf6gJFmJeACFFOLwDM=;
	h=To:Subject:From:Date:From;
	b=R9CxUt2l+auliIZmGXGQKCKKEhX4s51WIPCEdC5Ra6e6fbo4iiZsk3F3+Wc9HmwDg
	 AxenGWn1KGP5uSrE+myWQbezH2I7Gr+1F7GNgAnG+E4gmAFq24AkhjBhY/WEgs5ufV
	 dE6RQ95+Ztd8+p89uxEaq8+2iNZM1mH4KyTya2ULh22ybKcBJD3ChOAyjaxdFsmr36
	 RKLOPExrkZ8UcUEO4Xb3z5y4Sh+1L2yiOe8PqMbu66ZY+a0hZm0BxoIe4AKO8n36tW
	 1SenuP0NE8Pg5Q56j08ttp3fDX5rCAObyy1JmUMiUMgR6ixxKV6i9otNgN8zdAqVw2
	 FZE6g7lgLwDHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3C9C5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543383370.12117.15430610868448359703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98caeab8c0b3650c096a6256bb8b3a8a82221f793b32cf2194f7d95ef94b30da
Date: Thu, 30 Jul 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785433833
