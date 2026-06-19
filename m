Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452222BE02A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781894194; cv=none; b=a16Dqx34Dk5IfBVCT05d5VnPQGHxMZlV77pNxWgH3UxzxQ9p7NYCtHeAsc7WmCCZXm3+JG+jrA9x1huI0uOUwYLsdKy6qMWseSXbD2ZLYkUqDtcXe5y8LFGoJEYZzwvanbMEsGIiddcisUEIfnR6rhkh3Gsrky8GFosLBcWWBw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781894194; c=relaxed/simple;
	bh=seXtAEYm7K/pm6mDlnGvltloR47E/kltrVYv4IwYkj4=;
	h=To:Subject:From:Message-Id:Date; b=Oi5pnt19Ff3A9ju3oXhOnkYQN5wGeSUhZnVIUnF/FB1E9AXB/96mVaGI0OaOav9p+JlarrhoMTrs45EUcBV1oIOWi1zOqSyCZUHl2pV1KLy+6yt2HqrAssj/tXBMJgOgQZg+5VnPq/Q8GqcZYl1OgzTQyIB4yk9K0F56cTuzBfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVKOb7vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVKOb7vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C275CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781894193;
	bh=seXtAEYm7K/pm6mDlnGvltloR47E/kltrVYv4IwYkj4=;
	h=To:Subject:From:Date:From;
	b=NVKOb7vxD2bkuZP56IXXBSyBBEeRio7Muu2EBeMDIxhg+MwhHEfjer8H4B03jNfaB
	 DKkcTuWTyvWbFsmwnDUChxrL5OTW8b1eQax8v6OrPWWDqxsYZxqLqkdKO/JhcV8Mbf
	 bNb+PxAtTKdwe5EAT1VcnohiH/c1gL1SPRm6FczMh6oQpbZQxUPD8yR9GOizn2wlIz
	 MB5djNjkEmeJwtXTn68a0HL7aUQECYVpGqUdH7/WgD2X83APoLxrYcrVzCc/HY4OWF
	 wEDdPA27io3MGpdeFPnqPFQanFdzJWpy2IZjL+o6y3PEiFPP8uLlOYzZoXjqFbNEhp
	 u3+1yBsRKOZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BE7CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189419368.10541.17593039570757499601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed3b7a4767a97ba81aeff5e719f30254e22a357839f3ec7c0f3662a2bd35ea9
Date: Fri, 19 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781894193
