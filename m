Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95E23191C6
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762792794; cv=none; b=EIwIPzYomfDW1KIvtz9cf1KsWrhk6OpiPXYPe6+D3dzY1r3kWq/F+xhLAWA/FxEuEf1RTQ3Fv6l/bSl02DZnknLYz176hyOvBGDJ1C7IcflPxSPP8NS2mugCXaXkhq3LmLKjufxCWZADyrrVJdoOEsrJUGl9wGlpiyr7ErAX+L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762792794; c=relaxed/simple;
	bh=30hNtQYcubKCcqFL39vhaiO5h49/7Dgcw1+0kv4uAKo=;
	h=To:Subject:From:Message-Id:Date; b=tPvG88KfH5yFzMSy2IfxzB9s98h4mCTyczki2Vx+kJwxCG8JN9XLSjY4Xc5Ds1sdUHnIyzxgFuUzQpfOTNRr6xUIBFQZdeTyh70uA9OnzpDS8IuraSIJ3ikihBE19tnOVdLy82oZcUA0buTlumPo9xsy/Mt4oL61rWvgYuC1rJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9KWW69B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9KWW69B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DC1C4FE86
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762792793;
	bh=30hNtQYcubKCcqFL39vhaiO5h49/7Dgcw1+0kv4uAKo=;
	h=To:Subject:From:Date:From;
	b=l9KWW69B+lvibcHpEYFXu38kxqO2FQcpsvcfU5zd5qtGleWP06Xx1A6CS6VMXE7C7
	 9FZe4C3wRfs1Mn1H7yslKMJ9Ty9TxHepunDrM2xqUFqCsMC2euOgfxf9jlVtDT/bOH
	 L411chzOnm3lVy1WZ6j2IXrXqaLJEVehamCz0DEFqWOr/6QsmSOS4dMwvDfZwVCEa3
	 ExVFaJcvw58QCdkrlMV7HDSNZjWZ+hltf47/JL79vAPOnYJAm0+Xyl/nq31/Anwloh
	 YC5QX3KlGJR5hY3waTNXwILFkbPI7XC3VtbDwMyQlThAXom3uyOgaB7NPmfmND60cN
	 rMpxtc71Yoo1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00D2CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279279364.4947.6431872707319600067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff60943cdff2fb2d831129f03f1185b01f9906c53a37023ba93cfb2cf89f8da2
Date: Mon, 10 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762792793
